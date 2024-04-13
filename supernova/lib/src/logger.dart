import 'dart:async';
import 'dart:convert';

import 'package:ansi_styles/ansi_styles.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:stack_trace/stack_trace.dart';

import 'date_time/module.dart';
import 'debug_mode.dart';
import 'typedefs.dart';

late final Stopwatch _stopwatch;

late final LogLevel _minLogLevel;
final logger = Logger();

// ignore: avoid-global-state
List<LogListener> logListeners = <LogListener>[printLogPretty];

void initLogger({LogLevel? minLogLevel}) {
  _stopwatch = Stopwatch()..start();
  _minLogLevel =
      minLogLevel ?? (isInDebugMode ? LogLevel.min : LogLevel.config);

  if (isInDebugMode) {
    // VS Code's debug console isn't recognized as supporting colors.
    ansiStylesDisabled = false;
  }
}

const minProductionLogLevel = LogLevel.config;

@immutable
class Logger {
  void trace(String message, [Object? data, StackTrace? stackTrace]) =>
      log(LogLevel.trace, message, data, stackTrace);
  void debug(String message, [Object? data, StackTrace? stackTrace]) =>
      log(LogLevel.debug, message, data, stackTrace);
  void config(String message, [Object? data, StackTrace? stackTrace]) =>
      log(LogLevel.config, message, data, stackTrace);
  void info(String message, [Object? data, StackTrace? stackTrace]) =>
      log(LogLevel.info, message, data, stackTrace);
  void warning(String message, [Object? data, StackTrace? stackTrace]) =>
      log(LogLevel.warning, message, data, stackTrace);
  void error(String message, [Object? data, StackTrace? stackTrace]) =>
      log(LogLevel.error, message, data, stackTrace);
  void wtf(String message, [Object? data, StackTrace? stackTrace]) =>
      log(LogLevel.wtf, message, data, stackTrace);

  void log(
    LogLevel level,
    String message, [
    Object? data,
    StackTrace? stackTrace,
  ]) =>
      logRecord(LogRecord(level, message, data, stackTrace));

  void logRecord(LogRecord record) {
    if (record.level < _minLogLevel) return;
    for (final listener in logListeners) {
      listener(record);
    }
  }

  T traceSync<T>(String message, {Object? data, required ValueGetter<T> body}) {
    final start = _stopwatch.elapsed;
    _traceStart(message, data);
    try {
      return body();
    } finally {
      _traceEnd(message, start);
    }
  }

  Future<T> traceAsync<T>(
    String message, {
    Object? data,
    required AsyncValueGetter<T> body,
  }) async {
    final start = _stopwatch.elapsed;
    _traceStart(message, data);
    try {
      return await body();
    } finally {
      _traceEnd(message, start);
    }
  }

  final _traceListeners = <TraceListener>[];
  void addTraceListener(TraceListener listener) =>
      _traceListeners.add(listener);

  void _traceStart(String message, Object? data) {
    if (data is Map && data.isEmpty) data = null;

    trace('$message: Start', data);
  }

  void _traceEnd(String message, Duration start) {
    trace('$message: End');

    final end = _stopwatch.elapsed;
    for (final listener in _traceListeners) {
      listener(message, start, end);
    }
  }
}

typedef LogListener = void Function(LogRecord);
typedef TraceListener = void Function(
  String message,
  Duration start,
  Duration end,
);

/// See `/docs/logging.md` for descriptions of these levels.
enum LogLevel {
  trace('💤'),
  debug('👌'),
  config('📐'),
  info('💡'),
  warning('⚠️'),
  error('⛔'),
  wtf('👾');

  const LogLevel(this.emoji);

  final String emoji;

  static LogLevel get min => LogLevel.values.first;
  static LogLevel get max => LogLevel.values.last;

  bool operator <(LogLevel other) => index < other.index;
  bool operator <=(LogLevel other) => index <= other.index;
  bool operator >(LogLevel other) => index > other.index;
  bool operator >=(LogLevel other) => index >= other.index;
  int compareTo(LogLevel other) => index - other.index;
}

class LogRecord {
  LogRecord(
    LogLevel level,
    this.message, [
    this.data,
    StackTrace? stackTrace,
  ])  : level = data is AssertionError ? LogLevel.wtf : level,
        instant = Instant.now(),
        stackTrace = _traceFromStackTrace(level, stackTrace),
        zone = Zone.current;

  static Trace? _traceFromStackTrace(LogLevel level, StackTrace? stackTrace) {
    var actualStackTrace = stackTrace != null ? Trace.from(stackTrace) : null;
    if (actualStackTrace == null && level >= LogLevel.error) {
      actualStackTrace = Trace.current(11);
    }

    const membersToFold = {
      // From the backend
      'RequestContext._trace.<fn>.<fn>',
      'TraceId.traceSpan',
      'Logger.traceAsync',
      'RequestContext.trace',
      'RequestContext.capture',
    };
    actualStackTrace = actualStackTrace
        ?.foldFrames((it) => membersToFold.contains(it.member))
        .terse;

    if (actualStackTrace == null || actualStackTrace.frames.isEmpty) {
      return null;
    }
    return actualStackTrace;
  }

  final LogLevel level;
  final String message;
  final Instant instant;
  // ignore: no-object-declaration
  final Object? data;
  final Trace? stackTrace;
  final Zone zone;
}

// Pretty printing

// https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
final _levelColors = {
  LogLevel.trace: AnsiStyles.rgb(0xD0, 0xD0, 0xD0),
  LogLevel.debug: AnsiStyles.rgb(0x94, 0x94, 0x94),
  LogLevel.config: AnsiStyles.rgb(0x00, 0xAF, 0xD7),
  LogLevel.info: AnsiStyles.blue,
  LogLevel.warning: AnsiStyles.rgb(0xFF, 0x87, 0x00),
  LogLevel.error: AnsiStyles.red,
  LogLevel.wtf: AnsiStyles.magenta,
};

/// The [blank braille pattern](https://en.wikipedia.org/wiki/Braille_pattern_dots-0)
/// followed by two normal spaces, to prevent Dart Code's trimming from removing
/// this prefix.
///
/// See [_traceToPrettyString] for a bit more information.
const _verticalSpace = '⠀  ';
const _verticalLine = ' │ ';
const _middleCorner = ' ├─';
const _bottomCorner = ' └─';

void printLogPretty(LogRecord record, [void Function(String) print = print]) {
  const indent = '  ';
  final output = StringBuffer();
  final data = record.data != null
      ? stringifyObjectForLogging(record.data, indent)
      : null;

  final rawColor = _levelColors[record.level];
  String color(String content) =>
      rawColor != null ? rawColor(content) : content;

  void formatPrettySection({
    required String title,
    String? firstLinePrefix,
    required String content,
    required bool isLastSection,
    bool canInlineContent = true,
  }) {
    firstLinePrefix ??= isLastSection ? _bottomCorner : _middleCorner;

    final contentLines = content.split('\n').toList();
    if (canInlineContent && content.isNotEmpty && contentLines.length == 1) {
      output.writeln(color('$firstLinePrefix \t$title $content'));
      return;
    }

    output.writeln(color('$firstLinePrefix \t$title'));

    if (content.isNotEmpty) {
      final prefix = color(isLastSection ? _verticalSpace : _verticalLine);
      for (final line in contentLines) {
        output.writeln('$prefix \t$line');
      }
    }
  }

  // We only care about the time, not the date.
  final time = Instant.now().toString().substring(11);

  // Header
  final messageFirstLinebreakIndex = record.message.indexOf('\n');
  final title = messageFirstLinebreakIndex >= 0
      ? record.message.substring(0, messageFirstLinebreakIndex)
      : record.message;
  final firstContent = messageFirstLinebreakIndex >= 0
      ? record.message
          .substring(messageFirstLinebreakIndex + 1)
          .splitMapJoin('\n', onNonMatch: color)
      : '';

  formatPrettySection(
    title: '$time: $title',
    content: firstContent,
    firstLinePrefix: record.level.emoji,
    isLastSection: data == null && record.stackTrace == null,
    canInlineContent: false,
  );

  // Data
  if (data != null) {
    formatPrettySection(
      title: 'Data:',
      content: data.splitMapJoin('\n', onNonMatch: color),
      isLastSection: record.stackTrace == null,
    );
  }
  // StackTrace
  if (record.stackTrace != null) {
    formatPrettySection(
      title: 'Stack trace:',
      content: _traceToPrettyString(record.stackTrace!, color),
      firstLinePrefix: _bottomCorner,
      isLastSection: true,
    );
  }

  // ignore: avoid_print
  print(output.toString().trimRight());
}

/// Formats a [Trace] so that it can be properly aligned while also having a
/// clickable link to the source.
///
/// Using the default [Trace.toString], Dart Code would trim our alignment
/// prefix: https://github.com/Dart-Code/Dart-Code/blob/7076e9ffa96886574621b9922ef508093614bb82/src/shared/utils/stack_trace.ts#L9-L43
///
/// Customized version of `Trace.toString`: https://github.com/dart-lang/stack_trace/blob/4755bcf8ab0258212f4767218fdeb8429f3e550e/lib/src/trace.dart#L330-L341
String _traceToPrettyString(Trace trace, String Function(String) color) {
  final frames = trace.frames.map((it) {
    if (it is UnparsedFrame) return (it.toString(), '');
    return (it.member ?? '', it.location);
  }).toList();

  // Figure out the longest message so we know how much to pad.
  final longest = frames.map((it) => it.$2.length).maxOrNull ?? 0;

  // Print out the stack trace nicely formatted.
  return frames
      .map((it) => '${color(it.$1.padRight(longest))}  ${it.$2}')
      .join('\n');
}

// Utils

String stringifyObjectForLogging(dynamic message, [String? indent]) {
  dynamic toEncodable(dynamic object) {
    try {
      // ignore: avoid_dynamic_calls
      return object.toJson();
      // ignore: avoid_catches_without_on_clauses
    } catch (_) {}

    try {
      return '$object';
      // ignore: avoid_catches_without_on_clauses
    } catch (_) {}

    return object.runtimeType;
  }

  return JsonEncoder.withIndent(indent, toEncodable).convert(message);
}

import 'package:debug_overlay/debug_overlay.dart';
import 'package:flutter/foundation.dart';
import 'package:platformx/platformx.dart';
import 'package:supernova/supernova.dart';

import 'services.dart';

final logs = LogCollection();

void initLogging() {
  logListeners = [
    // Don't log to Android's system log in production because that can be read
    // by other apps.
    if (isInDebugMode || !PlatformX.isAndroid)
      (record) => printLogPretty(record, debugPrint),
  ];

  DebugOverlay.appendHelper(LogsDebugHelper(logs));

  logListeners.add((it) {
    logs.add(Log(
      level: _loggerToDiagnosticLevel(it.level),
      timestamp: it.instant.dateTime.toLocal(),
      message: it.message,
      error: it.data,
      stackTrace: it.stackTrace,
    ));
  });
  if (isInDebugMode) return;

  logListeners.add((it) async {
    if (!isFirebaseCrashlyticsInitialized) return;

    if (it.level < LogLevel.error) {
      final message = [
        '${it.level.emoji} ${it.instant}: ${it.message}',
        if (it.data != null) 'Data: ${stringifyObjectForLogging(it.data)}',
        if (it.stackTrace != null) 'Stack Trace: ${it.stackTrace}',
      ].join('\n');
      await services.firebaseCrashlytics.log(message);
    } else {
      await services.firebaseCrashlytics.recordError(
        stringifyObjectForLogging(it.data),
        it.stackTrace,
        reason: it.message,
        information: [StringProperty('instant', it.instant.toJson())],
        printDetails: false,
        fatal: it.level >= LogLevel.wtf,
      );
    }
  });
}

DiagnosticLevel _loggerToDiagnosticLevel(LogLevel level) {
  switch (level) {
    case LogLevel.wtf:
      return DiagnosticLevel.error;
    case LogLevel.error:
      return DiagnosticLevel.error;
    case LogLevel.warning:
      return DiagnosticLevel.warning;
    case LogLevel.info:
      return DiagnosticLevel.info;
    case LogLevel.config:
      return DiagnosticLevel.info;
    case LogLevel.debug:
      return DiagnosticLevel.debug;
    case LogLevel.trace:
      return DiagnosticLevel.hint;
  }
}

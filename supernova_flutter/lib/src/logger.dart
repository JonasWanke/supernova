import 'package:debug_overlay/debug_overlay.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:platformx/platformx.dart';
import 'package:supernova/supernova.dart';

import 'services.dart';

final logs = LogCollection(onlyStoreLogsInDebugMode: false);

void initLogging() {
  logListeners = [
    // Don't log to Android's system log in production because that can be read
    // by other apps.
    if (isInDebugMode || !PlatformX.isAndroid)
      (record) => printLogPretty(record, debugPrint),
  ];

  DebugOverlay.appendHelper(LogsDebugHelper(logs));

  logListeners.add((it) {
    final log = Log(
      level: _loggerToDiagnosticLevel(it.level),
      timestamp: it.instant.asCoreDateTimeInLocalZone,
      message: it.message,
      error: it.data,
      stackTrace: it.stackTrace,
    );

    // We can't add logs during the build phase in case the debug overlay is
    // currently open.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => logs.add(log));
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
        information: [StringProperty('instant', it.instant.toString())],
        printDetails: false,
        fatal: it.level >= LogLevel.wtf,
      );
    }
  });
}

DiagnosticLevel _loggerToDiagnosticLevel(LogLevel level) {
  return switch (level) {
    LogLevel.wtf => DiagnosticLevel.error,
    LogLevel.error => DiagnosticLevel.error,
    LogLevel.warning => DiagnosticLevel.warning,
    LogLevel.info => DiagnosticLevel.info,
    LogLevel.config => DiagnosticLevel.info,
    LogLevel.debug => DiagnosticLevel.debug,
    LogLevel.trace => DiagnosticLevel.hint,
  };
}

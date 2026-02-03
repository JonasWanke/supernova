import 'package:debug_overlay/debug_overlay.dart';
import 'package:flutter/widgets.dart';
import 'package:platformx/platformx.dart';
import 'package:supernova/supernova.dart';

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

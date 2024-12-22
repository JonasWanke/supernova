import 'dart:async';

import 'typedefs.dart';

bool get isInDebugMode {
  var result = false;
  assert(() {
    result = true;
    return true;
  }());
  return result;
}

void runOnlyInDebugMode(VoidCallback action) {
  assert(() {
    action();
    return true;
  }());
}

/// `await`-able variant of [runOnlyInDebugMode].
Future<void> runOnlyInDebugModeAsync(AsyncVoidCallback action) async {
  if (isInDebugMode) return action();
}

import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:supernova/supernova.dart' hide ValueChanged;

LoggingNavigatorObserver createLoggingNavigatorObserver(
  String? navigatorName,
) {
  var prefix = 'Navigator';
  if (navigatorName != null) prefix += '($navigatorName)';

  return LoggingNavigatorObserver(logger: (it) => logger.debug('$prefix: $it'));
}

extension NavigatorSupernova on NavigatorState {
  Future<T?> pushPage<T extends Object?>(WidgetBuilder builder) =>
      push(MaterialPageRoute(builder: builder));
  Future<T?> pushReplacementPage<T extends Object?, TO extends Object?>(
    WidgetBuilder builder, {
    TO? result,
  }) =>
      pushReplacement(MaterialPageRoute(builder: builder), result: result);
}

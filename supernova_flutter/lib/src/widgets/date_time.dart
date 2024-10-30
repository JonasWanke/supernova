import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:chrono/chrono.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:supernova/supernova.dart';
import 'package:timeago_flutter/timeago_flutter.dart';

class InstantWidget extends StatelessWidget {
  const InstantWidget(
    this.instant, {
    super.key,
    this.formatter,
    this.isSelectable = false,
    this.textStyle,
  });

  final Instant instant;
  final Formatter<String>? formatter;
  final bool isSelectable;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: DateFormat.yMMMMEEEEd()
          .add_jms()
          .format(instant.asCoreDateTimeInLocalZone),
      child: Timeago(
        date: instant.asCoreDateTimeInLocalZone,
        locale: context.locale.toLanguageTag(),
        allowFromNow: true,
        builder: (context, text) {
          final textWidget = isSelectable ? SelectableText.new : Text.new;
          return textWidget(formatter?.call(text) ?? text, style: textStyle);
        },
      ),
    );
  }
}

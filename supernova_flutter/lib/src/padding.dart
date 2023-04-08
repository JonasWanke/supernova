import 'package:flutter/material.dart';

extension EdgeInsetsSupernova on EdgeInsets {
  EdgeInsets get onlyTop => EdgeInsets.only(top: top);
  EdgeInsets get onlyHorizontal => EdgeInsets.only(left: left, right: right);
  EdgeInsets get onlyVertical => EdgeInsets.only(top: top, bottom: bottom);
}

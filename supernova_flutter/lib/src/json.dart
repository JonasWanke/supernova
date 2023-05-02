import 'package:flutter/rendering.dart';
import 'package:supernova/supernova.dart';

class EdgeInsetsJsonConverter
    implements JsonConverter<EdgeInsets, Map<String, dynamic>> {
  const EdgeInsetsJsonConverter();

  @override
  EdgeInsets fromJson(Map<String, dynamic> json) {
    return EdgeInsets.fromLTRB(
      json['left'] as double,
      json['top'] as double,
      json['right'] as double,
      json['bottom'] as double,
    );
  }

  @override
  Map<String, dynamic> toJson(EdgeInsets object) {
    return {
      'left': object.left,
      'top': object.top,
      'right': object.right,
      'bottom': object.bottom,
    };
  }
}

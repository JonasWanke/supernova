import 'dart:ui';

import 'package:supernova/supernova.dart';

extension ColorSupernova on Color {
  RgbColor get asRgbColor => RgbColor(r * 255, g * 255, b * 255);

  static Color fromJson(String json) =>
      const ColorJsonConverter().fromJson(json);
  String toJson() => const ColorJsonConverter().toJson(this);
}

extension RgbColorSupernova on RgbColor {
  Color get asColor => Color.fromARGB(255, r.toInt(), g.toInt(), b.toInt());
}

class ColorJsonConverter extends JsonConverter<Color, String> {
  const ColorJsonConverter();

  @override
  Color fromJson(String json) {
    assert(json.length == 7);
    assert(json[0] == '#');
    final red = int.parse(json.substring(1, 3), radix: 16);
    final green = int.parse(json.substring(3, 5), radix: 16);
    final blue = int.parse(json.substring(5, 7), radix: 16);
    return Color.fromARGB(255, red, green, blue);
  }

  @override
  String toJson(Color object) {
    String convertChannel(double channel) =>
        ((channel * 255).round() & 0xFF).toRadixString(16).padLeft(2, '0');

    return '#${convertChannel(object.r)}'
        '${convertChannel(object.g)}'
        '${convertChannel(object.b)}';
  }
}

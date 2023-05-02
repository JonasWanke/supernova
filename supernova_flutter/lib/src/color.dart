import 'dart:ui';

import 'package:supernova/supernova.dart';

extension ColorSupernova on Color {
  RgbColor get asRgbColor => RgbColor(red, green, blue);

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
    final r = int.parse(json.substring(1, 3), radix: 16);
    final g = int.parse(json.substring(3, 5), radix: 16);
    final b = int.parse(json.substring(5, 6), radix: 16);
    return Color.fromARGB(255, r, g, b);
  }

  @override
  String toJson(Color object) {
    String convertChannel(int channel) =>
        channel.toRadixString(16).padLeft(2, '0');

    return '#${convertChannel(object.red)}'
        '${convertChannel(object.green)}'
        '${convertChannel(object.blue)}';
  }
}

import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

@immutable
class Bytes {
  const Bytes(this.data);

  factory Bytes.fromList(List<int> data) => Bytes(Uint8List.fromList(data));
  factory Bytes.fromJson(String json) => Bytes(base64Decode(json));

  final Uint8List data;

  int get length => data.length;

  String toJson() => base64Encode(data);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Bytes && data.equals(other.data);
  @override
  int get hashCode => Object.hashAll(data);

  @override
  String toString() {
    return data
        .map((it) => it.toRadixString(16).toUpperCase().padLeft(2, '0'))
        .join();
  }
}

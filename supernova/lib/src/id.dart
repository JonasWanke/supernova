import 'package:bson/bson.dart';
import 'package:meta/meta.dart';

// ignore_for_file: sort_constructors_first

@immutable
@sealed
class Id<T> {
  Id([String? value])
      : value = value == null ? ObjectId() : ObjectId.fromHexString(value);
  const Id._(this.value);

  static Id<T>? fromStringOrNull<T>(String? value) =>
      value == null ? null : Id(value);

  factory Id.fromBson(ObjectId bson) => Id._(bson);
  static Id<T>? fromBsonOrNull<T>(ObjectId? bson) =>
      bson == null ? null : Id.fromBson(bson);

  factory Id.fromJson(String json) => Id._(ObjectId.fromHexString(json));

  final ObjectId value;

  Id<R> cast<R>() => Id._(value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Id<T> && other.value == value);
  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => toJson();
  String toJson() => value.id.hexString;
  ObjectId toBson() => value;
}

extension SetOfIdSupernova<T> on Set<Id<T>> {
  Set<Id<R>> castIds<R>() => map((id) => id.cast<R>()).toSet();
}

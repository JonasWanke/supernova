import 'package:bson/bson.dart';

import 'id.dart';
import 'string.dart';

// # BSON

// Conversion to/from BSON is mostly the same as to/from JSON, but some types
// are handled differently:
//
// * Id
// * Instant

typedef FromBson<T extends Object> = T Function(Map<String, dynamic> bson);
typedef FromBsonString<T extends Object> = T Function(String bson);

abstract class ToBson {
  dynamic toBson();
}

abstract class ToBsonString implements ToBson {
  @override
  String toBson();
}

// List
extension ToBsonListToBsonSupernova<T extends ToBson> on List<T> {
  List<dynamic> toBson() => map((it) => it.toBson()).toList();
}

List<T> bsonToList<T extends Object>(dynamic bson, FromBson<T> itemFromBson) {
  if (bson == null) {
    // For backwards compatibility when adding a new field.
    return [];
  }

  return (bson as List<dynamic>)
      .cast<Map<String, dynamic>>()
      .map(itemFromBson)
      .toList();
}

// Set
extension IdSetToBsonSupernova<T extends Object> on Set<Id<T>> {
  List<dynamic> toBson() => map((it) => it.toBson()).toList();
}

Set<Id<T>> bsonToIdSet<T extends Object>(dynamic bson) {
  if (bson == null) {
    // For backwards compatibility when adding a new field.
    return {};
  }

  return (bson as List<dynamic>).cast<ObjectId>().map(Id<T>.fromBson).toSet();
}

// Map
extension MapFromIdToBsonToBsonSupernova<K extends ToBsonString,
    V extends ToBson> on Map<K, V> {
  Map<String, dynamic> toBson() {
    return map<String, dynamic>(
      (key, value) => MapEntry<String, dynamic>(key.toBson(), value.toBson()),
    );
  }
}

Map<Id<K>, V> bsonToIdMap<K, V extends Object>(
  dynamic bson,
  FromBson<V> valueFromBson,
) =>
    bsonToMap(bson, Id.fromJson, valueFromBson);

Map<K, V> bsonToMap<K extends Object, V extends Object>(
  dynamic bson,
  FromBsonString<K> keyFromBson,
  FromBson<V> valueFromBson,
) {
  if (bson == null) {
    // For backwards compatibility when adding a new field.
    return {};
  }

  return (bson as Map<String, dynamic>)
      .cast<String, Map<String, dynamic>>()
      .map((key, value) => MapEntry(keyFromBson(key), valueFromBson(value)));
}

// # JSON

typedef FromJson<T extends Object> = T Function(Map<String, dynamic> json);

abstract class ToJson {
  dynamic toJson();
}

// List
extension ToJsonListToJsonSupernova<T extends ToJson> on List<T> {
  List<dynamic> toJson() => map((it) => it.toJson()).toList();
}

dynamic debugShortenJson(dynamic json) {
  const maxLength = 100;

  if (json is String) {
    return json.limitWithEllipsis(maxLength);
  } else if (json is List<dynamic>) {
    return json.map<dynamic>(debugShortenJson).toList();
  } else if (json is Map<String, dynamic>) {
    return json.map<String, dynamic>(
      (key, dynamic value) =>
          MapEntry<String, dynamic>(key, debugShortenJson(value)),
    );
  }
  return json;
}

// Enum
mixin EnumJson on Enum {
  static T fromJson<T extends Enum>(List<T> values, String json) =>
      values.byName(json);
  static T? fromJsonOrNull<T extends Enum>(List<T> values, String? json) =>
      json == null ? null : values.byName(json);

  static Set<T> setFromJson<T extends Enum>(
    List<T> values,
    List<dynamic> json,
  ) =>
      json.cast<String>().map((it) => fromJson(values, it)).toSet();

  String toJson() => name;
}

extension EnumSetToJsonSupernova<T extends EnumJson> on Set<T> {
  List<String> toJson() => map((it) => it.toJson()).toList();
}

// # Shared

typedef FromNullableBsonOrJson<T extends Object> = T? Function(
  Map<String, dynamic>? it,
);

// This extension is also usable for [FromBson] because their type is the same.
extension FromBsonOrJsonNullableSupernova<T extends Object> on FromJson<T> {
  FromNullableBsonOrJson<T> get orNull => (it) => it == null ? null : this(it);
}

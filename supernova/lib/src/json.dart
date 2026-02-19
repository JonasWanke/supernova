import 'id.dart';
import 'string.dart';

typedef FromJson<T> = T Function(dynamic json);
typedef FromJsonMap<T extends Object> = T Function(Map<String, dynamic> json);
typedef FromNullableJsonMap<T extends Object> =
    T? Function(Map<String, dynamic>? it);
typedef FromJsonList<T extends Object> = T Function(List<dynamic> json);
typedef FromNullableJsonList<T extends Object> = T? Function(List<dynamic>? it);

abstract interface class ToJson {
  dynamic toJson();
}

abstract interface class ToJsonMap implements ToJson {
  @override
  Map<String, dynamic> toJson();
}

// Iterable
extension ToJsonIterableToJsonSupernova<T extends ToJson> on Iterable<T> {
  List<dynamic> toJson() => map((it) => it.toJson()).toList();
}

// Map
extension IdMapToJsonSupernova<T extends ToJson> on IdMap<T> {
  Map<String, dynamic> toJson() =>
      map((key, value) => MapEntry(key.value, value.toJson()));
}

Map<Id<K>, T> idMapFromJson<K, T extends Object>(
  Map<String, dynamic> json,
  FromJson<T> fromJson,
) => json.map((key, value) => MapEntry(Id(key), fromJson(value)));

// Enum
mixin EnumJson on Enum {
  static T fromJson<T extends Enum>(List<T> values, String json) =>
      values.byName(json);
  static T? fromJsonOrNull<T extends Enum>(List<T> values, String? json) =>
      json == null ? null : values.byName(json);

  static Set<T> setFromJson<T extends Enum>(
    List<T> values,
    List<dynamic> json,
  ) => json.cast<String>().map((it) => fromJson(values, it)).toSet();

  String toJson() => name;
}

extension EnumSetToJsonSupernova<T extends EnumJson> on Set<T> {
  List<String> toJson() => map((it) => it.toJson()).toList();
}

extension FromJsonMapNullableSupernova<T extends Object> on FromJsonMap<T> {
  FromNullableJsonMap<T> get orNull =>
      (it) => it == null ? null : this(it);
}

extension FromJsonListNullableSupernova<T extends Object> on FromJsonList<T> {
  FromNullableJsonList<T> get orNull =>
      (it) => it == null ? null : this(it);
}

// Utils
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

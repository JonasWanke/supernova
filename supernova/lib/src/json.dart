import 'string.dart';

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

typedef FromNullableJson<T extends Object> = T? Function(
  Map<String, dynamic>? it,
);

extension FromJsonNullableSupernova<T extends Object> on FromJson<T> {
  FromNullableJson<T> get orNull => (it) => it == null ? null : this(it);
}

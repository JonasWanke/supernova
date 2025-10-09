import 'package:meta/meta.dart';

import 'json.dart';

@immutable
@sealed
class Id<T> implements Comparable<Id<T>>, ToJson {
  const Id(this.value);

  static Id<T>? fromStringOrNull<T>(String? value) =>
      value == null ? null : Id(value);

  // ignore: sort_constructors_first
  factory Id.fromJson(String json) => Id(json);

  final String value;

  Id<R> cast<R>() => Id(value);

  @override
  int compareTo(Id<T> other) => value.compareTo(other.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Id<T> && other.value == value);
  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => toJson();
  @override
  String toJson() => value;
}

typedef IdMap<T> = Map<Id<T>, T>;

extension SetOfIdSupernova<T> on Set<Id<T>> {
  Set<Id<R>> castIds<R>() => map((id) => id.cast<R>()).toSet();
}

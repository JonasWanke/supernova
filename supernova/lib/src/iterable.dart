import 'dart:math';

import 'package:collection/collection.dart'
    show IterableExtension, ListExtensions;
import 'package:dartx/dartx.dart' hide IterableFirstOrNull, IterableMapIndexed;
import 'package:meta/meta.dart';

import 'typedefs.dart';

/// Modified from https://github.com/felixblaschke/supercharged/blob/bc3df51eee84aa933c642ccf92bf7cec4990341c/supercharged_dart/lib/iterable/iterable_mapentry.dart#L4-L14
extension IterableOfMapEntrySupernova<K, V> on Iterable<MapEntry<K, V>> {
  Map<K, V> toMap() => Map.fromEntries(this);
}

int compareBy<T>(T a, T b, Mapper<T, Comparable<dynamic>> getKey) =>
    getKey(a).compareTo(getKey(b));
int compareByMultiple<T>(
  T a,
  T b,
  Mapper<T, List<Comparable<dynamic>>> getKeys, {
  bool isDescending = false,
}) => compareMultiple(getKeys(a), getKeys(b), isDescending: isDescending);
int compareMultiple(
  List<Comparable<dynamic>> a,
  List<Comparable<dynamic>> b, {
  bool isDescending = false,
}) {
  assert(a.length == b.length);
  assert(a.isNotEmpty);

  final result =
      IterableSupernova(a)
          .zip(b)
          .map((it) => it.$1.compareTo(it.$2))
          .where((it) => it != 0)
          .firstOrNull ??
      0;
  return isDescending ? -result : result;
}

extension IterableSupernova<T> on Iterable<T> {
  (List<T>, List<T>) partitionBy(bool Function(T it) predicate) {
    final result = (<T>[], <T>[]);
    for (final element in this) {
      final list = predicate(element) ? result.$1 : result.$2;
      list.add(element);
    }
    return result;
  }

  Iterable<(T, T)> windowed2() {
    // https://github.com/dart-lang/collection/pull/244
    return windowed(2).map((it) {
      assert(it.length == 2);
      return (it.first, it.second);
    });
  }

  Iterable<(T, T2)> zip<T2>(Iterable<T2> other) =>
      IterableZip(this).zip(other, (a, b) => (a, b));

  int firstIndexWhere(Predicate<T> test) => firstIndexWhereOrNull(test)!;
  int? firstIndexWhereOrNull(Predicate<T> test) {
    int? result;
    firstWhereIndexedOrNull((index, it) {
      if (!test(it)) return false;

      result = index;
      return true;
    });
    return result;
  }

  int singleIndexWhere(Predicate<T> test) => singleIndexWhereOrNull(test)!;
  int? singleIndexWhereOrNull(Predicate<T> test) {
    int? result;
    singleWhereIndexedOrNull((index, it) {
      if (!test(it)) return false;

      result = index;
      return true;
    });
    return result;
  }

  /// Stable sort by multiple keys for each item.
  List<T> sortedByMultiple(
    Mapper<T, List<Comparable<dynamic>>> getKeys, {
    bool isDescending = false,
  }) {
    return sortedByCompare(
      getKeys,
      (a, b) => compareMultiple(a, b, isDescending: isDescending),
    );
  }

  bool isSortedByMultiple(
    Mapper<T, List<Comparable<dynamic>>> getKeys, {
    bool isDescending = false,
  }) {
    return isSortedByCompare(
      getKeys,
      (a, b) => compareMultiple(a, b, isDescending: isDescending),
    );
  }

  Iterable<T> withSeparators(T separator) sync* {
    var isFirst = true;
    for (final item in this) {
      if (!isFirst) yield separator;
      isFirst = false;

      yield item;
    }
  }
}

extension ListSupernova<T> on List<T> {
  bool isValidIndex(int index) =>
      isNotEmpty && firstIndex <= index && index <= lastIndex;

  T? get randomItem => isEmpty ? null : this[Random().nextInt(length)];

  @useResult
  List<T> addImmutable(T item) => [...this, item];
  @useResult
  List<T> addAllImmutable(Iterable<T> items) => [...this, ...items];
  @useResult
  List<T> insertImmutable(int index, T item) =>
      List.of(this)..insert(index, item);
  @useResult
  List<T> insertImmutableSorted(T item) =>
      insertImmutable(ListLowerBoundExtension(this).lowerBound(item), item);
  @useResult
  List<T> insertImmutableSortedBy<K extends Comparable<K>>(
    T item,
    K Function(T) keyOf,
  ) => insertImmutable(lowerBoundBy(item, keyOf), item);

  @useResult
  List<T> removeImmutable(int index) {
    assert(isValidIndex(index));
    return [...sublist(0, index), ...sublist(index + 1)];
  }

  @useResult
  List<T> replaceImmutable(int index, T item) {
    assert(isValidIndex(index));
    return [...sublist(0, index), item, ...sublist(index + 1)];
  }

  /// Suitable for https://api.flutter.dev/flutter/widgets/ReorderCallback.html.
  @useResult
  List<T> reorderImmutable(int oldIndex, int newIndex) {
    assert(isValidIndex(oldIndex));

    if (oldIndex < newIndex) newIndex--;
    assert(isValidIndex(newIndex));

    final newList = List.of(this);
    final item = newList.removeAt(oldIndex);
    newList.insert(newIndex, item);
    return newList;
  }
}

extension SetSupernova<T> on Set<T> {
  @useResult
  Set<T>? get emptyToNull => isEmpty ? null : this;

  @useResult
  Set<T> addImmutable(T item) => Set.of(this)..add(item);
  @useResult
  Set<T> addAllImmutable(Iterable<T> items) => Set.of(this)..addAll(items);

  @useResult
  Set<T> replaceImmutableOrdered(int index, T item) => {
    ...take(index),
    item,
    ...skip(index + 1),
  };

  @useResult
  Set<T> removeImmutable(T item) => Set.of(this)..remove(item);
  @useResult
  Set<T> removeAllImmutable(Iterable<T> items) =>
      Set.of(this)..removeAll(items);

  @useResult
  Set<T> toggleImmutable(T item) =>
      contains(item) ? removeImmutable(item) : addImmutable(item);
}

extension MapSupernova<K, V> on Map<K, V> {
  @useResult
  Map<K, V> setImmutable(K key, V value) => {...this, key: value};
  @useResult
  Map<K, V> removeImmutable(K key) => Map.of(this)..remove(key);
}

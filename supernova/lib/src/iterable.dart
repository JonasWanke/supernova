import 'dart:math';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:dartx/dartx.dart' hide IterableMapIndexed;
import 'package:meta/meta.dart';
import 'package:tuple/tuple.dart';

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
  Mapper<T, List<Comparable<dynamic>>> getKeys,
) =>
    compareMultiple(getKeys(a), getKeys(b));
int compareMultiple(List<Comparable<dynamic>> a, List<Comparable<dynamic>> b) {
  assert(a.length == b.length);
  assert(a.isNotEmpty);

  return IterableSupernova(a)
          .zip(b)
          .map((it) => it.item1.compareTo(it.item2))
          .firstOrNullWhere((it) => it != 0) ??
      0;
}

extension IterableSupernova<T> on Iterable<T> {
  Iterable<IndexedItem<T>> withIndex() => mapIndexed(IndexedItem.new);

  Tuple2<List<T>, List<T>> partitionBy(bool Function(T it) predicate) {
    final result = Tuple2<List<T>, List<T>>([], []);
    for (final element in this) {
      final list = predicate(element) ? result.item1 : result.item2;
      list.add(element);
    }
    return result;
  }

  Iterable<Tuple2<T, T>> windowed2() {
    return windowed(2).map((it) {
      assert(it.length == 2);
      return Tuple2(it.first, it.second);
    });
  }

  Iterable<Tuple2<T, T2>> zip<T2>(Iterable<T2> other) =>
      IterableZip(this).zip(other, Tuple2.new);

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
  List<T> sortedByMultiple(Mapper<T, List<Comparable<dynamic>>> getKeys) =>
      sortedByCompare(getKeys, compareMultiple);
  bool isSortedByMultiple(Mapper<T, List<Comparable<dynamic>>> getKeys) =>
      isSortedByCompare(getKeys, compareMultiple);

  Iterable<T> withSeparators(T separator) sync* {
    var isFirst = true;
    for (final item in this) {
      if (!isFirst) yield separator;
      isFirst = false;

      yield item;
    }
  }
}

@immutable
class IndexedItem<T> {
  const IndexedItem(this.index, this.item) : assert(index >= 0);

  final int index;
  final T item;
}

extension ListSupernova<T> on List<T> {
  bool isValidIndex(int index) =>
      isNotEmpty && firstIndex <= index && index <= lastIndex;

  T? get randomItem => isEmpty ? null : this[Random().nextInt(length)];

  List<T> addImmutable(T item) => [...this, item];

  List<T> insertImmutable(int index, T item) {
    final newList = List.of(this);
    newList.insert(index, item);
    return newList;
  }

  List<T> insertSortedImmutable(T item) =>
      insertImmutable(lowerBound(item), item);

  List<T> removeImmutable(int index) {
    assert(index < length);
    return [...sublist(0, index), ...sublist(index + 1)];
  }

  List<T> replaceImmutable(int index, T item) {
    assert(index < length);
    return [...sublist(0, index), item, ...sublist(index + 1)];
  }
}

extension SetSupernova<T> on Set<T> {
  Set<T>? get emptyToNull => isEmpty ? null : this;

  Set<T> addImmutable(T item) => Set.of(this)..add(item);
  Set<T> replaceImmutableOrdered(int index, T item) =>
      {...take(index), item, ...skip(index + 1)};
  Set<T> removeImmutable(T item) => Set.of(this)..remove(item);
}

extension MapSupernova<K, V> on Map<K, V> {
  Map<K, V> setImmutable(K key, V value) => {...this, key: value};
  Map<K, V> removeImmutable(K key) => Map.from(this)..remove(key);
}

import 'package:flutter/foundation.dart';
import 'package:supernova/supernova.dart' hide AsyncValueGetter;

import 'refresher.dart';

typedef AsyncItemGetter<K extends Object, T extends Object> =
    Future<T?> Function(Id<K>);

/// A cache for individual items of a collection.
///
/// [T] is the type of the items, and [K] is the type inside their [Id]s
/// (usually the same type).
class CachedSparseCollection<K extends Object, T extends Object> {
  CachedSparseCollection({
    required Mapper<T, Id<K>> idFromItem,
    required AsyncItemGetter<K, T> getFromApi,
  }) : _idFromItem = idFromItem,
       _getFromApi = getFromApi;

  final Mapper<T, Id<K>> _idFromItem;
  final AsyncItemGetter<K, T> _getFromApi;

  final _behaviorSubject = BehaviorSubject<Map<Id<K>, T>>();
  Map<Id<K>, T> get _value => _behaviorSubject.valueOrNull ?? {};
  set _value(Map<Id<K>, T> value) => _behaviorSubject.value = value;

  final _refreshers = <Id<K>, Refresher<T?>>{};
  Refresher<T?> _getRefresher(Id<K> id) {
    return _refreshers.putIfAbsent(
      id,
      () => Refresher(() async {
        final item = await _getFromApi(id);
        if (item != null) {
          notifyItemChanged(item);
        } else {
          notifyItemRemoved(id);
        }
        return item;
      }, parent: _getParentRefresherFor(id)),
    );
  }

  // ignore: avoid-unused-parameters, It's used by [CachedCollection].
  BaseRefresher<T?>? _getParentRefresherFor(Id<K> id) => null;

  Future<T?> get(Id<K> id) => _getRefresher(id).refresh();
  Stream<T?> getStream(Id<K> id, {bool refresh = true}) {
    if (refresh) unawaited(_getRefresher(id).refresh());

    return _behaviorSubject.stream
        .map((it) => it[id])
        .whereNotNull()
        .distinct();
  }

  void notifyItemChanged(T item) =>
      _value = _value.setImmutable(_idFromItem(item), item);
  void notifyItemRemoved(Id<K> id) => _value = _value.removeImmutable(id);

  void clear() => _value = {};

  Future<void> dispose() => _behaviorSubject.close();
}

class CachedCollection<K extends Object, T extends Object>
    extends CachedSparseCollection<K, T> {
  CachedCollection({
    required super.idFromItem,
    required AsyncValueGetter<List<T>> getAllFromApi,
    required super.getFromApi,
  }) : _getAllFromApi = getAllFromApi;

  final AsyncValueGetter<List<T>> _getAllFromApi;

  late final _refresher = Refresher(() async {
    final data = await _getAllFromApi();
    _behaviorSubject.add(data.associateBy(_idFromItem));
    return data;
  });
  Future<List<T>> getAll<S extends Comparable<S>>({
    required Mapper<T, S> sortBy,
  }) async {
    final list = await _refresher.refresh();
    return list.sortedBy(sortBy);
  }

  Stream<List<T>> getAllStream<S extends Comparable<S>>({
    required Mapper<T, S> sortBy,
  }) {
    unawaited(_refresher.refresh());
    return _behaviorSubject.stream
        .whereNotNull()
        .map((it) => it.values.sortedBy(sortBy).toList())
        .distinct();
  }

  @override
  BaseRefresher<T?>? _getParentRefresherFor(Id<K> id) {
    return _refresher.map(
      (it) => it.firstWhereOrNull((it) => _idFromItem(it) == id),
    );
  }
}

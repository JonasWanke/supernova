import 'package:supernova/supernova.dart';

/// Keeps track of a sparse collection of items.
///
/// Whenever an item is requested, its current value has to be supplied so that
/// other listeners are updated as well.
class CachedItems<K extends Object, T extends Object> {
  CachedItems({required Mapper<T, K> idFromItem}) : _idFromItem = idFromItem;

  final Mapper<T, K> _idFromItem;

  final _behaviorSubject = BehaviorSubject<Map<K, T>>.seeded({});

  void update(T item) => _behaviorSubject.value =
      _behaviorSubject.value.setImmutable(_idFromItem(item), item);
  T requireSync(K id) => _behaviorSubject.value[id]!;
  Stream<T> getStream(T item) {
    update(item);
    return _behaviorSubject.stream
        .map((it) => it[_idFromItem(item)])
        .whereNotNull()
        .distinct();
  }

  void clear() => _behaviorSubject.value = {};

  Future<void> dispose() async => _behaviorSubject.close();
}

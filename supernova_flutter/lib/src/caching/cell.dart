import 'package:flutter/foundation.dart';
import 'package:supernova/supernova.dart'
    hide AsyncValueGetter, AsyncValueSetter;

import 'refresher.dart';

/// Like [CachedCell], but without an `update(…)` method to update the API.
class ApiReadonlyCachedCell<T extends Object> {
  ApiReadonlyCachedCell({required AsyncValueGetter<T> getFromApi})
    : _getFromApi = getFromApi;

  final AsyncValueGetter<T> _getFromApi;

  final _behaviorSubject = BehaviorSubject<T?>.seeded(null);
  late final _refresher = Refresher(() async {
    final data = await _getFromApi();
    set(data);
    return data;
  });
  Future<T> get value => _refresher.refresh();
  Stream<T> get stream {
    unawaited(_refresher.refresh());
    return _behaviorSubject.stream.whereNotNull().distinct();
  }

  void set(T newValue) => _behaviorSubject.add(newValue);

  void clear() => _behaviorSubject.value = null;

  Future<void> dispose() => _behaviorSubject.close();
}

abstract class CachedCell<T extends Object, U extends Object>
    extends ApiReadonlyCachedCell<T> {
  CachedCell._({
    required super.getFromApi,
    required AsyncValueSetter<U> updateApi,
  }) : _updateApi = updateApi;

  factory CachedCell.asymmetric({
    required AsyncValueGetter<T> getFromApi,
    required AsyncValueSetter<U> updateApi,
  }) = _AsymmetricCachedCell;

  static CachedCell<T, T> symmetric<T extends Object>({
    required AsyncValueGetter<T> getFromApi,
    required AsyncValueSetter<T> updateApi,
  }) => _SymmetricCachedCell(getFromApi: getFromApi, updateApi: updateApi);

  final AsyncValueSetter<U> _updateApi;

  Future<void> update(U update);
}

/// A [CachedCell] where data loaded from and sent to the server (`T` and `U`)
/// are the same.
class _SymmetricCachedCell<T extends Object> extends CachedCell<T, T> {
  _SymmetricCachedCell({required super.getFromApi, required super.updateApi})
    : super._();

  @override
  Future<void> update(T update) async {
    await _updateApi(update);
    _behaviorSubject.add(update);
  }
}

/// A [CachedCell] where data loaded from (`T`) and sent to the server (`U`)
/// are different.
class _AsymmetricCachedCell<T extends Object, U extends Object>
    extends CachedCell<T, U> {
  _AsymmetricCachedCell({required super.getFromApi, required super.updateApi})
    : super._();

  @override
  Future<void> update(U update) async {
    await _updateApi(update);
    await _refresher.refresh();
  }
}

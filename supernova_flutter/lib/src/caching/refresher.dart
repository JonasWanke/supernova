import 'package:flutter/foundation.dart';
import 'package:supernova/supernova.dart' hide AsyncValueGetter;

abstract class BaseRefresher<T> {
  Future<T>? get _currentFuture;
  Future<T> refresh();

  BaseRefresher<R> map<R>(Mapper<T, R> mapper) =>
      _MapRefresher(this, mapper: mapper);
}

class Refresher<T> extends BaseRefresher<T> {
  Refresher(this.action, {this.parent});

  final AsyncValueGetter<T> action;
  final BaseRefresher<T>? parent;

  Completer<T>? _refreshCompleter;
  Completer<T>? _nextRefreshCompleter;

  @override
  Future<T>? get _currentFuture => _refreshCompleter?.future;

  @override
  Future<T> refresh() async {
    if (_refreshCompleter != null) {
      // The refresh process has already been started and hence might return
      // outdated data.
      final nextCompleter = _nextRefreshCompleter;
      if (nextCompleter != null) {
        // The next refresh is already planned.
        return nextCompleter.future;
      }

      // We wait for the current refresh process to finish before starting a new
      // one.
      _nextRefreshCompleter = Completer();
      await _refreshCompleter!.future;
      assert(_refreshCompleter == null);
      _refreshCompleter = _nextRefreshCompleter;
      _nextRefreshCompleter = null;
    } else {
      _refreshCompleter = Completer();
    }

    final data = await (parent?._currentFuture ?? action());

    _refreshCompleter!.complete(data);
    _refreshCompleter = null;
    return data;
  }
}

class _MapRefresher<T, R> extends BaseRefresher<R> {
  _MapRefresher(this.base, {required this.mapper});

  final BaseRefresher<T> base;
  final Mapper<T, R> mapper;

  @override
  Future<R>? get _currentFuture => base._currentFuture?.then(mapper);

  @override
  Future<R> refresh() async {
    final result = await base.refresh();
    return mapper(result);
  }
}

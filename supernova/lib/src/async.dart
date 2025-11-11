import 'dart:async';

import 'package:rxdart/rxdart.dart';

import 'iterable.dart';
import 'typedefs.dart';

// Future

Future<Never> get neverCompletingFuture => Completer<Never>().future;

extension FutureSupernova<T> on Future<T> {
  Future<R> cast<R>() => then((it) => it as R);
}

extension IterableOfFuturesOfMapEntrySupernova<K, V>
    on Iterable<Future<MapEntry<K, V>>> {
  Future<Map<K, V>> waitToMap() async {
    final result = await wait;
    return result.toMap();
  }
}

extension MapOfKeyToFutureSupernova<K, V> on Map<K, Future<V>> {
  Future<Map<K, V>> get wait async {
    final newEntries = await entries
        .map((it) async => MapEntry(it.key, await it.value))
        .wait;
    return newEntries.toMap();
  }
}

// Stream

extension StreamSupernova<T> on Stream<T> {
  Future<T?> firstWhereOrNull(Predicate<T> test) =>
      cast<T?>().firstWhere((it) => test(it as T), orElse: () => null);

  Stream<(T, T2)> combineLatest<T2>(Stream<T2> other) =>
      (this, other).combineLatest();

  Future<void> toFuture() {
    final completer = Completer<void>();
    listen(
      (_) {},
      onError: completer.completeError,
      onDone: () => completer.complete(null),
    );
    return completer.future;
  }
}

extension IterableOfStreamSupernova<T> on Iterable<Stream<T>> {
  Stream<List<T>> combineLatest() {
    // For an empty iterable, `Rx.combineLatestList(…)` does not emit an empty
    // list, but completes directly.
    return isEmpty ? Stream.value([]) : Rx.combineLatestList(this);
  }
}

extension Tuple2Supernova<T1, T2> on (Stream<T1>, Stream<T2>) {
  Stream<(T1, T2)> combineLatest() =>
      Rx.combineLatest2($1, $2, (a, b) => (a, b));
}

extension Tuple3Supernova<T1, T2, T3> on (Stream<T1>, Stream<T2>, Stream<T3>) {
  Stream<(T1, T2, T3)> combineLatest() =>
      Rx.combineLatest3($1, $2, $3, (a, b, c) => (a, b, c));
}

extension Tuple4Supernova<T1, T2, T3, T4>
    on (Stream<T1>, Stream<T2>, Stream<T3>, Stream<T4>) {
  Stream<(T1, T2, T3, T4)> combineLatest() =>
      Rx.combineLatest4($1, $2, $3, $4, (a, b, c, d) => (a, b, c, d));
}

extension Tuple5Supernova<T1, T2, T3, T4, T5>
    on (Stream<T1>, Stream<T2>, Stream<T3>, Stream<T4>, Stream<T5>) {
  Stream<(T1, T2, T3, T4, T5)> combineLatest() =>
      Rx.combineLatest5($1, $2, $3, $4, $5, (a, b, c, d, e) => (a, b, c, d, e));
}

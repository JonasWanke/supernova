import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

import 'iterable.dart';
import 'typedefs.dart';

// Future

Future<Never> get neverCompletingFuture => Completer<Never>().future;

extension FutureSupernova<T> on Future<T> {
  Future<R> cast<R>() => then((it) => it as R);
}

extension IterableOfFuturesSupernova<T> on Iterable<Future<T>> {
  Future<List<T>> get wait => Future.wait(this);
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
    final newEntries =
        await entries.map((it) async => MapEntry(it.key, await it.value)).wait;
    return newEntries.toMap();
  }
}

extension Tuple2OfFuturesSupernova<T1, T2> on Tuple2<Future<T1>, Future<T2>> {
  Future<Tuple2<T1, T2>> get wait async {
    final result = await [item1, item2].wait;
    assert(result.length == 2);
    return Tuple2(result.first as T1, result[1] as T2);
  }
}

extension Tuple3OfFuturesSupernova<T1, T2, T3>
    on Tuple3<Future<T1>, Future<T2>, Future<T3>> {
  Future<Tuple3<T1, T2, T3>> get wait async {
    final result = await [item1, item2, item3].wait;
    assert(result.length == 3);
    return Tuple3(result.first as T1, result.second as T2, result.third as T3);
  }
}

extension Tuple4OfFuturesSupernova<T1, T2, T3, T4>
    on Tuple4<Future<T1>, Future<T2>, Future<T3>, Future<T4>> {
  Future<Tuple4<T1, T2, T3, T4>> get wait async {
    final result = await [item1, item2, item3, item4].wait;
    assert(result.length == 4);
    return Tuple4(
      result.first as T1,
      result.second as T2,
      result.third as T3,
      result.fourth as T4,
    );
  }
}

extension Tuple5OfFuturesSupernova<T1, T2, T3, T4, T5>
    on Tuple5<Future<T1>, Future<T2>, Future<T3>, Future<T4>, Future<T5>> {
  Future<Tuple5<T1, T2, T3, T4, T5>> get wait async {
    final result = await [item1, item2, item3, item4, item5].wait;
    assert(result.length == 5);
    return Tuple5(
      result.first as T1,
      result.second as T2,
      result.third as T3,
      result.fourth as T4,
      result[4] as T5,
    );
  }
}

extension Tuple6OfFuturesSupernova<T1, T2, T3, T4, T5, T6> on Tuple6<Future<T1>,
    Future<T2>, Future<T3>, Future<T4>, Future<T5>, Future<T6>> {
  Future<Tuple6<T1, T2, T3, T4, T5, T6>> get wait async {
    final result = await [item1, item2, item3, item4, item5, item6].wait;
    assert(result.length == 6);
    return Tuple6(
      result.first as T1,
      result.second as T2,
      result.third as T3,
      result.fourth as T4,
      result[4] as T5,
      result[5] as T6,
    );
  }
}

// Stream

extension StreamSupernova<T> on Stream<T> {
  Future<T?> firstWhereOrNull(Predicate<T> test) =>
      cast<T?>().firstWhere((it) => test(it as T), orElse: () => null);

  Stream<Tuple2<T, T2>> combineLatest<T2>(Stream<T2> other) =>
      Rx.combineLatest2(this, other, Tuple2.new);

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

extension Tuple2Supernova<T1, T2> on Tuple2<Stream<T1>, Stream<T2>> {
  Stream<Tuple2<T1, T2>> combineLatest() =>
      Rx.combineLatest2(item1, item2, Tuple2.new);
}

extension Tuple5Supernova<T1, T2, T3, T4, T5>
    on Tuple5<Stream<T1>, Stream<T2>, Stream<T3>, Stream<T4>, Stream<T5>> {
  Stream<Tuple5<T1, T2, T3, T4, T5>> combineLatest() =>
      Rx.combineLatest5(item1, item2, item3, item4, item5, Tuple5.new);
}

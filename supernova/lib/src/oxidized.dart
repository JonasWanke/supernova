import 'package:collection/collection.dart';
import 'package:oxidized/oxidized.dart';

import 'json.dart';
import 'typedefs.dart';

extension NullableToOptionSupernova<T extends Object> on T? {
  Option<T> toOption() => Option.from(this);
}

extension ResultSupernova<T extends Object, E extends Object> on Result<T, E> {
  Result<T, E> operator &(Result<T, E> other) => and(other);
  Result<T, E> operator |(Result<T, E> other) => or(other);

  Result<R, E> cast<R extends Object>() => map((it) => it as R);
}

extension ResultJsonSupernova<T extends ToJson, E extends ToJson>
    on Result<T, E> {
  static Result<T, E> fromJson<T extends Object, E extends Object>(
    Map<String, dynamic> json,
    T Function(dynamic json) okFromJson,
    E Function(dynamic json) errorFromJson,
  ) {
    final type = json['type'] as String;
    final dynamic value = json['value'];
    switch (type) {
      case 'ok':
        return Result.ok(okFromJson(value));
      case 'error':
        return Result.err(errorFromJson(value));
      default:
        throw ArgumentError.value(type, 'type', 'Invalid `Result` variant');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'type': isOk() ? 'ok' : 'error',
      'value': mapOrElse((it) => it.toJson(), (it) => it.toJson()),
    };
  }
}

extension ResultOfOptionSupernova<T extends Object, E extends Object>
    on Result<Option<T>, E> {
  Result<Option<R>, E> mapInner<R extends Object>(Mapper<T, R> mapper) =>
      map((it) => it.map(mapper));
}

extension IterableOfResultOfUnitSupernova<E extends Object>
    on Iterable<Result<Unit, E>> {
  Result<Unit, E> collect() {
    final firstError = firstWhereOrNull((it) => it.isErr());
    return firstError != null
        ? Result.err(firstError.unwrapErr())
        : const Result.ok(unit);
  }
}

extension IterableOfResultSupernova<T extends Object, E extends Object>
    on Iterable<Result<T, E>> {
  Result<List<T>, E> collect() {
    final firstError = firstWhereOrNull((it) => it.isErr());
    return firstError != null
        ? Result.err(firstError.unwrapErr())
        : Result.ok(map((it) => it.unwrap()).toList());
  }
}

extension IterableOfFutureOfResultSupernova<T extends Object, E extends Object>
    on Iterable<Future<Result<T, E>>> {
  Future<Result<List<T>, E>> collect() async {
    final resultList = <T>[];
    for (final item in this) {
      final result = await item;
      if (result.isErr()) return Result.err(result.unwrapErr());
      resultList.add(result.unwrap());
    }
    assert(resultList.length == length);
    return Result.ok(resultList);
  }
}

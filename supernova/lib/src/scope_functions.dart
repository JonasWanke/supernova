import 'package:oxidized/oxidized.dart';

import 'typedefs.dart';

extension ScopeFunctionsSupernova<T extends Object> on T {
  /// Calls the specified function `block` with `this` value as its argument and
  /// returns its result.
  ///
  /// https://kotlinlang.org/docs/scope-functions.html#let
  R let<R>(Mapper<T, R> block) => block(this);

  Result<R, Exception> letCatching<R extends Object>(Mapper<T, R> block) =>
      Result.of(() => block(this));

  /// Returns `this` value if it satisfies the given `predicate` and `null` if
  /// it doesn't.
  ///
  /// https://kotlinlang.org/docs/scope-functions.html#takeif-and-takeunless
  T? takeIf(Predicate<T> predicate) => predicate(this) ? this : null;

  /// Returns `this` value if it does not satisfy the given `predicate` and
  /// `null` if it does.
  ///
  /// https://kotlinlang.org/docs/scope-functions.html#takeif-and-takeunless
  T? takeUnless(Predicate<T> predicate) => predicate(this) ? null : this;
}

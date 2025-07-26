// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'https_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HttpsUrl {
  Uri get value;

  /// Create a copy of HttpsUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HttpsUrlCopyWith<HttpsUrl> get copyWith =>
      _$HttpsUrlCopyWithImpl<HttpsUrl>(this as HttpsUrl, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HttpsUrl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);
}

/// @nodoc
abstract mixin class $HttpsUrlCopyWith<$Res> {
  factory $HttpsUrlCopyWith(HttpsUrl value, $Res Function(HttpsUrl) _then) =
      _$HttpsUrlCopyWithImpl;
  @useResult
  $Res call({Uri value});
}

/// @nodoc
class _$HttpsUrlCopyWithImpl<$Res> implements $HttpsUrlCopyWith<$Res> {
  _$HttpsUrlCopyWithImpl(this._self, this._then);

  final HttpsUrl _self;
  final $Res Function(HttpsUrl) _then;

  /// Create a copy of HttpsUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// Adds pattern-matching-related methods to [HttpsUrl].
extension HttpsUrlPatterns on HttpsUrl {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HttpsUrl value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HttpsUrl() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HttpsUrl value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HttpsUrl():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HttpsUrl value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HttpsUrl() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Uri value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HttpsUrl() when $default != null:
        return $default(_that.value);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Uri value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HttpsUrl():
        return $default(_that.value);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Uri value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HttpsUrl() when $default != null:
        return $default(_that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HttpsUrl extends HttpsUrl {
  const _HttpsUrl(this.value) : super._();

  @override
  final Uri value;

  /// Create a copy of HttpsUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HttpsUrlCopyWith<_HttpsUrl> get copyWith =>
      __$HttpsUrlCopyWithImpl<_HttpsUrl>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HttpsUrl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);
}

/// @nodoc
abstract mixin class _$HttpsUrlCopyWith<$Res>
    implements $HttpsUrlCopyWith<$Res> {
  factory _$HttpsUrlCopyWith(_HttpsUrl value, $Res Function(_HttpsUrl) _then) =
      __$HttpsUrlCopyWithImpl;
  @override
  @useResult
  $Res call({Uri value});
}

/// @nodoc
class __$HttpsUrlCopyWithImpl<$Res> implements _$HttpsUrlCopyWith<$Res> {
  __$HttpsUrlCopyWithImpl(this._self, this._then);

  final _HttpsUrl _self;
  final $Res Function(_HttpsUrl) _then;

  /// Create a copy of HttpsUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_HttpsUrl(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

// dart format on

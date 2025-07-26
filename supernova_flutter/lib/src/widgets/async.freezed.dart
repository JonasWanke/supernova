// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Snapshot<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Snapshot<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Snapshot<$T>()';
  }
}

/// @nodoc
class $SnapshotCopyWith<T, $Res> {
  $SnapshotCopyWith(Snapshot<T> _, $Res Function(Snapshot<T>) __);
}

/// Adds pattern-matching-related methods to [Snapshot].
extension SnapshotPatterns<T> on Snapshot<T> {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSnapshot<T> value)? loading,
    TResult Function(_SuccessSnapshot<T> value)? success,
    TResult Function(_ErrorSnapshot<T> value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadingSnapshot() when loading != null:
        return loading(_that);
      case _SuccessSnapshot() when success != null:
        return success(_that);
      case _ErrorSnapshot() when error != null:
        return error(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingSnapshot<T> value) loading,
    required TResult Function(_SuccessSnapshot<T> value) success,
    required TResult Function(_ErrorSnapshot<T> value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadingSnapshot():
        return loading(_that);
      case _SuccessSnapshot():
        return success(_that);
      case _ErrorSnapshot():
        return error(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSnapshot<T> value)? loading,
    TResult? Function(_SuccessSnapshot<T> value)? success,
    TResult? Function(_ErrorSnapshot<T> value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadingSnapshot() when loading != null:
        return loading(_that);
      case _SuccessSnapshot() when success != null:
        return success(_that);
      case _ErrorSnapshot() when error != null:
        return error(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Object? error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadingSnapshot() when loading != null:
        return loading();
      case _SuccessSnapshot() when success != null:
        return success(_that.data);
      case _ErrorSnapshot() when error != null:
        return error(_that.error, _that.stackTrace);
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
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Object? error, StackTrace stackTrace) error,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadingSnapshot():
        return loading();
      case _SuccessSnapshot():
        return success(_that.data);
      case _ErrorSnapshot():
        return error(_that.error, _that.stackTrace);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Object? error, StackTrace stackTrace)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadingSnapshot() when loading != null:
        return loading();
      case _SuccessSnapshot() when success != null:
        return success(_that.data);
      case _ErrorSnapshot() when error != null:
        return error(_that.error, _that.stackTrace);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoadingSnapshot<T> extends Snapshot<T> {
  const _LoadingSnapshot() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingSnapshot<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Snapshot<$T>.loading()';
  }
}

/// @nodoc

class _SuccessSnapshot<T> extends Snapshot<T> {
  const _SuccessSnapshot(this.data) : super._();

  final T data;

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessSnapshotCopyWith<T, _SuccessSnapshot<T>> get copyWith =>
      __$SuccessSnapshotCopyWithImpl<T, _SuccessSnapshot<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessSnapshot<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'Snapshot<$T>.success(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$SuccessSnapshotCopyWith<T, $Res>
    implements $SnapshotCopyWith<T, $Res> {
  factory _$SuccessSnapshotCopyWith(
          _SuccessSnapshot<T> value, $Res Function(_SuccessSnapshot<T>) _then) =
      __$SuccessSnapshotCopyWithImpl;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$SuccessSnapshotCopyWithImpl<T, $Res>
    implements _$SuccessSnapshotCopyWith<T, $Res> {
  __$SuccessSnapshotCopyWithImpl(this._self, this._then);

  final _SuccessSnapshot<T> _self;
  final $Res Function(_SuccessSnapshot<T>) _then;

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SuccessSnapshot<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _ErrorSnapshot<T> extends Snapshot<T> {
  const _ErrorSnapshot(this.error, this.stackTrace) : super._();

  final Object? error;
  final StackTrace stackTrace;

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorSnapshotCopyWith<T, _ErrorSnapshot<T>> get copyWith =>
      __$ErrorSnapshotCopyWithImpl<T, _ErrorSnapshot<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorSnapshot<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @override
  String toString() {
    return 'Snapshot<$T>.error(error: $error, stackTrace: $stackTrace)';
  }
}

/// @nodoc
abstract mixin class _$ErrorSnapshotCopyWith<T, $Res>
    implements $SnapshotCopyWith<T, $Res> {
  factory _$ErrorSnapshotCopyWith(
          _ErrorSnapshot<T> value, $Res Function(_ErrorSnapshot<T>) _then) =
      __$ErrorSnapshotCopyWithImpl;
  @useResult
  $Res call({Object? error, StackTrace stackTrace});
}

/// @nodoc
class __$ErrorSnapshotCopyWithImpl<T, $Res>
    implements _$ErrorSnapshotCopyWith<T, $Res> {
  __$ErrorSnapshotCopyWithImpl(this._self, this._then);

  final _ErrorSnapshot<T> _self;
  final $Res Function(_ErrorSnapshot<T>) _then;

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_ErrorSnapshot<T>(
      freezed == error ? _self.error : error,
      null == stackTrace
          ? _self.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

// dart format on

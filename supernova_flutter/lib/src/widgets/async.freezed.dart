// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Snapshot<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Object? error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Object? error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Object? error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingSnapshot<T> value) loading,
    required TResult Function(_SuccessSnapshot<T> value) success,
    required TResult Function(_ErrorSnapshot<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSnapshot<T> value)? loading,
    TResult? Function(_SuccessSnapshot<T> value)? success,
    TResult? Function(_ErrorSnapshot<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSnapshot<T> value)? loading,
    TResult Function(_SuccessSnapshot<T> value)? success,
    TResult Function(_ErrorSnapshot<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapshotCopyWith<T, $Res> {
  factory $SnapshotCopyWith(
          Snapshot<T> value, $Res Function(Snapshot<T>) then) =
      _$SnapshotCopyWithImpl<T, $Res, Snapshot<T>>;
}

/// @nodoc
class _$SnapshotCopyWithImpl<T, $Res, $Val extends Snapshot<T>>
    implements $SnapshotCopyWith<T, $Res> {
  _$SnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingSnapshotImplCopyWith<T, $Res> {
  factory _$$LoadingSnapshotImplCopyWith(_$LoadingSnapshotImpl<T> value,
          $Res Function(_$LoadingSnapshotImpl<T>) then) =
      __$$LoadingSnapshotImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingSnapshotImplCopyWithImpl<T, $Res>
    extends _$SnapshotCopyWithImpl<T, $Res, _$LoadingSnapshotImpl<T>>
    implements _$$LoadingSnapshotImplCopyWith<T, $Res> {
  __$$LoadingSnapshotImplCopyWithImpl(_$LoadingSnapshotImpl<T> _value,
      $Res Function(_$LoadingSnapshotImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingSnapshotImpl<T> extends _LoadingSnapshot<T> {
  const _$LoadingSnapshotImpl() : super._();

  @override
  String toString() {
    return 'Snapshot<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSnapshotImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Object? error, StackTrace stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Object? error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Object? error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingSnapshot<T> value) loading,
    required TResult Function(_SuccessSnapshot<T> value) success,
    required TResult Function(_ErrorSnapshot<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSnapshot<T> value)? loading,
    TResult? Function(_SuccessSnapshot<T> value)? success,
    TResult? Function(_ErrorSnapshot<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSnapshot<T> value)? loading,
    TResult Function(_SuccessSnapshot<T> value)? success,
    TResult Function(_ErrorSnapshot<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSnapshot<T> extends Snapshot<T> {
  const factory _LoadingSnapshot() = _$LoadingSnapshotImpl<T>;
  const _LoadingSnapshot._() : super._();
}

/// @nodoc
abstract class _$$SuccessSnapshotImplCopyWith<T, $Res> {
  factory _$$SuccessSnapshotImplCopyWith(_$SuccessSnapshotImpl<T> value,
          $Res Function(_$SuccessSnapshotImpl<T>) then) =
      __$$SuccessSnapshotImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessSnapshotImplCopyWithImpl<T, $Res>
    extends _$SnapshotCopyWithImpl<T, $Res, _$SuccessSnapshotImpl<T>>
    implements _$$SuccessSnapshotImplCopyWith<T, $Res> {
  __$$SuccessSnapshotImplCopyWithImpl(_$SuccessSnapshotImpl<T> _value,
      $Res Function(_$SuccessSnapshotImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessSnapshotImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessSnapshotImpl<T> extends _SuccessSnapshot<T> {
  const _$SuccessSnapshotImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Snapshot<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSnapshotImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSnapshotImplCopyWith<T, _$SuccessSnapshotImpl<T>> get copyWith =>
      __$$SuccessSnapshotImplCopyWithImpl<T, _$SuccessSnapshotImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Object? error, StackTrace stackTrace) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Object? error, StackTrace stackTrace)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Object? error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingSnapshot<T> value) loading,
    required TResult Function(_SuccessSnapshot<T> value) success,
    required TResult Function(_ErrorSnapshot<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSnapshot<T> value)? loading,
    TResult? Function(_SuccessSnapshot<T> value)? success,
    TResult? Function(_ErrorSnapshot<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSnapshot<T> value)? loading,
    TResult Function(_SuccessSnapshot<T> value)? success,
    TResult Function(_ErrorSnapshot<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessSnapshot<T> extends Snapshot<T> {
  const factory _SuccessSnapshot(final T data) = _$SuccessSnapshotImpl<T>;
  const _SuccessSnapshot._() : super._();

  T get data;

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessSnapshotImplCopyWith<T, _$SuccessSnapshotImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSnapshotImplCopyWith<T, $Res> {
  factory _$$ErrorSnapshotImplCopyWith(_$ErrorSnapshotImpl<T> value,
          $Res Function(_$ErrorSnapshotImpl<T>) then) =
      __$$ErrorSnapshotImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object? error, StackTrace stackTrace});
}

/// @nodoc
class __$$ErrorSnapshotImplCopyWithImpl<T, $Res>
    extends _$SnapshotCopyWithImpl<T, $Res, _$ErrorSnapshotImpl<T>>
    implements _$$ErrorSnapshotImplCopyWith<T, $Res> {
  __$$ErrorSnapshotImplCopyWithImpl(_$ErrorSnapshotImpl<T> _value,
      $Res Function(_$ErrorSnapshotImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$ErrorSnapshotImpl<T>(
      freezed == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ErrorSnapshotImpl<T> extends _ErrorSnapshot<T> {
  const _$ErrorSnapshotImpl(this.error, this.stackTrace) : super._();

  @override
  final Object? error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Snapshot<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSnapshotImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSnapshotImplCopyWith<T, _$ErrorSnapshotImpl<T>> get copyWith =>
      __$$ErrorSnapshotImplCopyWithImpl<T, _$ErrorSnapshotImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Object? error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Object? error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Object? error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingSnapshot<T> value) loading,
    required TResult Function(_SuccessSnapshot<T> value) success,
    required TResult Function(_ErrorSnapshot<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSnapshot<T> value)? loading,
    TResult? Function(_SuccessSnapshot<T> value)? success,
    TResult? Function(_ErrorSnapshot<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSnapshot<T> value)? loading,
    TResult Function(_SuccessSnapshot<T> value)? success,
    TResult Function(_ErrorSnapshot<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSnapshot<T> extends Snapshot<T> {
  const factory _ErrorSnapshot(
          final Object? error, final StackTrace stackTrace) =
      _$ErrorSnapshotImpl<T>;
  const _ErrorSnapshot._() : super._();

  Object? get error;
  StackTrace get stackTrace;

  /// Create a copy of Snapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorSnapshotImplCopyWith<T, _$ErrorSnapshotImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_LoadingSnapshotCopyWith<T, $Res> {
  factory _$$_LoadingSnapshotCopyWith(_$_LoadingSnapshot<T> value,
          $Res Function(_$_LoadingSnapshot<T>) then) =
      __$$_LoadingSnapshotCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadingSnapshotCopyWithImpl<T, $Res>
    extends _$SnapshotCopyWithImpl<T, $Res, _$_LoadingSnapshot<T>>
    implements _$$_LoadingSnapshotCopyWith<T, $Res> {
  __$$_LoadingSnapshotCopyWithImpl(
      _$_LoadingSnapshot<T> _value, $Res Function(_$_LoadingSnapshot<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingSnapshot<T> extends _LoadingSnapshot<T> {
  const _$_LoadingSnapshot() : super._();

  @override
  String toString() {
    return 'Snapshot<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingSnapshot<T>);
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
  const factory _LoadingSnapshot() = _$_LoadingSnapshot<T>;
  const _LoadingSnapshot._() : super._();
}

/// @nodoc
abstract class _$$_SuccessSnapshotCopyWith<T, $Res> {
  factory _$$_SuccessSnapshotCopyWith(_$_SuccessSnapshot<T> value,
          $Res Function(_$_SuccessSnapshot<T>) then) =
      __$$_SuccessSnapshotCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_SuccessSnapshotCopyWithImpl<T, $Res>
    extends _$SnapshotCopyWithImpl<T, $Res, _$_SuccessSnapshot<T>>
    implements _$$_SuccessSnapshotCopyWith<T, $Res> {
  __$$_SuccessSnapshotCopyWithImpl(
      _$_SuccessSnapshot<T> _value, $Res Function(_$_SuccessSnapshot<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SuccessSnapshot<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_SuccessSnapshot<T> extends _SuccessSnapshot<T> {
  const _$_SuccessSnapshot(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Snapshot<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessSnapshot<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessSnapshotCopyWith<T, _$_SuccessSnapshot<T>> get copyWith =>
      __$$_SuccessSnapshotCopyWithImpl<T, _$_SuccessSnapshot<T>>(
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
  const factory _SuccessSnapshot(final T data) = _$_SuccessSnapshot<T>;
  const _SuccessSnapshot._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$_SuccessSnapshotCopyWith<T, _$_SuccessSnapshot<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorSnapshotCopyWith<T, $Res> {
  factory _$$_ErrorSnapshotCopyWith(
          _$_ErrorSnapshot<T> value, $Res Function(_$_ErrorSnapshot<T>) then) =
      __$$_ErrorSnapshotCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object? error, StackTrace stackTrace});
}

/// @nodoc
class __$$_ErrorSnapshotCopyWithImpl<T, $Res>
    extends _$SnapshotCopyWithImpl<T, $Res, _$_ErrorSnapshot<T>>
    implements _$$_ErrorSnapshotCopyWith<T, $Res> {
  __$$_ErrorSnapshotCopyWithImpl(
      _$_ErrorSnapshot<T> _value, $Res Function(_$_ErrorSnapshot<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$_ErrorSnapshot<T>(
      freezed == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_ErrorSnapshot<T> extends _ErrorSnapshot<T> {
  const _$_ErrorSnapshot(this.error, this.stackTrace) : super._();

  @override
  final Object? error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Snapshot<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSnapshot<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSnapshotCopyWith<T, _$_ErrorSnapshot<T>> get copyWith =>
      __$$_ErrorSnapshotCopyWithImpl<T, _$_ErrorSnapshot<T>>(this, _$identity);

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
      final Object? error, final StackTrace stackTrace) = _$_ErrorSnapshot<T>;
  const _ErrorSnapshot._() : super._();

  Object? get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$_ErrorSnapshotCopyWith<T, _$_ErrorSnapshot<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

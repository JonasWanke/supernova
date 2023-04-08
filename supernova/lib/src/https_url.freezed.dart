// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'https_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpsUrl {
  Uri get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpsUrlCopyWith<HttpsUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpsUrlCopyWith<$Res> {
  factory $HttpsUrlCopyWith(HttpsUrl value, $Res Function(HttpsUrl) then) =
      _$HttpsUrlCopyWithImpl<$Res, HttpsUrl>;
  @useResult
  $Res call({Uri value});
}

/// @nodoc
class _$HttpsUrlCopyWithImpl<$Res, $Val extends HttpsUrl>
    implements $HttpsUrlCopyWith<$Res> {
  _$HttpsUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HttpsUrlCopyWith<$Res> implements $HttpsUrlCopyWith<$Res> {
  factory _$$_HttpsUrlCopyWith(
          _$_HttpsUrl value, $Res Function(_$_HttpsUrl) then) =
      __$$_HttpsUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri value});
}

/// @nodoc
class __$$_HttpsUrlCopyWithImpl<$Res>
    extends _$HttpsUrlCopyWithImpl<$Res, _$_HttpsUrl>
    implements _$$_HttpsUrlCopyWith<$Res> {
  __$$_HttpsUrlCopyWithImpl(
      _$_HttpsUrl _value, $Res Function(_$_HttpsUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_HttpsUrl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_HttpsUrl extends _HttpsUrl {
  const _$_HttpsUrl(this.value) : super._();

  @override
  final Uri value;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpsUrl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpsUrlCopyWith<_$_HttpsUrl> get copyWith =>
      __$$_HttpsUrlCopyWithImpl<_$_HttpsUrl>(this, _$identity);
}

abstract class _HttpsUrl extends HttpsUrl {
  const factory _HttpsUrl(final Uri value) = _$_HttpsUrl;
  const _HttpsUrl._() : super._();

  @override
  Uri get value;
  @override
  @JsonKey(ignore: true)
  _$$_HttpsUrlCopyWith<_$_HttpsUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

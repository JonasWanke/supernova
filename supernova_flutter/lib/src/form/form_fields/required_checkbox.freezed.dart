// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'required_checkbox.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupernovaRequiredCheckboxFormField {
  ValueNotifier<bool> get currentValue => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  EdgeInsets? get contentPadding => throw _privateConstructorUsedError;
  TextStyle? get textStyle => throw _privateConstructorUsedError;

  /// Create a copy of SupernovaRequiredCheckboxFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupernovaRequiredCheckboxFormFieldCopyWith<
          SupernovaRequiredCheckboxFormField>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupernovaRequiredCheckboxFormFieldCopyWith<$Res> {
  factory $SupernovaRequiredCheckboxFormFieldCopyWith(
          SupernovaRequiredCheckboxFormField value,
          $Res Function(SupernovaRequiredCheckboxFormField) then) =
      _$SupernovaRequiredCheckboxFormFieldCopyWithImpl<$Res,
          SupernovaRequiredCheckboxFormField>;
  @useResult
  $Res call(
      {ValueNotifier<bool> currentValue,
      String message,
      EdgeInsets? contentPadding,
      TextStyle? textStyle});
}

/// @nodoc
class _$SupernovaRequiredCheckboxFormFieldCopyWithImpl<$Res,
        $Val extends SupernovaRequiredCheckboxFormField>
    implements $SupernovaRequiredCheckboxFormFieldCopyWith<$Res> {
  _$SupernovaRequiredCheckboxFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupernovaRequiredCheckboxFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? message = null,
    Object? contentPadding = freezed,
    Object? textStyle = freezed,
  }) {
    return _then(_value.copyWith(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<bool>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      contentPadding: freezed == contentPadding
          ? _value.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      textStyle: freezed == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupernovaRequiredCheckboxFormFieldImplCopyWith<$Res>
    implements $SupernovaRequiredCheckboxFormFieldCopyWith<$Res> {
  factory _$$SupernovaRequiredCheckboxFormFieldImplCopyWith(
          _$SupernovaRequiredCheckboxFormFieldImpl value,
          $Res Function(_$SupernovaRequiredCheckboxFormFieldImpl) then) =
      __$$SupernovaRequiredCheckboxFormFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ValueNotifier<bool> currentValue,
      String message,
      EdgeInsets? contentPadding,
      TextStyle? textStyle});
}

/// @nodoc
class __$$SupernovaRequiredCheckboxFormFieldImplCopyWithImpl<$Res>
    extends _$SupernovaRequiredCheckboxFormFieldCopyWithImpl<$Res,
        _$SupernovaRequiredCheckboxFormFieldImpl>
    implements _$$SupernovaRequiredCheckboxFormFieldImplCopyWith<$Res> {
  __$$SupernovaRequiredCheckboxFormFieldImplCopyWithImpl(
      _$SupernovaRequiredCheckboxFormFieldImpl _value,
      $Res Function(_$SupernovaRequiredCheckboxFormFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupernovaRequiredCheckboxFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? message = null,
    Object? contentPadding = freezed,
    Object? textStyle = freezed,
  }) {
    return _then(_$SupernovaRequiredCheckboxFormFieldImpl(
      null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<bool>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      contentPadding: freezed == contentPadding
          ? _value.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      textStyle: freezed == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// @nodoc

class _$SupernovaRequiredCheckboxFormFieldImpl
    extends _SupernovaRequiredCheckboxFormField {
  const _$SupernovaRequiredCheckboxFormFieldImpl(this.currentValue,
      {required this.message, this.contentPadding, this.textStyle})
      : super._();

  @override
  final ValueNotifier<bool> currentValue;
  @override
  final String message;
  @override
  final EdgeInsets? contentPadding;
  @override
  final TextStyle? textStyle;

  @override
  String toString() {
    return 'SupernovaRequiredCheckboxFormField(currentValue: $currentValue, message: $message, contentPadding: $contentPadding, textStyle: $textStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupernovaRequiredCheckboxFormFieldImpl &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentValue, message, contentPadding, textStyle);

  /// Create a copy of SupernovaRequiredCheckboxFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupernovaRequiredCheckboxFormFieldImplCopyWith<
          _$SupernovaRequiredCheckboxFormFieldImpl>
      get copyWith => __$$SupernovaRequiredCheckboxFormFieldImplCopyWithImpl<
          _$SupernovaRequiredCheckboxFormFieldImpl>(this, _$identity);
}

abstract class _SupernovaRequiredCheckboxFormField
    extends SupernovaRequiredCheckboxFormField {
  const factory _SupernovaRequiredCheckboxFormField(
      final ValueNotifier<bool> currentValue,
      {required final String message,
      final EdgeInsets? contentPadding,
      final TextStyle? textStyle}) = _$SupernovaRequiredCheckboxFormFieldImpl;
  const _SupernovaRequiredCheckboxFormField._() : super._();

  @override
  ValueNotifier<bool> get currentValue;
  @override
  String get message;
  @override
  EdgeInsets? get contentPadding;
  @override
  TextStyle? get textStyle;

  /// Create a copy of SupernovaRequiredCheckboxFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupernovaRequiredCheckboxFormFieldImplCopyWith<
          _$SupernovaRequiredCheckboxFormFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

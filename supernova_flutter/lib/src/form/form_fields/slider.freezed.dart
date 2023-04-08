// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SupernovaSliderFormField<T extends Object> {
  ValueNotifier<T> get selectedValue => throw _privateConstructorUsedError;
  List<T> get values => throw _privateConstructorUsedError;
  Formatter<T>? get labelGetter => throw _privateConstructorUsedError;
  Formatter<T> get descriptionGetter => throw _privateConstructorUsedError;
  String? get minDescription => throw _privateConstructorUsedError;
  String? get maxDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupernovaSliderFormFieldCopyWith<T, SupernovaSliderFormField<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupernovaSliderFormFieldCopyWith<T extends Object, $Res> {
  factory $SupernovaSliderFormFieldCopyWith(SupernovaSliderFormField<T> value,
          $Res Function(SupernovaSliderFormField<T>) then) =
      _$SupernovaSliderFormFieldCopyWithImpl<T, $Res,
          SupernovaSliderFormField<T>>;
  @useResult
  $Res call(
      {ValueNotifier<T> selectedValue,
      List<T> values,
      Formatter<T>? labelGetter,
      Formatter<T> descriptionGetter,
      String? minDescription,
      String? maxDescription});
}

/// @nodoc
class _$SupernovaSliderFormFieldCopyWithImpl<T extends Object, $Res,
        $Val extends SupernovaSliderFormField<T>>
    implements $SupernovaSliderFormFieldCopyWith<T, $Res> {
  _$SupernovaSliderFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
    Object? values = null,
    Object? labelGetter = freezed,
    Object? descriptionGetter = null,
    Object? minDescription = freezed,
    Object? maxDescription = freezed,
  }) {
    return _then(_value.copyWith(
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<T>,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
      labelGetter: freezed == labelGetter
          ? _value.labelGetter
          : labelGetter // ignore: cast_nullable_to_non_nullable
              as Formatter<T>?,
      descriptionGetter: null == descriptionGetter
          ? _value.descriptionGetter
          : descriptionGetter // ignore: cast_nullable_to_non_nullable
              as Formatter<T>,
      minDescription: freezed == minDescription
          ? _value.minDescription
          : minDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      maxDescription: freezed == maxDescription
          ? _value.maxDescription
          : maxDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupernovaSliderFormFieldCopyWith<T extends Object, $Res>
    implements $SupernovaSliderFormFieldCopyWith<T, $Res> {
  factory _$$_SupernovaSliderFormFieldCopyWith(
          _$_SupernovaSliderFormField<T> value,
          $Res Function(_$_SupernovaSliderFormField<T>) then) =
      __$$_SupernovaSliderFormFieldCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {ValueNotifier<T> selectedValue,
      List<T> values,
      Formatter<T>? labelGetter,
      Formatter<T> descriptionGetter,
      String? minDescription,
      String? maxDescription});
}

/// @nodoc
class __$$_SupernovaSliderFormFieldCopyWithImpl<T extends Object, $Res>
    extends _$SupernovaSliderFormFieldCopyWithImpl<T, $Res,
        _$_SupernovaSliderFormField<T>>
    implements _$$_SupernovaSliderFormFieldCopyWith<T, $Res> {
  __$$_SupernovaSliderFormFieldCopyWithImpl(
      _$_SupernovaSliderFormField<T> _value,
      $Res Function(_$_SupernovaSliderFormField<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedValue = null,
    Object? values = null,
    Object? labelGetter = freezed,
    Object? descriptionGetter = null,
    Object? minDescription = freezed,
    Object? maxDescription = freezed,
  }) {
    return _then(_$_SupernovaSliderFormField<T>(
      null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<T>,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
      labelGetter: freezed == labelGetter
          ? _value.labelGetter
          : labelGetter // ignore: cast_nullable_to_non_nullable
              as Formatter<T>?,
      descriptionGetter: null == descriptionGetter
          ? _value.descriptionGetter
          : descriptionGetter // ignore: cast_nullable_to_non_nullable
              as Formatter<T>,
      minDescription: freezed == minDescription
          ? _value.minDescription
          : minDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      maxDescription: freezed == maxDescription
          ? _value.maxDescription
          : maxDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SupernovaSliderFormField<T extends Object>
    extends _SupernovaSliderFormField<T> {
  const _$_SupernovaSliderFormField(this.selectedValue,
      {required final List<T> values,
      this.labelGetter,
      required this.descriptionGetter,
      this.minDescription,
      this.maxDescription})
      : _values = values,
        super._();

  @override
  final ValueNotifier<T> selectedValue;
  final List<T> _values;
  @override
  List<T> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  final Formatter<T>? labelGetter;
  @override
  final Formatter<T> descriptionGetter;
  @override
  final String? minDescription;
  @override
  final String? maxDescription;

  @override
  String toString() {
    return 'SupernovaSliderFormField<$T>(selectedValue: $selectedValue, values: $values, labelGetter: $labelGetter, descriptionGetter: $descriptionGetter, minDescription: $minDescription, maxDescription: $maxDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupernovaSliderFormField<T> &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.labelGetter, labelGetter) ||
                other.labelGetter == labelGetter) &&
            (identical(other.descriptionGetter, descriptionGetter) ||
                other.descriptionGetter == descriptionGetter) &&
            (identical(other.minDescription, minDescription) ||
                other.minDescription == minDescription) &&
            (identical(other.maxDescription, maxDescription) ||
                other.maxDescription == maxDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedValue,
      const DeepCollectionEquality().hash(_values),
      labelGetter,
      descriptionGetter,
      minDescription,
      maxDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupernovaSliderFormFieldCopyWith<T, _$_SupernovaSliderFormField<T>>
      get copyWith => __$$_SupernovaSliderFormFieldCopyWithImpl<T,
          _$_SupernovaSliderFormField<T>>(this, _$identity);
}

abstract class _SupernovaSliderFormField<T extends Object>
    extends SupernovaSliderFormField<T> {
  const factory _SupernovaSliderFormField(final ValueNotifier<T> selectedValue,
      {required final List<T> values,
      final Formatter<T>? labelGetter,
      required final Formatter<T> descriptionGetter,
      final String? minDescription,
      final String? maxDescription}) = _$_SupernovaSliderFormField<T>;
  const _SupernovaSliderFormField._() : super._();

  @override
  ValueNotifier<T> get selectedValue;
  @override
  List<T> get values;
  @override
  Formatter<T>? get labelGetter;
  @override
  Formatter<T> get descriptionGetter;
  @override
  String? get minDescription;
  @override
  String? get maxDescription;
  @override
  @JsonKey(ignore: true)
  _$$_SupernovaSliderFormFieldCopyWith<T, _$_SupernovaSliderFormField<T>>
      get copyWith => throw _privateConstructorUsedError;
}

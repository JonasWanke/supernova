// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaSliderFormField<T extends Object> {
  ValueNotifier<T> get selectedValue;
  List<T> get values;
  Formatter<T>? get labelGetter;
  Formatter<T> get descriptionGetter;
  String? get minDescription;
  String? get maxDescription;

  /// Create a copy of SupernovaSliderFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaSliderFormFieldCopyWith<T, SupernovaSliderFormField<T>>
      get copyWith => _$SupernovaSliderFormFieldCopyWithImpl<T,
              SupernovaSliderFormField<T>>(
          this as SupernovaSliderFormField<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaSliderFormField<T> &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue) &&
            const DeepCollectionEquality().equals(other.values, values) &&
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
      const DeepCollectionEquality().hash(values),
      labelGetter,
      descriptionGetter,
      minDescription,
      maxDescription);

  @override
  String toString() {
    return 'SupernovaSliderFormField<$T>(selectedValue: $selectedValue, values: $values, labelGetter: $labelGetter, descriptionGetter: $descriptionGetter, minDescription: $minDescription, maxDescription: $maxDescription)';
  }
}

/// @nodoc
abstract mixin class $SupernovaSliderFormFieldCopyWith<T extends Object, $Res> {
  factory $SupernovaSliderFormFieldCopyWith(SupernovaSliderFormField<T> value,
          $Res Function(SupernovaSliderFormField<T>) _then) =
      _$SupernovaSliderFormFieldCopyWithImpl;
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
class _$SupernovaSliderFormFieldCopyWithImpl<T extends Object, $Res>
    implements $SupernovaSliderFormFieldCopyWith<T, $Res> {
  _$SupernovaSliderFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaSliderFormField<T> _self;
  final $Res Function(SupernovaSliderFormField<T>) _then;

  /// Create a copy of SupernovaSliderFormField
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      selectedValue: null == selectedValue
          ? _self.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<T>,
      values: null == values
          ? _self.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
      labelGetter: freezed == labelGetter
          ? _self.labelGetter
          : labelGetter // ignore: cast_nullable_to_non_nullable
              as Formatter<T>?,
      descriptionGetter: null == descriptionGetter
          ? _self.descriptionGetter
          : descriptionGetter // ignore: cast_nullable_to_non_nullable
              as Formatter<T>,
      minDescription: freezed == minDescription
          ? _self.minDescription
          : minDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      maxDescription: freezed == maxDescription
          ? _self.maxDescription
          : maxDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupernovaSliderFormField].
extension SupernovaSliderFormFieldPatterns<T extends Object>
    on SupernovaSliderFormField<T> {
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
    TResult Function(_SupernovaSliderFormField<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaSliderFormField() when $default != null:
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
    TResult Function(_SupernovaSliderFormField<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaSliderFormField():
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
    TResult? Function(_SupernovaSliderFormField<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaSliderFormField() when $default != null:
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
    TResult Function(
            ValueNotifier<T> selectedValue,
            List<T> values,
            Formatter<T>? labelGetter,
            Formatter<T> descriptionGetter,
            String? minDescription,
            String? maxDescription)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaSliderFormField() when $default != null:
        return $default(
            _that.selectedValue,
            _that.values,
            _that.labelGetter,
            _that.descriptionGetter,
            _that.minDescription,
            _that.maxDescription);
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
    TResult Function(
            ValueNotifier<T> selectedValue,
            List<T> values,
            Formatter<T>? labelGetter,
            Formatter<T> descriptionGetter,
            String? minDescription,
            String? maxDescription)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaSliderFormField():
        return $default(
            _that.selectedValue,
            _that.values,
            _that.labelGetter,
            _that.descriptionGetter,
            _that.minDescription,
            _that.maxDescription);
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
    TResult? Function(
            ValueNotifier<T> selectedValue,
            List<T> values,
            Formatter<T>? labelGetter,
            Formatter<T> descriptionGetter,
            String? minDescription,
            String? maxDescription)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaSliderFormField() when $default != null:
        return $default(
            _that.selectedValue,
            _that.values,
            _that.labelGetter,
            _that.descriptionGetter,
            _that.minDescription,
            _that.maxDescription);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SupernovaSliderFormField<T extends Object>
    extends SupernovaSliderFormField<T> {
  const _SupernovaSliderFormField(this.selectedValue,
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

  /// Create a copy of SupernovaSliderFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupernovaSliderFormFieldCopyWith<T, _SupernovaSliderFormField<T>>
      get copyWith => __$SupernovaSliderFormFieldCopyWithImpl<T,
          _SupernovaSliderFormField<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupernovaSliderFormField<T> &&
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

  @override
  String toString() {
    return 'SupernovaSliderFormField<$T>(selectedValue: $selectedValue, values: $values, labelGetter: $labelGetter, descriptionGetter: $descriptionGetter, minDescription: $minDescription, maxDescription: $maxDescription)';
  }
}

/// @nodoc
abstract mixin class _$SupernovaSliderFormFieldCopyWith<T extends Object, $Res>
    implements $SupernovaSliderFormFieldCopyWith<T, $Res> {
  factory _$SupernovaSliderFormFieldCopyWith(_SupernovaSliderFormField<T> value,
          $Res Function(_SupernovaSliderFormField<T>) _then) =
      __$SupernovaSliderFormFieldCopyWithImpl;
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
class __$SupernovaSliderFormFieldCopyWithImpl<T extends Object, $Res>
    implements _$SupernovaSliderFormFieldCopyWith<T, $Res> {
  __$SupernovaSliderFormFieldCopyWithImpl(this._self, this._then);

  final _SupernovaSliderFormField<T> _self;
  final $Res Function(_SupernovaSliderFormField<T>) _then;

  /// Create a copy of SupernovaSliderFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedValue = null,
    Object? values = null,
    Object? labelGetter = freezed,
    Object? descriptionGetter = null,
    Object? minDescription = freezed,
    Object? maxDescription = freezed,
  }) {
    return _then(_SupernovaSliderFormField<T>(
      null == selectedValue
          ? _self.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<T>,
      values: null == values
          ? _self._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
      labelGetter: freezed == labelGetter
          ? _self.labelGetter
          : labelGetter // ignore: cast_nullable_to_non_nullable
              as Formatter<T>?,
      descriptionGetter: null == descriptionGetter
          ? _self.descriptionGetter
          : descriptionGetter // ignore: cast_nullable_to_non_nullable
              as Formatter<T>,
      minDescription: freezed == minDescription
          ? _self.minDescription
          : minDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      maxDescription: freezed == maxDescription
          ? _self.maxDescription
          : maxDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

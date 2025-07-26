// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaNumberFormField {
  ValueNotifier<int?> get currentValue;
  ({int max, Mapper<String, String> tooLargeErrorFormatter})? get max;
  TextInputAction get textInputAction;
  String? get hintText;

  /// Create a copy of SupernovaNumberFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaNumberFormFieldCopyWith<SupernovaNumberFormField> get copyWith =>
      _$SupernovaNumberFormFieldCopyWithImpl<SupernovaNumberFormField>(
          this as SupernovaNumberFormField, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaNumberFormField &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentValue, max, textInputAction, hintText);

  @override
  String toString() {
    return 'SupernovaNumberFormField(currentValue: $currentValue, max: $max, textInputAction: $textInputAction, hintText: $hintText)';
  }
}

/// @nodoc
abstract mixin class $SupernovaNumberFormFieldCopyWith<$Res> {
  factory $SupernovaNumberFormFieldCopyWith(SupernovaNumberFormField value,
          $Res Function(SupernovaNumberFormField) _then) =
      _$SupernovaNumberFormFieldCopyWithImpl;
  @useResult
  $Res call(
      {ValueNotifier<int?> currentValue,
      ({int max, Mapper<String, String> tooLargeErrorFormatter})? max,
      TextInputAction textInputAction,
      String? hintText});
}

/// @nodoc
class _$SupernovaNumberFormFieldCopyWithImpl<$Res>
    implements $SupernovaNumberFormFieldCopyWith<$Res> {
  _$SupernovaNumberFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaNumberFormField _self;
  final $Res Function(SupernovaNumberFormField) _then;

  /// Create a copy of SupernovaNumberFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? max = freezed,
    Object? textInputAction = null,
    Object? hintText = freezed,
  }) {
    return _then(_self.copyWith(
      currentValue: null == currentValue
          ? _self.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<int?>,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as ({int max, Mapper<String, String> tooLargeErrorFormatter})?,
      textInputAction: null == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupernovaNumberFormField].
extension SupernovaNumberFormFieldPatterns on SupernovaNumberFormField {
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
    TResult Function(_SingleLineSupernovaNumberFormField value)? amount,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaNumberFormField() when amount != null:
        return amount(_that);
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
    required TResult Function(_SingleLineSupernovaNumberFormField value) amount,
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaNumberFormField():
        return amount(_that);
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
    TResult? Function(_SingleLineSupernovaNumberFormField value)? amount,
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaNumberFormField() when amount != null:
        return amount(_that);
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
    TResult Function(
            ValueNotifier<int?> currentValue,
            ({int max, Mapper<String, String> tooLargeErrorFormatter})? max,
            TextInputAction textInputAction,
            String? hintText)?
        amount,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaNumberFormField() when amount != null:
        return amount(_that.currentValue, _that.max, _that.textInputAction,
            _that.hintText);
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
    required TResult Function(
            ValueNotifier<int?> currentValue,
            ({int max, Mapper<String, String> tooLargeErrorFormatter})? max,
            TextInputAction textInputAction,
            String? hintText)
        amount,
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaNumberFormField():
        return amount(_that.currentValue, _that.max, _that.textInputAction,
            _that.hintText);
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
    TResult? Function(
            ValueNotifier<int?> currentValue,
            ({int max, Mapper<String, String> tooLargeErrorFormatter})? max,
            TextInputAction textInputAction,
            String? hintText)?
        amount,
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaNumberFormField() when amount != null:
        return amount(_that.currentValue, _that.max, _that.textInputAction,
            _that.hintText);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SingleLineSupernovaNumberFormField extends SupernovaNumberFormField {
  const _SingleLineSupernovaNumberFormField(this.currentValue,
      {this.max, required this.textInputAction, this.hintText})
      : super._();

  @override
  final ValueNotifier<int?> currentValue;
  @override
  final ({int max, Mapper<String, String> tooLargeErrorFormatter})? max;
  @override
  final TextInputAction textInputAction;
  @override
  final String? hintText;

  /// Create a copy of SupernovaNumberFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SingleLineSupernovaNumberFormFieldCopyWith<
          _SingleLineSupernovaNumberFormField>
      get copyWith => __$SingleLineSupernovaNumberFormFieldCopyWithImpl<
          _SingleLineSupernovaNumberFormField>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleLineSupernovaNumberFormField &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentValue, max, textInputAction, hintText);

  @override
  String toString() {
    return 'SupernovaNumberFormField.amount(currentValue: $currentValue, max: $max, textInputAction: $textInputAction, hintText: $hintText)';
  }
}

/// @nodoc
abstract mixin class _$SingleLineSupernovaNumberFormFieldCopyWith<$Res>
    implements $SupernovaNumberFormFieldCopyWith<$Res> {
  factory _$SingleLineSupernovaNumberFormFieldCopyWith(
          _SingleLineSupernovaNumberFormField value,
          $Res Function(_SingleLineSupernovaNumberFormField) _then) =
      __$SingleLineSupernovaNumberFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ValueNotifier<int?> currentValue,
      ({int max, Mapper<String, String> tooLargeErrorFormatter})? max,
      TextInputAction textInputAction,
      String? hintText});
}

/// @nodoc
class __$SingleLineSupernovaNumberFormFieldCopyWithImpl<$Res>
    implements _$SingleLineSupernovaNumberFormFieldCopyWith<$Res> {
  __$SingleLineSupernovaNumberFormFieldCopyWithImpl(this._self, this._then);

  final _SingleLineSupernovaNumberFormField _self;
  final $Res Function(_SingleLineSupernovaNumberFormField) _then;

  /// Create a copy of SupernovaNumberFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentValue = null,
    Object? max = freezed,
    Object? textInputAction = null,
    Object? hintText = freezed,
  }) {
    return _then(_SingleLineSupernovaNumberFormField(
      null == currentValue
          ? _self.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<int?>,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as ({int max, Mapper<String, String> tooLargeErrorFormatter})?,
      textInputAction: null == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'required_checkbox.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaRequiredCheckboxFormField {
  ValueNotifier<bool> get currentValue;
  String get message;
  EdgeInsets? get contentPadding;
  TextStyle? get textStyle;

  /// Create a copy of SupernovaRequiredCheckboxFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaRequiredCheckboxFormFieldCopyWith<
          SupernovaRequiredCheckboxFormField>
      get copyWith => _$SupernovaRequiredCheckboxFormFieldCopyWithImpl<
              SupernovaRequiredCheckboxFormField>(
          this as SupernovaRequiredCheckboxFormField, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaRequiredCheckboxFormField &&
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

  @override
  String toString() {
    return 'SupernovaRequiredCheckboxFormField(currentValue: $currentValue, message: $message, contentPadding: $contentPadding, textStyle: $textStyle)';
  }
}

/// @nodoc
abstract mixin class $SupernovaRequiredCheckboxFormFieldCopyWith<$Res> {
  factory $SupernovaRequiredCheckboxFormFieldCopyWith(
          SupernovaRequiredCheckboxFormField value,
          $Res Function(SupernovaRequiredCheckboxFormField) _then) =
      _$SupernovaRequiredCheckboxFormFieldCopyWithImpl;
  @useResult
  $Res call(
      {ValueNotifier<bool> currentValue,
      String message,
      EdgeInsets? contentPadding,
      TextStyle? textStyle});
}

/// @nodoc
class _$SupernovaRequiredCheckboxFormFieldCopyWithImpl<$Res>
    implements $SupernovaRequiredCheckboxFormFieldCopyWith<$Res> {
  _$SupernovaRequiredCheckboxFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaRequiredCheckboxFormField _self;
  final $Res Function(SupernovaRequiredCheckboxFormField) _then;

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
    return _then(_self.copyWith(
      currentValue: null == currentValue
          ? _self.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<bool>,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      textStyle: freezed == textStyle
          ? _self.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupernovaRequiredCheckboxFormField].
extension SupernovaRequiredCheckboxFormFieldPatterns
    on SupernovaRequiredCheckboxFormField {
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
    TResult Function(_SupernovaRequiredCheckboxFormField value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaRequiredCheckboxFormField() when $default != null:
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
    TResult Function(_SupernovaRequiredCheckboxFormField value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaRequiredCheckboxFormField():
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
    TResult? Function(_SupernovaRequiredCheckboxFormField value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaRequiredCheckboxFormField() when $default != null:
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
    TResult Function(ValueNotifier<bool> currentValue, String message,
            EdgeInsets? contentPadding, TextStyle? textStyle)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaRequiredCheckboxFormField() when $default != null:
        return $default(_that.currentValue, _that.message, _that.contentPadding,
            _that.textStyle);
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
    TResult Function(ValueNotifier<bool> currentValue, String message,
            EdgeInsets? contentPadding, TextStyle? textStyle)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaRequiredCheckboxFormField():
        return $default(_that.currentValue, _that.message, _that.contentPadding,
            _that.textStyle);
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
    TResult? Function(ValueNotifier<bool> currentValue, String message,
            EdgeInsets? contentPadding, TextStyle? textStyle)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaRequiredCheckboxFormField() when $default != null:
        return $default(_that.currentValue, _that.message, _that.contentPadding,
            _that.textStyle);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SupernovaRequiredCheckboxFormField
    extends SupernovaRequiredCheckboxFormField {
  const _SupernovaRequiredCheckboxFormField(this.currentValue,
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

  /// Create a copy of SupernovaRequiredCheckboxFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupernovaRequiredCheckboxFormFieldCopyWith<
          _SupernovaRequiredCheckboxFormField>
      get copyWith => __$SupernovaRequiredCheckboxFormFieldCopyWithImpl<
          _SupernovaRequiredCheckboxFormField>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupernovaRequiredCheckboxFormField &&
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

  @override
  String toString() {
    return 'SupernovaRequiredCheckboxFormField(currentValue: $currentValue, message: $message, contentPadding: $contentPadding, textStyle: $textStyle)';
  }
}

/// @nodoc
abstract mixin class _$SupernovaRequiredCheckboxFormFieldCopyWith<$Res>
    implements $SupernovaRequiredCheckboxFormFieldCopyWith<$Res> {
  factory _$SupernovaRequiredCheckboxFormFieldCopyWith(
          _SupernovaRequiredCheckboxFormField value,
          $Res Function(_SupernovaRequiredCheckboxFormField) _then) =
      __$SupernovaRequiredCheckboxFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ValueNotifier<bool> currentValue,
      String message,
      EdgeInsets? contentPadding,
      TextStyle? textStyle});
}

/// @nodoc
class __$SupernovaRequiredCheckboxFormFieldCopyWithImpl<$Res>
    implements _$SupernovaRequiredCheckboxFormFieldCopyWith<$Res> {
  __$SupernovaRequiredCheckboxFormFieldCopyWithImpl(this._self, this._then);

  final _SupernovaRequiredCheckboxFormField _self;
  final $Res Function(_SupernovaRequiredCheckboxFormField) _then;

  /// Create a copy of SupernovaRequiredCheckboxFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentValue = null,
    Object? message = null,
    Object? contentPadding = freezed,
    Object? textStyle = freezed,
  }) {
    return _then(_SupernovaRequiredCheckboxFormField(
      null == currentValue
          ? _self.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<bool>,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      contentPadding: freezed == contentPadding
          ? _self.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      textStyle: freezed == textStyle
          ? _self.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

// dart format on

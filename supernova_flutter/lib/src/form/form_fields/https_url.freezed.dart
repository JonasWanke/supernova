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
mixin _$SupernovaHttpsUrlFormField {
  ValueNotifier<HttpsUrl?> get currentValue;
  TextInputAction get textInputAction;
  String? get hintText;

  /// Create a copy of SupernovaHttpsUrlFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaHttpsUrlFormFieldCopyWith<SupernovaHttpsUrlFormField>
      get copyWith =>
          _$SupernovaHttpsUrlFormFieldCopyWithImpl<SupernovaHttpsUrlFormField>(
              this as SupernovaHttpsUrlFormField, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaHttpsUrlFormField &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentValue, textInputAction, hintText);

  @override
  String toString() {
    return 'SupernovaHttpsUrlFormField(currentValue: $currentValue, textInputAction: $textInputAction, hintText: $hintText)';
  }
}

/// @nodoc
abstract mixin class $SupernovaHttpsUrlFormFieldCopyWith<$Res> {
  factory $SupernovaHttpsUrlFormFieldCopyWith(SupernovaHttpsUrlFormField value,
          $Res Function(SupernovaHttpsUrlFormField) _then) =
      _$SupernovaHttpsUrlFormFieldCopyWithImpl;
  @useResult
  $Res call(
      {ValueNotifier<HttpsUrl?> currentValue,
      TextInputAction textInputAction,
      String? hintText});
}

/// @nodoc
class _$SupernovaHttpsUrlFormFieldCopyWithImpl<$Res>
    implements $SupernovaHttpsUrlFormFieldCopyWith<$Res> {
  _$SupernovaHttpsUrlFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaHttpsUrlFormField _self;
  final $Res Function(SupernovaHttpsUrlFormField) _then;

  /// Create a copy of SupernovaHttpsUrlFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? textInputAction = null,
    Object? hintText = freezed,
  }) {
    return _then(_self.copyWith(
      currentValue: null == currentValue
          ? _self.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<HttpsUrl?>,
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

/// Adds pattern-matching-related methods to [SupernovaHttpsUrlFormField].
extension SupernovaHttpsUrlFormFieldPatterns on SupernovaHttpsUrlFormField {
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
    TResult Function(_SingleLineSupernovaHttpsUrlFormField value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaHttpsUrlFormField() when $default != null:
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
    TResult Function(_SingleLineSupernovaHttpsUrlFormField value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaHttpsUrlFormField():
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
    TResult? Function(_SingleLineSupernovaHttpsUrlFormField value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaHttpsUrlFormField() when $default != null:
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
    TResult Function(ValueNotifier<HttpsUrl?> currentValue,
            TextInputAction textInputAction, String? hintText)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaHttpsUrlFormField() when $default != null:
        return $default(
            _that.currentValue, _that.textInputAction, _that.hintText);
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
    TResult Function(ValueNotifier<HttpsUrl?> currentValue,
            TextInputAction textInputAction, String? hintText)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaHttpsUrlFormField():
        return $default(
            _that.currentValue, _that.textInputAction, _that.hintText);
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
    TResult? Function(ValueNotifier<HttpsUrl?> currentValue,
            TextInputAction textInputAction, String? hintText)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaHttpsUrlFormField() when $default != null:
        return $default(
            _that.currentValue, _that.textInputAction, _that.hintText);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SingleLineSupernovaHttpsUrlFormField extends SupernovaHttpsUrlFormField {
  const _SingleLineSupernovaHttpsUrlFormField(this.currentValue,
      {required this.textInputAction, this.hintText})
      : super._();

  @override
  final ValueNotifier<HttpsUrl?> currentValue;
  @override
  final TextInputAction textInputAction;
  @override
  final String? hintText;

  /// Create a copy of SupernovaHttpsUrlFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SingleLineSupernovaHttpsUrlFormFieldCopyWith<
          _SingleLineSupernovaHttpsUrlFormField>
      get copyWith => __$SingleLineSupernovaHttpsUrlFormFieldCopyWithImpl<
          _SingleLineSupernovaHttpsUrlFormField>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleLineSupernovaHttpsUrlFormField &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentValue, textInputAction, hintText);

  @override
  String toString() {
    return 'SupernovaHttpsUrlFormField(currentValue: $currentValue, textInputAction: $textInputAction, hintText: $hintText)';
  }
}

/// @nodoc
abstract mixin class _$SingleLineSupernovaHttpsUrlFormFieldCopyWith<$Res>
    implements $SupernovaHttpsUrlFormFieldCopyWith<$Res> {
  factory _$SingleLineSupernovaHttpsUrlFormFieldCopyWith(
          _SingleLineSupernovaHttpsUrlFormField value,
          $Res Function(_SingleLineSupernovaHttpsUrlFormField) _then) =
      __$SingleLineSupernovaHttpsUrlFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ValueNotifier<HttpsUrl?> currentValue,
      TextInputAction textInputAction,
      String? hintText});
}

/// @nodoc
class __$SingleLineSupernovaHttpsUrlFormFieldCopyWithImpl<$Res>
    implements _$SingleLineSupernovaHttpsUrlFormFieldCopyWith<$Res> {
  __$SingleLineSupernovaHttpsUrlFormFieldCopyWithImpl(this._self, this._then);

  final _SingleLineSupernovaHttpsUrlFormField _self;
  final $Res Function(_SingleLineSupernovaHttpsUrlFormField) _then;

  /// Create a copy of SupernovaHttpsUrlFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentValue = null,
    Object? textInputAction = null,
    Object? hintText = freezed,
  }) {
    return _then(_SingleLineSupernovaHttpsUrlFormField(
      null == currentValue
          ? _self.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<HttpsUrl?>,
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

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaTextFormField {
  TextEditingController get controller;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaTextFormFieldCopyWith<SupernovaTextFormField> get copyWith =>
      _$SupernovaTextFormFieldCopyWithImpl<SupernovaTextFormField>(
          this as SupernovaTextFormField, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaTextFormField &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @override
  String toString() {
    return 'SupernovaTextFormField(controller: $controller)';
  }
}

/// @nodoc
abstract mixin class $SupernovaTextFormFieldCopyWith<$Res> {
  factory $SupernovaTextFormFieldCopyWith(SupernovaTextFormField value,
          $Res Function(SupernovaTextFormField) _then) =
      _$SupernovaTextFormFieldCopyWithImpl;
  @useResult
  $Res call({TextEditingController controller});
}

/// @nodoc
class _$SupernovaTextFormFieldCopyWithImpl<$Res>
    implements $SupernovaTextFormFieldCopyWith<$Res> {
  _$SupernovaTextFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaTextFormField _self;
  final $Res Function(SupernovaTextFormField) _then;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_self.copyWith(
      controller: null == controller
          ? _self.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupernovaTextFormField].
extension SupernovaTextFormFieldPatterns on SupernovaTextFormField {
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
    TResult Function(_SingleLineSupernovaTextFormField value)? singleLine,
    TResult Function(_MultiLineSupernovaTextFormField value)? multiLine,
    TResult Function(_EmailAddressSupernovaTextFormField value)? emailAddress,
    TResult Function(_PasswordSupernovaTextFormField value)? password,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaTextFormField() when singleLine != null:
        return singleLine(_that);
      case _MultiLineSupernovaTextFormField() when multiLine != null:
        return multiLine(_that);
      case _EmailAddressSupernovaTextFormField() when emailAddress != null:
        return emailAddress(_that);
      case _PasswordSupernovaTextFormField() when password != null:
        return password(_that);
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
    required TResult Function(_SingleLineSupernovaTextFormField value)
        singleLine,
    required TResult Function(_MultiLineSupernovaTextFormField value) multiLine,
    required TResult Function(_EmailAddressSupernovaTextFormField value)
        emailAddress,
    required TResult Function(_PasswordSupernovaTextFormField value) password,
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaTextFormField():
        return singleLine(_that);
      case _MultiLineSupernovaTextFormField():
        return multiLine(_that);
      case _EmailAddressSupernovaTextFormField():
        return emailAddress(_that);
      case _PasswordSupernovaTextFormField():
        return password(_that);
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
    TResult? Function(_SingleLineSupernovaTextFormField value)? singleLine,
    TResult? Function(_MultiLineSupernovaTextFormField value)? multiLine,
    TResult? Function(_EmailAddressSupernovaTextFormField value)? emailAddress,
    TResult? Function(_PasswordSupernovaTextFormField value)? password,
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaTextFormField() when singleLine != null:
        return singleLine(_that);
      case _MultiLineSupernovaTextFormField() when multiLine != null:
        return multiLine(_that);
      case _EmailAddressSupernovaTextFormField() when emailAddress != null:
        return emailAddress(_that);
      case _PasswordSupernovaTextFormField() when password != null:
        return password(_that);
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
            TextEditingController controller,
            List<String>? autofillHints,
            TextInputType? keyboardType,
            List<TextInputFormatter>? inputFormatters,
            int? maxLength,
            TextCapitalization textCapitalization,
            SupernovaFormFieldValidator<String>? validator,
            TextInputAction textInputAction,
            String? hintText,
            FlatIcon? prefixIcon,
            Widget? suffixIcon)?
        singleLine,
    TResult Function(
            TextEditingController controller,
            List<String>? autofillHints,
            TextInputType? keyboardType,
            int? maxLength,
            SupernovaFormFieldValidator<String>? validator,
            String? hintText)?
        multiLine,
    TResult Function(
            TextEditingController controller, TextInputAction textInputAction)?
        emailAddress,
    TResult Function(
            TextEditingController controller,
            SupernovaPasswordFormFieldRole role,
            TextInputAction textInputAction)?
        password,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaTextFormField() when singleLine != null:
        return singleLine(
            _that.controller,
            _that.autofillHints,
            _that.keyboardType,
            _that.inputFormatters,
            _that.maxLength,
            _that.textCapitalization,
            _that.validator,
            _that.textInputAction,
            _that.hintText,
            _that.prefixIcon,
            _that.suffixIcon);
      case _MultiLineSupernovaTextFormField() when multiLine != null:
        return multiLine(
            _that.controller,
            _that.autofillHints,
            _that.keyboardType,
            _that.maxLength,
            _that.validator,
            _that.hintText);
      case _EmailAddressSupernovaTextFormField() when emailAddress != null:
        return emailAddress(_that.controller, _that.textInputAction);
      case _PasswordSupernovaTextFormField() when password != null:
        return password(_that.controller, _that.role, _that.textInputAction);
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
            TextEditingController controller,
            List<String>? autofillHints,
            TextInputType? keyboardType,
            List<TextInputFormatter>? inputFormatters,
            int? maxLength,
            TextCapitalization textCapitalization,
            SupernovaFormFieldValidator<String>? validator,
            TextInputAction textInputAction,
            String? hintText,
            FlatIcon? prefixIcon,
            Widget? suffixIcon)
        singleLine,
    required TResult Function(
            TextEditingController controller,
            List<String>? autofillHints,
            TextInputType? keyboardType,
            int? maxLength,
            SupernovaFormFieldValidator<String>? validator,
            String? hintText)
        multiLine,
    required TResult Function(
            TextEditingController controller, TextInputAction textInputAction)
        emailAddress,
    required TResult Function(
            TextEditingController controller,
            SupernovaPasswordFormFieldRole role,
            TextInputAction textInputAction)
        password,
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaTextFormField():
        return singleLine(
            _that.controller,
            _that.autofillHints,
            _that.keyboardType,
            _that.inputFormatters,
            _that.maxLength,
            _that.textCapitalization,
            _that.validator,
            _that.textInputAction,
            _that.hintText,
            _that.prefixIcon,
            _that.suffixIcon);
      case _MultiLineSupernovaTextFormField():
        return multiLine(
            _that.controller,
            _that.autofillHints,
            _that.keyboardType,
            _that.maxLength,
            _that.validator,
            _that.hintText);
      case _EmailAddressSupernovaTextFormField():
        return emailAddress(_that.controller, _that.textInputAction);
      case _PasswordSupernovaTextFormField():
        return password(_that.controller, _that.role, _that.textInputAction);
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
            TextEditingController controller,
            List<String>? autofillHints,
            TextInputType? keyboardType,
            List<TextInputFormatter>? inputFormatters,
            int? maxLength,
            TextCapitalization textCapitalization,
            SupernovaFormFieldValidator<String>? validator,
            TextInputAction textInputAction,
            String? hintText,
            FlatIcon? prefixIcon,
            Widget? suffixIcon)?
        singleLine,
    TResult? Function(
            TextEditingController controller,
            List<String>? autofillHints,
            TextInputType? keyboardType,
            int? maxLength,
            SupernovaFormFieldValidator<String>? validator,
            String? hintText)?
        multiLine,
    TResult? Function(
            TextEditingController controller, TextInputAction textInputAction)?
        emailAddress,
    TResult? Function(
            TextEditingController controller,
            SupernovaPasswordFormFieldRole role,
            TextInputAction textInputAction)?
        password,
  }) {
    final _that = this;
    switch (_that) {
      case _SingleLineSupernovaTextFormField() when singleLine != null:
        return singleLine(
            _that.controller,
            _that.autofillHints,
            _that.keyboardType,
            _that.inputFormatters,
            _that.maxLength,
            _that.textCapitalization,
            _that.validator,
            _that.textInputAction,
            _that.hintText,
            _that.prefixIcon,
            _that.suffixIcon);
      case _MultiLineSupernovaTextFormField() when multiLine != null:
        return multiLine(
            _that.controller,
            _that.autofillHints,
            _that.keyboardType,
            _that.maxLength,
            _that.validator,
            _that.hintText);
      case _EmailAddressSupernovaTextFormField() when emailAddress != null:
        return emailAddress(_that.controller, _that.textInputAction);
      case _PasswordSupernovaTextFormField() when password != null:
        return password(_that.controller, _that.role, _that.textInputAction);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SingleLineSupernovaTextFormField extends SupernovaTextFormField {
  const _SingleLineSupernovaTextFormField(this.controller,
      {required final List<String>? autofillHints,
      this.keyboardType,
      final List<TextInputFormatter>? inputFormatters,
      this.maxLength,
      this.textCapitalization = TextCapitalization.sentences,
      this.validator,
      required this.textInputAction,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon})
      : _autofillHints = autofillHints,
        _inputFormatters = inputFormatters,
        super._();

  @override
  final TextEditingController controller;
  final List<String>? _autofillHints;
  List<String>? get autofillHints {
    final value = _autofillHints;
    if (value == null) return null;
    if (_autofillHints is EqualUnmodifiableListView) return _autofillHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final TextInputType? keyboardType;
  final List<TextInputFormatter>? _inputFormatters;
  List<TextInputFormatter>? get inputFormatters {
    final value = _inputFormatters;
    if (value == null) return null;
    if (_inputFormatters is EqualUnmodifiableListView) return _inputFormatters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final int? maxLength;
  @JsonKey()
  final TextCapitalization textCapitalization;
  final SupernovaFormFieldValidator<String>? validator;
  final TextInputAction textInputAction;
  final String? hintText;
  final FlatIcon? prefixIcon;
  final Widget? suffixIcon;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SingleLineSupernovaTextFormFieldCopyWith<_SingleLineSupernovaTextFormField>
      get copyWith => __$SingleLineSupernovaTextFormFieldCopyWithImpl<
          _SingleLineSupernovaTextFormField>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleLineSupernovaTextFormField &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            const DeepCollectionEquality()
                .equals(other._autofillHints, _autofillHints) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            const DeepCollectionEquality()
                .equals(other._inputFormatters, _inputFormatters) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.textCapitalization, textCapitalization) ||
                other.textCapitalization == textCapitalization) &&
            (identical(other.validator, validator) ||
                other.validator == validator) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.prefixIcon, prefixIcon) ||
                other.prefixIcon == prefixIcon) &&
            (identical(other.suffixIcon, suffixIcon) ||
                other.suffixIcon == suffixIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      controller,
      const DeepCollectionEquality().hash(_autofillHints),
      keyboardType,
      const DeepCollectionEquality().hash(_inputFormatters),
      maxLength,
      textCapitalization,
      validator,
      textInputAction,
      hintText,
      prefixIcon,
      suffixIcon);

  @override
  String toString() {
    return 'SupernovaTextFormField.singleLine(controller: $controller, autofillHints: $autofillHints, keyboardType: $keyboardType, inputFormatters: $inputFormatters, maxLength: $maxLength, textCapitalization: $textCapitalization, validator: $validator, textInputAction: $textInputAction, hintText: $hintText, prefixIcon: $prefixIcon, suffixIcon: $suffixIcon)';
  }
}

/// @nodoc
abstract mixin class _$SingleLineSupernovaTextFormFieldCopyWith<$Res>
    implements $SupernovaTextFormFieldCopyWith<$Res> {
  factory _$SingleLineSupernovaTextFormFieldCopyWith(
          _SingleLineSupernovaTextFormField value,
          $Res Function(_SingleLineSupernovaTextFormField) _then) =
      __$SingleLineSupernovaTextFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TextEditingController controller,
      List<String>? autofillHints,
      TextInputType? keyboardType,
      List<TextInputFormatter>? inputFormatters,
      int? maxLength,
      TextCapitalization textCapitalization,
      SupernovaFormFieldValidator<String>? validator,
      TextInputAction textInputAction,
      String? hintText,
      FlatIcon? prefixIcon,
      Widget? suffixIcon});
}

/// @nodoc
class __$SingleLineSupernovaTextFormFieldCopyWithImpl<$Res>
    implements _$SingleLineSupernovaTextFormFieldCopyWith<$Res> {
  __$SingleLineSupernovaTextFormFieldCopyWithImpl(this._self, this._then);

  final _SingleLineSupernovaTextFormField _self;
  final $Res Function(_SingleLineSupernovaTextFormField) _then;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? controller = null,
    Object? autofillHints = freezed,
    Object? keyboardType = freezed,
    Object? inputFormatters = freezed,
    Object? maxLength = freezed,
    Object? textCapitalization = null,
    Object? validator = freezed,
    Object? textInputAction = null,
    Object? hintText = freezed,
    Object? prefixIcon = freezed,
    Object? suffixIcon = freezed,
  }) {
    return _then(_SingleLineSupernovaTextFormField(
      null == controller
          ? _self.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      autofillHints: freezed == autofillHints
          ? _self._autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      inputFormatters: freezed == inputFormatters
          ? _self._inputFormatters
          : inputFormatters // ignore: cast_nullable_to_non_nullable
              as List<TextInputFormatter>?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      textCapitalization: null == textCapitalization
          ? _self.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization,
      validator: freezed == validator
          ? _self.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldValidator<String>?,
      textInputAction: null == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      prefixIcon: freezed == prefixIcon
          ? _self.prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as FlatIcon?,
      suffixIcon: freezed == suffixIcon
          ? _self.suffixIcon
          : suffixIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _MultiLineSupernovaTextFormField extends SupernovaTextFormField {
  const _MultiLineSupernovaTextFormField(this.controller,
      {required final List<String>? autofillHints,
      this.keyboardType,
      this.maxLength,
      this.validator,
      this.hintText})
      : _autofillHints = autofillHints,
        super._();

  @override
  final TextEditingController controller;
  final List<String>? _autofillHints;
  List<String>? get autofillHints {
    final value = _autofillHints;
    if (value == null) return null;
    if (_autofillHints is EqualUnmodifiableListView) return _autofillHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final TextInputType? keyboardType;
  final int? maxLength;
  final SupernovaFormFieldValidator<String>? validator;
  final String? hintText;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultiLineSupernovaTextFormFieldCopyWith<_MultiLineSupernovaTextFormField>
      get copyWith => __$MultiLineSupernovaTextFormFieldCopyWithImpl<
          _MultiLineSupernovaTextFormField>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultiLineSupernovaTextFormField &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            const DeepCollectionEquality()
                .equals(other._autofillHints, _autofillHints) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.validator, validator) ||
                other.validator == validator) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      controller,
      const DeepCollectionEquality().hash(_autofillHints),
      keyboardType,
      maxLength,
      validator,
      hintText);

  @override
  String toString() {
    return 'SupernovaTextFormField.multiLine(controller: $controller, autofillHints: $autofillHints, keyboardType: $keyboardType, maxLength: $maxLength, validator: $validator, hintText: $hintText)';
  }
}

/// @nodoc
abstract mixin class _$MultiLineSupernovaTextFormFieldCopyWith<$Res>
    implements $SupernovaTextFormFieldCopyWith<$Res> {
  factory _$MultiLineSupernovaTextFormFieldCopyWith(
          _MultiLineSupernovaTextFormField value,
          $Res Function(_MultiLineSupernovaTextFormField) _then) =
      __$MultiLineSupernovaTextFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TextEditingController controller,
      List<String>? autofillHints,
      TextInputType? keyboardType,
      int? maxLength,
      SupernovaFormFieldValidator<String>? validator,
      String? hintText});
}

/// @nodoc
class __$MultiLineSupernovaTextFormFieldCopyWithImpl<$Res>
    implements _$MultiLineSupernovaTextFormFieldCopyWith<$Res> {
  __$MultiLineSupernovaTextFormFieldCopyWithImpl(this._self, this._then);

  final _MultiLineSupernovaTextFormField _self;
  final $Res Function(_MultiLineSupernovaTextFormField) _then;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? controller = null,
    Object? autofillHints = freezed,
    Object? keyboardType = freezed,
    Object? maxLength = freezed,
    Object? validator = freezed,
    Object? hintText = freezed,
  }) {
    return _then(_MultiLineSupernovaTextFormField(
      null == controller
          ? _self.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      autofillHints: freezed == autofillHints
          ? _self._autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      validator: freezed == validator
          ? _self.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldValidator<String>?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _EmailAddressSupernovaTextFormField extends SupernovaTextFormField {
  const _EmailAddressSupernovaTextFormField(this.controller,
      {required this.textInputAction})
      : super._();

  @override
  final TextEditingController controller;
  final TextInputAction textInputAction;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmailAddressSupernovaTextFormFieldCopyWith<
          _EmailAddressSupernovaTextFormField>
      get copyWith => __$EmailAddressSupernovaTextFormFieldCopyWithImpl<
          _EmailAddressSupernovaTextFormField>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailAddressSupernovaTextFormField &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, textInputAction);

  @override
  String toString() {
    return 'SupernovaTextFormField.emailAddress(controller: $controller, textInputAction: $textInputAction)';
  }
}

/// @nodoc
abstract mixin class _$EmailAddressSupernovaTextFormFieldCopyWith<$Res>
    implements $SupernovaTextFormFieldCopyWith<$Res> {
  factory _$EmailAddressSupernovaTextFormFieldCopyWith(
          _EmailAddressSupernovaTextFormField value,
          $Res Function(_EmailAddressSupernovaTextFormField) _then) =
      __$EmailAddressSupernovaTextFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TextEditingController controller, TextInputAction textInputAction});
}

/// @nodoc
class __$EmailAddressSupernovaTextFormFieldCopyWithImpl<$Res>
    implements _$EmailAddressSupernovaTextFormFieldCopyWith<$Res> {
  __$EmailAddressSupernovaTextFormFieldCopyWithImpl(this._self, this._then);

  final _EmailAddressSupernovaTextFormField _self;
  final $Res Function(_EmailAddressSupernovaTextFormField) _then;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? controller = null,
    Object? textInputAction = null,
  }) {
    return _then(_EmailAddressSupernovaTextFormField(
      null == controller
          ? _self.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      textInputAction: null == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction,
    ));
  }
}

/// @nodoc

class _PasswordSupernovaTextFormField extends SupernovaTextFormField {
  const _PasswordSupernovaTextFormField(this.controller,
      {required this.role, required this.textInputAction})
      : super._();

  @override
  final TextEditingController controller;
  final SupernovaPasswordFormFieldRole role;
  final TextInputAction textInputAction;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PasswordSupernovaTextFormFieldCopyWith<_PasswordSupernovaTextFormField>
      get copyWith => __$PasswordSupernovaTextFormFieldCopyWithImpl<
          _PasswordSupernovaTextFormField>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordSupernovaTextFormField &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, controller, role, textInputAction);

  @override
  String toString() {
    return 'SupernovaTextFormField.password(controller: $controller, role: $role, textInputAction: $textInputAction)';
  }
}

/// @nodoc
abstract mixin class _$PasswordSupernovaTextFormFieldCopyWith<$Res>
    implements $SupernovaTextFormFieldCopyWith<$Res> {
  factory _$PasswordSupernovaTextFormFieldCopyWith(
          _PasswordSupernovaTextFormField value,
          $Res Function(_PasswordSupernovaTextFormField) _then) =
      __$PasswordSupernovaTextFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TextEditingController controller,
      SupernovaPasswordFormFieldRole role,
      TextInputAction textInputAction});
}

/// @nodoc
class __$PasswordSupernovaTextFormFieldCopyWithImpl<$Res>
    implements _$PasswordSupernovaTextFormFieldCopyWith<$Res> {
  __$PasswordSupernovaTextFormFieldCopyWithImpl(this._self, this._then);

  final _PasswordSupernovaTextFormField _self;
  final $Res Function(_PasswordSupernovaTextFormField) _then;

  /// Create a copy of SupernovaTextFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? controller = null,
    Object? role = null,
    Object? textInputAction = null,
  }) {
    return _then(_PasswordSupernovaTextFormField(
      null == controller
          ? _self.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as SupernovaPasswordFormFieldRole,
      textInputAction: null == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction,
    ));
  }
}

// dart format on

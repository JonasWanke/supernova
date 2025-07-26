// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaFormFieldData implements DiagnosticableTreeMixin {
  FocusNode get focusNode;
  String? get labelText;
  String? get helpText;
  SupernovaFormFieldNecessity get necessity;

  /// Create a copy of SupernovaFormFieldData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaFormFieldDataCopyWith<SupernovaFormFieldData> get copyWith =>
      _$SupernovaFormFieldDataCopyWithImpl<SupernovaFormFieldData>(
          this as SupernovaFormFieldData, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SupernovaFormFieldData'))
      ..add(DiagnosticsProperty('focusNode', focusNode))
      ..add(DiagnosticsProperty('labelText', labelText))
      ..add(DiagnosticsProperty('helpText', helpText))
      ..add(DiagnosticsProperty('necessity', necessity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaFormFieldData &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helpText, helpText) ||
                other.helpText == helpText) &&
            (identical(other.necessity, necessity) ||
                other.necessity == necessity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, focusNode, labelText, helpText, necessity);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupernovaFormFieldData(focusNode: $focusNode, labelText: $labelText, helpText: $helpText, necessity: $necessity)';
  }
}

/// @nodoc
abstract mixin class $SupernovaFormFieldDataCopyWith<$Res> {
  factory $SupernovaFormFieldDataCopyWith(SupernovaFormFieldData value,
          $Res Function(SupernovaFormFieldData) _then) =
      _$SupernovaFormFieldDataCopyWithImpl;
  @useResult
  $Res call(
      {FocusNode focusNode,
      String? labelText,
      String? helpText,
      SupernovaFormFieldNecessity necessity});

  $SupernovaFormFieldNecessityCopyWith<$Res> get necessity;
}

/// @nodoc
class _$SupernovaFormFieldDataCopyWithImpl<$Res>
    implements $SupernovaFormFieldDataCopyWith<$Res> {
  _$SupernovaFormFieldDataCopyWithImpl(this._self, this._then);

  final SupernovaFormFieldData _self;
  final $Res Function(SupernovaFormFieldData) _then;

  /// Create a copy of SupernovaFormFieldData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusNode = null,
    Object? labelText = freezed,
    Object? helpText = freezed,
    Object? necessity = null,
  }) {
    return _then(_self.copyWith(
      focusNode: null == focusNode
          ? _self.focusNode
          : focusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helpText: freezed == helpText
          ? _self.helpText
          : helpText // ignore: cast_nullable_to_non_nullable
              as String?,
      necessity: null == necessity
          ? _self.necessity
          : necessity // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldNecessity,
    ));
  }

  /// Create a copy of SupernovaFormFieldData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupernovaFormFieldNecessityCopyWith<$Res> get necessity {
    return $SupernovaFormFieldNecessityCopyWith<$Res>(_self.necessity, (value) {
      return _then(_self.copyWith(necessity: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SupernovaFormFieldData].
extension SupernovaFormFieldDataPatterns on SupernovaFormFieldData {
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
    TResult Function(_SupernovaFormFieldData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaFormFieldData() when $default != null:
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
    TResult Function(_SupernovaFormFieldData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaFormFieldData():
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
    TResult? Function(_SupernovaFormFieldData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaFormFieldData() when $default != null:
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
    TResult Function(FocusNode focusNode, String? labelText, String? helpText,
            SupernovaFormFieldNecessity necessity)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaFormFieldData() when $default != null:
        return $default(
            _that.focusNode, _that.labelText, _that.helpText, _that.necessity);
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
    TResult Function(FocusNode focusNode, String? labelText, String? helpText,
            SupernovaFormFieldNecessity necessity)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaFormFieldData():
        return $default(
            _that.focusNode, _that.labelText, _that.helpText, _that.necessity);
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
    TResult? Function(FocusNode focusNode, String? labelText, String? helpText,
            SupernovaFormFieldNecessity necessity)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaFormFieldData() when $default != null:
        return $default(
            _that.focusNode, _that.labelText, _that.helpText, _that.necessity);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SupernovaFormFieldData
    with DiagnosticableTreeMixin
    implements SupernovaFormFieldData {
  const _SupernovaFormFieldData(
      {required this.focusNode,
      this.labelText,
      this.helpText,
      required this.necessity});

  @override
  final FocusNode focusNode;
  @override
  final String? labelText;
  @override
  final String? helpText;
  @override
  final SupernovaFormFieldNecessity necessity;

  /// Create a copy of SupernovaFormFieldData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupernovaFormFieldDataCopyWith<_SupernovaFormFieldData> get copyWith =>
      __$SupernovaFormFieldDataCopyWithImpl<_SupernovaFormFieldData>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SupernovaFormFieldData'))
      ..add(DiagnosticsProperty('focusNode', focusNode))
      ..add(DiagnosticsProperty('labelText', labelText))
      ..add(DiagnosticsProperty('helpText', helpText))
      ..add(DiagnosticsProperty('necessity', necessity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupernovaFormFieldData &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helpText, helpText) ||
                other.helpText == helpText) &&
            (identical(other.necessity, necessity) ||
                other.necessity == necessity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, focusNode, labelText, helpText, necessity);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupernovaFormFieldData(focusNode: $focusNode, labelText: $labelText, helpText: $helpText, necessity: $necessity)';
  }
}

/// @nodoc
abstract mixin class _$SupernovaFormFieldDataCopyWith<$Res>
    implements $SupernovaFormFieldDataCopyWith<$Res> {
  factory _$SupernovaFormFieldDataCopyWith(_SupernovaFormFieldData value,
          $Res Function(_SupernovaFormFieldData) _then) =
      __$SupernovaFormFieldDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FocusNode focusNode,
      String? labelText,
      String? helpText,
      SupernovaFormFieldNecessity necessity});

  @override
  $SupernovaFormFieldNecessityCopyWith<$Res> get necessity;
}

/// @nodoc
class __$SupernovaFormFieldDataCopyWithImpl<$Res>
    implements _$SupernovaFormFieldDataCopyWith<$Res> {
  __$SupernovaFormFieldDataCopyWithImpl(this._self, this._then);

  final _SupernovaFormFieldData _self;
  final $Res Function(_SupernovaFormFieldData) _then;

  /// Create a copy of SupernovaFormFieldData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? focusNode = null,
    Object? labelText = freezed,
    Object? helpText = freezed,
    Object? necessity = null,
  }) {
    return _then(_SupernovaFormFieldData(
      focusNode: null == focusNode
          ? _self.focusNode
          : focusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      labelText: freezed == labelText
          ? _self.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helpText: freezed == helpText
          ? _self.helpText
          : helpText // ignore: cast_nullable_to_non_nullable
              as String?,
      necessity: null == necessity
          ? _self.necessity
          : necessity // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldNecessity,
    ));
  }

  /// Create a copy of SupernovaFormFieldData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupernovaFormFieldNecessityCopyWith<$Res> get necessity {
    return $SupernovaFormFieldNecessityCopyWith<$Res>(_self.necessity, (value) {
      return _then(_self.copyWith(necessity: value));
    });
  }
}

/// @nodoc
mixin _$SupernovaFormFieldNecessity implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'SupernovaFormFieldNecessity'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaFormFieldNecessity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupernovaFormFieldNecessity()';
  }
}

/// @nodoc
class $SupernovaFormFieldNecessityCopyWith<$Res> {
  $SupernovaFormFieldNecessityCopyWith(SupernovaFormFieldNecessity _,
      $Res Function(SupernovaFormFieldNecessity) __);
}

/// Adds pattern-matching-related methods to [SupernovaFormFieldNecessity].
extension SupernovaFormFieldNecessityPatterns on SupernovaFormFieldNecessity {
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
    TResult Function(_OptionalSupernovaFormFieldNecessity value)? optional,
    TResult Function(_RequiredSupernovaFormFieldNecessity value)? required,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OptionalSupernovaFormFieldNecessity() when optional != null:
        return optional(_that);
      case _RequiredSupernovaFormFieldNecessity() when required != null:
        return required(_that);
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
    required TResult Function(_OptionalSupernovaFormFieldNecessity value)
        optional,
    required TResult Function(_RequiredSupernovaFormFieldNecessity value)
        required,
  }) {
    final _that = this;
    switch (_that) {
      case _OptionalSupernovaFormFieldNecessity():
        return optional(_that);
      case _RequiredSupernovaFormFieldNecessity():
        return required(_that);
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
    TResult? Function(_OptionalSupernovaFormFieldNecessity value)? optional,
    TResult? Function(_RequiredSupernovaFormFieldNecessity value)? required,
  }) {
    final _that = this;
    switch (_that) {
      case _OptionalSupernovaFormFieldNecessity() when optional != null:
        return optional(_that);
      case _RequiredSupernovaFormFieldNecessity() when required != null:
        return required(_that);
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
    TResult Function()? optional,
    TResult Function(String? text)? required,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OptionalSupernovaFormFieldNecessity() when optional != null:
        return optional();
      case _RequiredSupernovaFormFieldNecessity() when required != null:
        return required(_that.text);
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
    required TResult Function() optional,
    required TResult Function(String? text) required,
  }) {
    final _that = this;
    switch (_that) {
      case _OptionalSupernovaFormFieldNecessity():
        return optional();
      case _RequiredSupernovaFormFieldNecessity():
        return required(_that.text);
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
    TResult? Function()? optional,
    TResult? Function(String? text)? required,
  }) {
    final _that = this;
    switch (_that) {
      case _OptionalSupernovaFormFieldNecessity() when optional != null:
        return optional();
      case _RequiredSupernovaFormFieldNecessity() when required != null:
        return required(_that.text);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _OptionalSupernovaFormFieldNecessity extends SupernovaFormFieldNecessity
    with DiagnosticableTreeMixin {
  const _OptionalSupernovaFormFieldNecessity() : super._();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'SupernovaFormFieldNecessity.optional'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OptionalSupernovaFormFieldNecessity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupernovaFormFieldNecessity.optional()';
  }
}

/// @nodoc

class _RequiredSupernovaFormFieldNecessity extends SupernovaFormFieldNecessity
    with DiagnosticableTreeMixin {
  const _RequiredSupernovaFormFieldNecessity(this.text) : super._();

  final String? text;

  /// Create a copy of SupernovaFormFieldNecessity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RequiredSupernovaFormFieldNecessityCopyWith<
          _RequiredSupernovaFormFieldNecessity>
      get copyWith => __$RequiredSupernovaFormFieldNecessityCopyWithImpl<
          _RequiredSupernovaFormFieldNecessity>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SupernovaFormFieldNecessity.required'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequiredSupernovaFormFieldNecessity &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupernovaFormFieldNecessity.required(text: $text)';
  }
}

/// @nodoc
abstract mixin class _$RequiredSupernovaFormFieldNecessityCopyWith<$Res>
    implements $SupernovaFormFieldNecessityCopyWith<$Res> {
  factory _$RequiredSupernovaFormFieldNecessityCopyWith(
          _RequiredSupernovaFormFieldNecessity value,
          $Res Function(_RequiredSupernovaFormFieldNecessity) _then) =
      __$RequiredSupernovaFormFieldNecessityCopyWithImpl;
  @useResult
  $Res call({String? text});
}

/// @nodoc
class __$RequiredSupernovaFormFieldNecessityCopyWithImpl<$Res>
    implements _$RequiredSupernovaFormFieldNecessityCopyWith<$Res> {
  __$RequiredSupernovaFormFieldNecessityCopyWithImpl(this._self, this._then);

  final _RequiredSupernovaFormFieldNecessity _self;
  final $Res Function(_RequiredSupernovaFormFieldNecessity) _then;

  /// Create a copy of SupernovaFormFieldNecessity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_RequiredSupernovaFormFieldNecessity(
      freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

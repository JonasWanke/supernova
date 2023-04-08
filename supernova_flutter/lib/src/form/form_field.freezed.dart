// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SupernovaFormFieldData {
  FocusNode get focusNode => throw _privateConstructorUsedError;
  String? get labelText => throw _privateConstructorUsedError;
  String? get helpText => throw _privateConstructorUsedError;
  SupernovaFormFieldNecessity get necessity =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupernovaFormFieldDataCopyWith<SupernovaFormFieldData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupernovaFormFieldDataCopyWith<$Res> {
  factory $SupernovaFormFieldDataCopyWith(SupernovaFormFieldData value,
          $Res Function(SupernovaFormFieldData) then) =
      _$SupernovaFormFieldDataCopyWithImpl<$Res, SupernovaFormFieldData>;
  @useResult
  $Res call(
      {FocusNode focusNode,
      String? labelText,
      String? helpText,
      SupernovaFormFieldNecessity necessity});

  $SupernovaFormFieldNecessityCopyWith<$Res> get necessity;
}

/// @nodoc
class _$SupernovaFormFieldDataCopyWithImpl<$Res,
        $Val extends SupernovaFormFieldData>
    implements $SupernovaFormFieldDataCopyWith<$Res> {
  _$SupernovaFormFieldDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusNode = null,
    Object? labelText = freezed,
    Object? helpText = freezed,
    Object? necessity = null,
  }) {
    return _then(_value.copyWith(
      focusNode: null == focusNode
          ? _value.focusNode
          : focusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helpText: freezed == helpText
          ? _value.helpText
          : helpText // ignore: cast_nullable_to_non_nullable
              as String?,
      necessity: null == necessity
          ? _value.necessity
          : necessity // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldNecessity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupernovaFormFieldNecessityCopyWith<$Res> get necessity {
    return $SupernovaFormFieldNecessityCopyWith<$Res>(_value.necessity,
        (value) {
      return _then(_value.copyWith(necessity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SupernovaFormFieldDataCopyWith<$Res>
    implements $SupernovaFormFieldDataCopyWith<$Res> {
  factory _$$_SupernovaFormFieldDataCopyWith(_$_SupernovaFormFieldData value,
          $Res Function(_$_SupernovaFormFieldData) then) =
      __$$_SupernovaFormFieldDataCopyWithImpl<$Res>;
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
class __$$_SupernovaFormFieldDataCopyWithImpl<$Res>
    extends _$SupernovaFormFieldDataCopyWithImpl<$Res,
        _$_SupernovaFormFieldData>
    implements _$$_SupernovaFormFieldDataCopyWith<$Res> {
  __$$_SupernovaFormFieldDataCopyWithImpl(_$_SupernovaFormFieldData _value,
      $Res Function(_$_SupernovaFormFieldData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusNode = null,
    Object? labelText = freezed,
    Object? helpText = freezed,
    Object? necessity = null,
  }) {
    return _then(_$_SupernovaFormFieldData(
      focusNode: null == focusNode
          ? _value.focusNode
          : focusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helpText: freezed == helpText
          ? _value.helpText
          : helpText // ignore: cast_nullable_to_non_nullable
              as String?,
      necessity: null == necessity
          ? _value.necessity
          : necessity // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldNecessity,
    ));
  }
}

/// @nodoc

class _$_SupernovaFormFieldData
    with DiagnosticableTreeMixin
    implements _SupernovaFormFieldData {
  const _$_SupernovaFormFieldData(
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupernovaFormFieldData(focusNode: $focusNode, labelText: $labelText, helpText: $helpText, necessity: $necessity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SupernovaFormFieldData'))
      ..add(DiagnosticsProperty('focusNode', focusNode))
      ..add(DiagnosticsProperty('labelText', labelText))
      ..add(DiagnosticsProperty('helpText', helpText))
      ..add(DiagnosticsProperty('necessity', necessity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupernovaFormFieldData &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupernovaFormFieldDataCopyWith<_$_SupernovaFormFieldData> get copyWith =>
      __$$_SupernovaFormFieldDataCopyWithImpl<_$_SupernovaFormFieldData>(
          this, _$identity);
}

abstract class _SupernovaFormFieldData implements SupernovaFormFieldData {
  const factory _SupernovaFormFieldData(
          {required final FocusNode focusNode,
          final String? labelText,
          final String? helpText,
          required final SupernovaFormFieldNecessity necessity}) =
      _$_SupernovaFormFieldData;

  @override
  FocusNode get focusNode;
  @override
  String? get labelText;
  @override
  String? get helpText;
  @override
  SupernovaFormFieldNecessity get necessity;
  @override
  @JsonKey(ignore: true)
  _$$_SupernovaFormFieldDataCopyWith<_$_SupernovaFormFieldData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SupernovaFormFieldNecessity {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() optional,
    required TResult Function(String? text) required,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? optional,
    TResult? Function(String? text)? required,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? optional,
    TResult Function(String? text)? required,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OptionalSupernovaFormFieldNecessity value)
        optional,
    required TResult Function(_RequiredSupernovaFormFieldNecessity value)
        required,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OptionalSupernovaFormFieldNecessity value)? optional,
    TResult? Function(_RequiredSupernovaFormFieldNecessity value)? required,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OptionalSupernovaFormFieldNecessity value)? optional,
    TResult Function(_RequiredSupernovaFormFieldNecessity value)? required,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupernovaFormFieldNecessityCopyWith<$Res> {
  factory $SupernovaFormFieldNecessityCopyWith(
          SupernovaFormFieldNecessity value,
          $Res Function(SupernovaFormFieldNecessity) then) =
      _$SupernovaFormFieldNecessityCopyWithImpl<$Res,
          SupernovaFormFieldNecessity>;
}

/// @nodoc
class _$SupernovaFormFieldNecessityCopyWithImpl<$Res,
        $Val extends SupernovaFormFieldNecessity>
    implements $SupernovaFormFieldNecessityCopyWith<$Res> {
  _$SupernovaFormFieldNecessityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OptionalSupernovaFormFieldNecessityCopyWith<$Res> {
  factory _$$_OptionalSupernovaFormFieldNecessityCopyWith(
          _$_OptionalSupernovaFormFieldNecessity value,
          $Res Function(_$_OptionalSupernovaFormFieldNecessity) then) =
      __$$_OptionalSupernovaFormFieldNecessityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OptionalSupernovaFormFieldNecessityCopyWithImpl<$Res>
    extends _$SupernovaFormFieldNecessityCopyWithImpl<$Res,
        _$_OptionalSupernovaFormFieldNecessity>
    implements _$$_OptionalSupernovaFormFieldNecessityCopyWith<$Res> {
  __$$_OptionalSupernovaFormFieldNecessityCopyWithImpl(
      _$_OptionalSupernovaFormFieldNecessity _value,
      $Res Function(_$_OptionalSupernovaFormFieldNecessity) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OptionalSupernovaFormFieldNecessity
    extends _OptionalSupernovaFormFieldNecessity with DiagnosticableTreeMixin {
  const _$_OptionalSupernovaFormFieldNecessity() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupernovaFormFieldNecessity.optional()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SupernovaFormFieldNecessity.optional'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OptionalSupernovaFormFieldNecessity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() optional,
    required TResult Function(String? text) required,
  }) {
    return optional();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? optional,
    TResult? Function(String? text)? required,
  }) {
    return optional?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? optional,
    TResult Function(String? text)? required,
    required TResult orElse(),
  }) {
    if (optional != null) {
      return optional();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OptionalSupernovaFormFieldNecessity value)
        optional,
    required TResult Function(_RequiredSupernovaFormFieldNecessity value)
        required,
  }) {
    return optional(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OptionalSupernovaFormFieldNecessity value)? optional,
    TResult? Function(_RequiredSupernovaFormFieldNecessity value)? required,
  }) {
    return optional?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OptionalSupernovaFormFieldNecessity value)? optional,
    TResult Function(_RequiredSupernovaFormFieldNecessity value)? required,
    required TResult orElse(),
  }) {
    if (optional != null) {
      return optional(this);
    }
    return orElse();
  }
}

abstract class _OptionalSupernovaFormFieldNecessity
    extends SupernovaFormFieldNecessity {
  const factory _OptionalSupernovaFormFieldNecessity() =
      _$_OptionalSupernovaFormFieldNecessity;
  const _OptionalSupernovaFormFieldNecessity._() : super._();
}

/// @nodoc
abstract class _$$_RequiredSupernovaFormFieldNecessityCopyWith<$Res> {
  factory _$$_RequiredSupernovaFormFieldNecessityCopyWith(
          _$_RequiredSupernovaFormFieldNecessity value,
          $Res Function(_$_RequiredSupernovaFormFieldNecessity) then) =
      __$$_RequiredSupernovaFormFieldNecessityCopyWithImpl<$Res>;
  @useResult
  $Res call({String? text});
}

/// @nodoc
class __$$_RequiredSupernovaFormFieldNecessityCopyWithImpl<$Res>
    extends _$SupernovaFormFieldNecessityCopyWithImpl<$Res,
        _$_RequiredSupernovaFormFieldNecessity>
    implements _$$_RequiredSupernovaFormFieldNecessityCopyWith<$Res> {
  __$$_RequiredSupernovaFormFieldNecessityCopyWithImpl(
      _$_RequiredSupernovaFormFieldNecessity _value,
      $Res Function(_$_RequiredSupernovaFormFieldNecessity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_RequiredSupernovaFormFieldNecessity(
      freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RequiredSupernovaFormFieldNecessity
    extends _RequiredSupernovaFormFieldNecessity with DiagnosticableTreeMixin {
  const _$_RequiredSupernovaFormFieldNecessity(this.text) : super._();

  @override
  final String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupernovaFormFieldNecessity.required(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SupernovaFormFieldNecessity.required'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequiredSupernovaFormFieldNecessity &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequiredSupernovaFormFieldNecessityCopyWith<
          _$_RequiredSupernovaFormFieldNecessity>
      get copyWith => __$$_RequiredSupernovaFormFieldNecessityCopyWithImpl<
          _$_RequiredSupernovaFormFieldNecessity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() optional,
    required TResult Function(String? text) required,
  }) {
    return required(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? optional,
    TResult? Function(String? text)? required,
  }) {
    return required?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? optional,
    TResult Function(String? text)? required,
    required TResult orElse(),
  }) {
    if (required != null) {
      return required(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OptionalSupernovaFormFieldNecessity value)
        optional,
    required TResult Function(_RequiredSupernovaFormFieldNecessity value)
        required,
  }) {
    return required(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OptionalSupernovaFormFieldNecessity value)? optional,
    TResult? Function(_RequiredSupernovaFormFieldNecessity value)? required,
  }) {
    return required?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OptionalSupernovaFormFieldNecessity value)? optional,
    TResult Function(_RequiredSupernovaFormFieldNecessity value)? required,
    required TResult orElse(),
  }) {
    if (required != null) {
      return required(this);
    }
    return orElse();
  }
}

abstract class _RequiredSupernovaFormFieldNecessity
    extends SupernovaFormFieldNecessity {
  const factory _RequiredSupernovaFormFieldNecessity(final String? text) =
      _$_RequiredSupernovaFormFieldNecessity;
  const _RequiredSupernovaFormFieldNecessity._() : super._();

  String? get text;
  @JsonKey(ignore: true)
  _$$_RequiredSupernovaFormFieldNecessityCopyWith<
          _$_RequiredSupernovaFormFieldNecessity>
      get copyWith => throw _privateConstructorUsedError;
}

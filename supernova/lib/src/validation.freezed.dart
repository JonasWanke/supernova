// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidationError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldName, List<ValidationError> errors)
        field,
    required TResult Function(int index, List<ValidationError> errors) listItem,
    required TResult Function(dynamic item, List<ValidationError> errors)
        setItem,
    required TResult Function(dynamic key, List<ValidationError> errors) mapKey,
    required TResult Function(dynamic key, List<ValidationError> errors)
        mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldName, List<ValidationError> errors)? field,
    TResult? Function(int index, List<ValidationError> errors)? listItem,
    TResult? Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldName, List<ValidationError> errors)? field,
    TResult Function(int index, List<ValidationError> errors)? listItem,
    TResult Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) then) =
      _$ValidationErrorCopyWithImpl<$Res, ValidationError>;
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res, $Val extends ValidationError>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FieldValidationErrorCopyWith<$Res> {
  factory _$$FieldValidationErrorCopyWith(_$FieldValidationError value,
          $Res Function(_$FieldValidationError) then) =
      __$$FieldValidationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String fieldName, List<ValidationError> errors});
}

/// @nodoc
class __$$FieldValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$FieldValidationError>
    implements _$$FieldValidationErrorCopyWith<$Res> {
  __$$FieldValidationErrorCopyWithImpl(_$FieldValidationError _value,
      $Res Function(_$FieldValidationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = null,
    Object? errors = null,
  }) {
    return _then(_$FieldValidationError(
      null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>,
    ));
  }
}

/// @nodoc

class _$FieldValidationError extends FieldValidationError {
  const _$FieldValidationError(
      this.fieldName, final List<ValidationError> errors)
      : _errors = errors,
        super._();

  @override
  final String fieldName;
  final List<ValidationError> _errors;
  @override
  List<ValidationError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldValidationError &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fieldName, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldValidationErrorCopyWith<_$FieldValidationError> get copyWith =>
      __$$FieldValidationErrorCopyWithImpl<_$FieldValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldName, List<ValidationError> errors)
        field,
    required TResult Function(int index, List<ValidationError> errors) listItem,
    required TResult Function(dynamic item, List<ValidationError> errors)
        setItem,
    required TResult Function(dynamic key, List<ValidationError> errors) mapKey,
    required TResult Function(dynamic key, List<ValidationError> errors)
        mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) {
    return field(fieldName, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldName, List<ValidationError> errors)? field,
    TResult? Function(int index, List<ValidationError> errors)? listItem,
    TResult? Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) {
    return field?.call(fieldName, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldName, List<ValidationError> errors)? field,
    TResult Function(int index, List<ValidationError> errors)? listItem,
    TResult Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) {
    if (field != null) {
      return field(fieldName, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) {
    return field(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) {
    return field?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) {
    if (field != null) {
      return field(this);
    }
    return orElse();
  }
}

abstract class FieldValidationError extends ValidationError {
  const factory FieldValidationError(
          final String fieldName, final List<ValidationError> errors) =
      _$FieldValidationError;
  const FieldValidationError._() : super._();

  String get fieldName;
  List<ValidationError> get errors;
  @JsonKey(ignore: true)
  _$$FieldValidationErrorCopyWith<_$FieldValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListItemValidationErrorCopyWith<$Res> {
  factory _$$ListItemValidationErrorCopyWith(_$ListItemValidationError value,
          $Res Function(_$ListItemValidationError) then) =
      __$$ListItemValidationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, List<ValidationError> errors});
}

/// @nodoc
class __$$ListItemValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$ListItemValidationError>
    implements _$$ListItemValidationErrorCopyWith<$Res> {
  __$$ListItemValidationErrorCopyWithImpl(_$ListItemValidationError _value,
      $Res Function(_$ListItemValidationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? errors = null,
  }) {
    return _then(_$ListItemValidationError(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>,
    ));
  }
}

/// @nodoc

class _$ListItemValidationError extends ListItemValidationError {
  const _$ListItemValidationError(
      this.index, final List<ValidationError> errors)
      : _errors = errors,
        super._();

  @override
  final int index;
  final List<ValidationError> _errors;
  @override
  List<ValidationError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListItemValidationError &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListItemValidationErrorCopyWith<_$ListItemValidationError> get copyWith =>
      __$$ListItemValidationErrorCopyWithImpl<_$ListItemValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldName, List<ValidationError> errors)
        field,
    required TResult Function(int index, List<ValidationError> errors) listItem,
    required TResult Function(dynamic item, List<ValidationError> errors)
        setItem,
    required TResult Function(dynamic key, List<ValidationError> errors) mapKey,
    required TResult Function(dynamic key, List<ValidationError> errors)
        mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) {
    return listItem(index, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldName, List<ValidationError> errors)? field,
    TResult? Function(int index, List<ValidationError> errors)? listItem,
    TResult? Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) {
    return listItem?.call(index, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldName, List<ValidationError> errors)? field,
    TResult Function(int index, List<ValidationError> errors)? listItem,
    TResult Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) {
    if (listItem != null) {
      return listItem(index, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) {
    return listItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) {
    return listItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) {
    if (listItem != null) {
      return listItem(this);
    }
    return orElse();
  }
}

abstract class ListItemValidationError extends ValidationError {
  const factory ListItemValidationError(
          final int index, final List<ValidationError> errors) =
      _$ListItemValidationError;
  const ListItemValidationError._() : super._();

  int get index;
  List<ValidationError> get errors;
  @JsonKey(ignore: true)
  _$$ListItemValidationErrorCopyWith<_$ListItemValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetItemValidationErrorCopyWith<$Res> {
  factory _$$SetItemValidationErrorCopyWith(_$SetItemValidationError value,
          $Res Function(_$SetItemValidationError) then) =
      __$$SetItemValidationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic item, List<ValidationError> errors});
}

/// @nodoc
class __$$SetItemValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$SetItemValidationError>
    implements _$$SetItemValidationErrorCopyWith<$Res> {
  __$$SetItemValidationErrorCopyWithImpl(_$SetItemValidationError _value,
      $Res Function(_$SetItemValidationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? errors = null,
  }) {
    return _then(_$SetItemValidationError(
      freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>,
    ));
  }
}

/// @nodoc

class _$SetItemValidationError extends SetItemValidationError {
  const _$SetItemValidationError(this.item, final List<ValidationError> errors)
      : _errors = errors,
        super._();

  @override
  final dynamic item;
  final List<ValidationError> _errors;
  @override
  List<ValidationError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetItemValidationError &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetItemValidationErrorCopyWith<_$SetItemValidationError> get copyWith =>
      __$$SetItemValidationErrorCopyWithImpl<_$SetItemValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldName, List<ValidationError> errors)
        field,
    required TResult Function(int index, List<ValidationError> errors) listItem,
    required TResult Function(dynamic item, List<ValidationError> errors)
        setItem,
    required TResult Function(dynamic key, List<ValidationError> errors) mapKey,
    required TResult Function(dynamic key, List<ValidationError> errors)
        mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) {
    return setItem(item, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldName, List<ValidationError> errors)? field,
    TResult? Function(int index, List<ValidationError> errors)? listItem,
    TResult? Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) {
    return setItem?.call(item, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldName, List<ValidationError> errors)? field,
    TResult Function(int index, List<ValidationError> errors)? listItem,
    TResult Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) {
    if (setItem != null) {
      return setItem(item, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) {
    return setItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) {
    return setItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) {
    if (setItem != null) {
      return setItem(this);
    }
    return orElse();
  }
}

abstract class SetItemValidationError extends ValidationError {
  const factory SetItemValidationError(
          final dynamic item, final List<ValidationError> errors) =
      _$SetItemValidationError;
  const SetItemValidationError._() : super._();

  dynamic get item;
  List<ValidationError> get errors;
  @JsonKey(ignore: true)
  _$$SetItemValidationErrorCopyWith<_$SetItemValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapKeyValidationErrorCopyWith<$Res> {
  factory _$$MapKeyValidationErrorCopyWith(_$MapKeyValidationError value,
          $Res Function(_$MapKeyValidationError) then) =
      __$$MapKeyValidationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic key, List<ValidationError> errors});
}

/// @nodoc
class __$$MapKeyValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$MapKeyValidationError>
    implements _$$MapKeyValidationErrorCopyWith<$Res> {
  __$$MapKeyValidationErrorCopyWithImpl(_$MapKeyValidationError _value,
      $Res Function(_$MapKeyValidationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? errors = null,
  }) {
    return _then(_$MapKeyValidationError(
      freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>,
    ));
  }
}

/// @nodoc

class _$MapKeyValidationError extends MapKeyValidationError {
  const _$MapKeyValidationError(this.key, final List<ValidationError> errors)
      : _errors = errors,
        super._();

  @override
  final dynamic key;
  final List<ValidationError> _errors;
  @override
  List<ValidationError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapKeyValidationError &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapKeyValidationErrorCopyWith<_$MapKeyValidationError> get copyWith =>
      __$$MapKeyValidationErrorCopyWithImpl<_$MapKeyValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldName, List<ValidationError> errors)
        field,
    required TResult Function(int index, List<ValidationError> errors) listItem,
    required TResult Function(dynamic item, List<ValidationError> errors)
        setItem,
    required TResult Function(dynamic key, List<ValidationError> errors) mapKey,
    required TResult Function(dynamic key, List<ValidationError> errors)
        mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) {
    return mapKey(key, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldName, List<ValidationError> errors)? field,
    TResult? Function(int index, List<ValidationError> errors)? listItem,
    TResult? Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) {
    return mapKey?.call(key, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldName, List<ValidationError> errors)? field,
    TResult Function(int index, List<ValidationError> errors)? listItem,
    TResult Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) {
    if (mapKey != null) {
      return mapKey(key, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) {
    return mapKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) {
    return mapKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) {
    if (mapKey != null) {
      return mapKey(this);
    }
    return orElse();
  }
}

abstract class MapKeyValidationError extends ValidationError {
  const factory MapKeyValidationError(
          final dynamic key, final List<ValidationError> errors) =
      _$MapKeyValidationError;
  const MapKeyValidationError._() : super._();

  dynamic get key;
  List<ValidationError> get errors;
  @JsonKey(ignore: true)
  _$$MapKeyValidationErrorCopyWith<_$MapKeyValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapValueValidationErrorCopyWith<$Res> {
  factory _$$MapValueValidationErrorCopyWith(_$MapValueValidationError value,
          $Res Function(_$MapValueValidationError) then) =
      __$$MapValueValidationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic key, List<ValidationError> errors});
}

/// @nodoc
class __$$MapValueValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$MapValueValidationError>
    implements _$$MapValueValidationErrorCopyWith<$Res> {
  __$$MapValueValidationErrorCopyWithImpl(_$MapValueValidationError _value,
      $Res Function(_$MapValueValidationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? errors = null,
  }) {
    return _then(_$MapValueValidationError(
      freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ValidationError>,
    ));
  }
}

/// @nodoc

class _$MapValueValidationError extends MapValueValidationError {
  const _$MapValueValidationError(this.key, final List<ValidationError> errors)
      : _errors = errors,
        super._();

  @override
  final dynamic key;
  final List<ValidationError> _errors;
  @override
  List<ValidationError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapValueValidationError &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapValueValidationErrorCopyWith<_$MapValueValidationError> get copyWith =>
      __$$MapValueValidationErrorCopyWithImpl<_$MapValueValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldName, List<ValidationError> errors)
        field,
    required TResult Function(int index, List<ValidationError> errors) listItem,
    required TResult Function(dynamic item, List<ValidationError> errors)
        setItem,
    required TResult Function(dynamic key, List<ValidationError> errors) mapKey,
    required TResult Function(dynamic key, List<ValidationError> errors)
        mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) {
    return mapValue(key, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldName, List<ValidationError> errors)? field,
    TResult? Function(int index, List<ValidationError> errors)? listItem,
    TResult? Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) {
    return mapValue?.call(key, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldName, List<ValidationError> errors)? field,
    TResult Function(int index, List<ValidationError> errors)? listItem,
    TResult Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) {
    if (mapValue != null) {
      return mapValue(key, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) {
    return mapValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) {
    return mapValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) {
    if (mapValue != null) {
      return mapValue(this);
    }
    return orElse();
  }
}

abstract class MapValueValidationError extends ValidationError {
  const factory MapValueValidationError(
          final dynamic key, final List<ValidationError> errors) =
      _$MapValueValidationError;
  const MapValueValidationError._() : super._();

  dynamic get key;
  List<ValidationError> get errors;
  @JsonKey(ignore: true)
  _$$MapValueValidationErrorCopyWith<_$MapValueValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotEqualValidationErrorCopyWith<$Res> {
  factory _$$NotEqualValidationErrorCopyWith(_$NotEqualValidationError value,
          $Res Function(_$NotEqualValidationError) then) =
      __$$NotEqualValidationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic actual, dynamic expected});
}

/// @nodoc
class __$$NotEqualValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$NotEqualValidationError>
    implements _$$NotEqualValidationErrorCopyWith<$Res> {
  __$$NotEqualValidationErrorCopyWithImpl(_$NotEqualValidationError _value,
      $Res Function(_$NotEqualValidationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actual = freezed,
    Object? expected = freezed,
  }) {
    return _then(_$NotEqualValidationError(
      freezed == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == expected
          ? _value.expected
          : expected // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NotEqualValidationError extends NotEqualValidationError {
  const _$NotEqualValidationError(this.actual, this.expected) : super._();

  @override
  final dynamic actual;
  @override
  final dynamic expected;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotEqualValidationError &&
            const DeepCollectionEquality().equals(other.actual, actual) &&
            const DeepCollectionEquality().equals(other.expected, expected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(actual),
      const DeepCollectionEquality().hash(expected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotEqualValidationErrorCopyWith<_$NotEqualValidationError> get copyWith =>
      __$$NotEqualValidationErrorCopyWithImpl<_$NotEqualValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldName, List<ValidationError> errors)
        field,
    required TResult Function(int index, List<ValidationError> errors) listItem,
    required TResult Function(dynamic item, List<ValidationError> errors)
        setItem,
    required TResult Function(dynamic key, List<ValidationError> errors) mapKey,
    required TResult Function(dynamic key, List<ValidationError> errors)
        mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) {
    return notEqual(actual, expected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldName, List<ValidationError> errors)? field,
    TResult? Function(int index, List<ValidationError> errors)? listItem,
    TResult? Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) {
    return notEqual?.call(actual, expected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldName, List<ValidationError> errors)? field,
    TResult Function(int index, List<ValidationError> errors)? listItem,
    TResult Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) {
    if (notEqual != null) {
      return notEqual(actual, expected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) {
    return notEqual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) {
    return notEqual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) {
    if (notEqual != null) {
      return notEqual(this);
    }
    return orElse();
  }
}

abstract class NotEqualValidationError extends ValidationError {
  const factory NotEqualValidationError(
      final dynamic actual, final dynamic expected) = _$NotEqualValidationError;
  const NotEqualValidationError._() : super._();

  dynamic get actual;
  dynamic get expected;
  @JsonKey(ignore: true)
  _$$NotEqualValidationErrorCopyWith<_$NotEqualValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomValidationErrorCopyWith<$Res> {
  factory _$$CustomValidationErrorCopyWith(_$CustomValidationError value,
          $Res Function(_$CustomValidationError) then) =
      __$$CustomValidationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CustomValidationErrorCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$CustomValidationError>
    implements _$$CustomValidationErrorCopyWith<$Res> {
  __$$CustomValidationErrorCopyWithImpl(_$CustomValidationError _value,
      $Res Function(_$CustomValidationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CustomValidationError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomValidationError extends CustomValidationError {
  const _$CustomValidationError(this.message) : super._();

  @override
  final String message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomValidationError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomValidationErrorCopyWith<_$CustomValidationError> get copyWith =>
      __$$CustomValidationErrorCopyWithImpl<_$CustomValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldName, List<ValidationError> errors)
        field,
    required TResult Function(int index, List<ValidationError> errors) listItem,
    required TResult Function(dynamic item, List<ValidationError> errors)
        setItem,
    required TResult Function(dynamic key, List<ValidationError> errors) mapKey,
    required TResult Function(dynamic key, List<ValidationError> errors)
        mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) {
    return custom(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldName, List<ValidationError> errors)? field,
    TResult? Function(int index, List<ValidationError> errors)? listItem,
    TResult? Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult? Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) {
    return custom?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldName, List<ValidationError> errors)? field,
    TResult Function(int index, List<ValidationError> errors)? listItem,
    TResult Function(dynamic item, List<ValidationError> errors)? setItem,
    TResult Function(dynamic key, List<ValidationError> errors)? mapKey,
    TResult Function(dynamic key, List<ValidationError> errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CustomValidationError extends ValidationError {
  const factory CustomValidationError(final String message) =
      _$CustomValidationError;
  const CustomValidationError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$CustomValidationErrorCopyWith<_$CustomValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

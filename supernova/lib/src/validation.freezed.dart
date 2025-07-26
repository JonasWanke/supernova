// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationError {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ValidationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
class $ValidationErrorCopyWith<$Res> {
  $ValidationErrorCopyWith(
      ValidationError _, $Res Function(ValidationError) __);
}

/// Adds pattern-matching-related methods to [ValidationError].
extension ValidationErrorPatterns on ValidationError {
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
    TResult Function(FieldValidationError value)? field,
    TResult Function(ListItemValidationError value)? listItem,
    TResult Function(SetItemValidationError value)? setItem,
    TResult Function(MapKeyValidationError value)? mapKey,
    TResult Function(MapValueValidationError value)? mapValue,
    TResult Function(NotEqualValidationError value)? notEqual,
    TResult Function(CustomValidationError value)? custom,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FieldValidationError() when field != null:
        return field(_that);
      case ListItemValidationError() when listItem != null:
        return listItem(_that);
      case SetItemValidationError() when setItem != null:
        return setItem(_that);
      case MapKeyValidationError() when mapKey != null:
        return mapKey(_that);
      case MapValueValidationError() when mapValue != null:
        return mapValue(_that);
      case NotEqualValidationError() when notEqual != null:
        return notEqual(_that);
      case CustomValidationError() when custom != null:
        return custom(_that);
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
    required TResult Function(FieldValidationError value) field,
    required TResult Function(ListItemValidationError value) listItem,
    required TResult Function(SetItemValidationError value) setItem,
    required TResult Function(MapKeyValidationError value) mapKey,
    required TResult Function(MapValueValidationError value) mapValue,
    required TResult Function(NotEqualValidationError value) notEqual,
    required TResult Function(CustomValidationError value) custom,
  }) {
    final _that = this;
    switch (_that) {
      case FieldValidationError():
        return field(_that);
      case ListItemValidationError():
        return listItem(_that);
      case SetItemValidationError():
        return setItem(_that);
      case MapKeyValidationError():
        return mapKey(_that);
      case MapValueValidationError():
        return mapValue(_that);
      case NotEqualValidationError():
        return notEqual(_that);
      case CustomValidationError():
        return custom(_that);
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
    TResult? Function(FieldValidationError value)? field,
    TResult? Function(ListItemValidationError value)? listItem,
    TResult? Function(SetItemValidationError value)? setItem,
    TResult? Function(MapKeyValidationError value)? mapKey,
    TResult? Function(MapValueValidationError value)? mapValue,
    TResult? Function(NotEqualValidationError value)? notEqual,
    TResult? Function(CustomValidationError value)? custom,
  }) {
    final _that = this;
    switch (_that) {
      case FieldValidationError() when field != null:
        return field(_that);
      case ListItemValidationError() when listItem != null:
        return listItem(_that);
      case SetItemValidationError() when setItem != null:
        return setItem(_that);
      case MapKeyValidationError() when mapKey != null:
        return mapKey(_that);
      case MapValueValidationError() when mapValue != null:
        return mapValue(_that);
      case NotEqualValidationError() when notEqual != null:
        return notEqual(_that);
      case CustomValidationError() when custom != null:
        return custom(_that);
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
    TResult Function(String fieldName, ValidationErrors errors)? field,
    TResult Function(int index, ValidationErrors errors)? listItem,
    TResult Function(dynamic item, ValidationErrors errors)? setItem,
    TResult Function(dynamic key, ValidationErrors errors)? mapKey,
    TResult Function(dynamic key, ValidationErrors errors)? mapValue,
    TResult Function(dynamic actual, dynamic expected)? notEqual,
    TResult Function(String message)? custom,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FieldValidationError() when field != null:
        return field(_that.fieldName, _that.errors);
      case ListItemValidationError() when listItem != null:
        return listItem(_that.index, _that.errors);
      case SetItemValidationError() when setItem != null:
        return setItem(_that.item, _that.errors);
      case MapKeyValidationError() when mapKey != null:
        return mapKey(_that.key, _that.errors);
      case MapValueValidationError() when mapValue != null:
        return mapValue(_that.key, _that.errors);
      case NotEqualValidationError() when notEqual != null:
        return notEqual(_that.actual, _that.expected);
      case CustomValidationError() when custom != null:
        return custom(_that.message);
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
    required TResult Function(String fieldName, ValidationErrors errors) field,
    required TResult Function(int index, ValidationErrors errors) listItem,
    required TResult Function(dynamic item, ValidationErrors errors) setItem,
    required TResult Function(dynamic key, ValidationErrors errors) mapKey,
    required TResult Function(dynamic key, ValidationErrors errors) mapValue,
    required TResult Function(dynamic actual, dynamic expected) notEqual,
    required TResult Function(String message) custom,
  }) {
    final _that = this;
    switch (_that) {
      case FieldValidationError():
        return field(_that.fieldName, _that.errors);
      case ListItemValidationError():
        return listItem(_that.index, _that.errors);
      case SetItemValidationError():
        return setItem(_that.item, _that.errors);
      case MapKeyValidationError():
        return mapKey(_that.key, _that.errors);
      case MapValueValidationError():
        return mapValue(_that.key, _that.errors);
      case NotEqualValidationError():
        return notEqual(_that.actual, _that.expected);
      case CustomValidationError():
        return custom(_that.message);
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
    TResult? Function(String fieldName, ValidationErrors errors)? field,
    TResult? Function(int index, ValidationErrors errors)? listItem,
    TResult? Function(dynamic item, ValidationErrors errors)? setItem,
    TResult? Function(dynamic key, ValidationErrors errors)? mapKey,
    TResult? Function(dynamic key, ValidationErrors errors)? mapValue,
    TResult? Function(dynamic actual, dynamic expected)? notEqual,
    TResult? Function(String message)? custom,
  }) {
    final _that = this;
    switch (_that) {
      case FieldValidationError() when field != null:
        return field(_that.fieldName, _that.errors);
      case ListItemValidationError() when listItem != null:
        return listItem(_that.index, _that.errors);
      case SetItemValidationError() when setItem != null:
        return setItem(_that.item, _that.errors);
      case MapKeyValidationError() when mapKey != null:
        return mapKey(_that.key, _that.errors);
      case MapValueValidationError() when mapValue != null:
        return mapValue(_that.key, _that.errors);
      case NotEqualValidationError() when notEqual != null:
        return notEqual(_that.actual, _that.expected);
      case CustomValidationError() when custom != null:
        return custom(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class FieldValidationError extends ValidationError {
  const FieldValidationError(this.fieldName, final ValidationErrors errors)
      : _errors = errors,
        super._();

  final String fieldName;
  final ValidationErrors _errors;
  ValidationErrors get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FieldValidationErrorCopyWith<FieldValidationError> get copyWith =>
      _$FieldValidationErrorCopyWithImpl<FieldValidationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FieldValidationError &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fieldName, const DeepCollectionEquality().hash(_errors));
}

/// @nodoc
abstract mixin class $FieldValidationErrorCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory $FieldValidationErrorCopyWith(FieldValidationError value,
          $Res Function(FieldValidationError) _then) =
      _$FieldValidationErrorCopyWithImpl;
  @useResult
  $Res call({String fieldName, ValidationErrors errors});
}

/// @nodoc
class _$FieldValidationErrorCopyWithImpl<$Res>
    implements $FieldValidationErrorCopyWith<$Res> {
  _$FieldValidationErrorCopyWithImpl(this._self, this._then);

  final FieldValidationError _self;
  final $Res Function(FieldValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldName = null,
    Object? errors = null,
  }) {
    return _then(FieldValidationError(
      null == fieldName
          ? _self.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      null == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors,
    ));
  }
}

/// @nodoc

class ListItemValidationError extends ValidationError {
  const ListItemValidationError(this.index, final ValidationErrors errors)
      : _errors = errors,
        super._();

  final int index;
  final ValidationErrors _errors;
  ValidationErrors get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListItemValidationErrorCopyWith<ListItemValidationError> get copyWith =>
      _$ListItemValidationErrorCopyWithImpl<ListItemValidationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListItemValidationError &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_errors));
}

/// @nodoc
abstract mixin class $ListItemValidationErrorCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory $ListItemValidationErrorCopyWith(ListItemValidationError value,
          $Res Function(ListItemValidationError) _then) =
      _$ListItemValidationErrorCopyWithImpl;
  @useResult
  $Res call({int index, ValidationErrors errors});
}

/// @nodoc
class _$ListItemValidationErrorCopyWithImpl<$Res>
    implements $ListItemValidationErrorCopyWith<$Res> {
  _$ListItemValidationErrorCopyWithImpl(this._self, this._then);

  final ListItemValidationError _self;
  final $Res Function(ListItemValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
    Object? errors = null,
  }) {
    return _then(ListItemValidationError(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors,
    ));
  }
}

/// @nodoc

class SetItemValidationError extends ValidationError {
  const SetItemValidationError(this.item, final ValidationErrors errors)
      : _errors = errors,
        super._();

  final dynamic item;
  final ValidationErrors _errors;
  ValidationErrors get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SetItemValidationErrorCopyWith<SetItemValidationError> get copyWith =>
      _$SetItemValidationErrorCopyWithImpl<SetItemValidationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetItemValidationError &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(_errors));
}

/// @nodoc
abstract mixin class $SetItemValidationErrorCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory $SetItemValidationErrorCopyWith(SetItemValidationError value,
          $Res Function(SetItemValidationError) _then) =
      _$SetItemValidationErrorCopyWithImpl;
  @useResult
  $Res call({dynamic item, ValidationErrors errors});
}

/// @nodoc
class _$SetItemValidationErrorCopyWithImpl<$Res>
    implements $SetItemValidationErrorCopyWith<$Res> {
  _$SetItemValidationErrorCopyWithImpl(this._self, this._then);

  final SetItemValidationError _self;
  final $Res Function(SetItemValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? item = freezed,
    Object? errors = null,
  }) {
    return _then(SetItemValidationError(
      freezed == item
          ? _self.item
          : item // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors,
    ));
  }
}

/// @nodoc

class MapKeyValidationError extends ValidationError {
  const MapKeyValidationError(this.key, final ValidationErrors errors)
      : _errors = errors,
        super._();

  final dynamic key;
  final ValidationErrors _errors;
  ValidationErrors get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapKeyValidationErrorCopyWith<MapKeyValidationError> get copyWith =>
      _$MapKeyValidationErrorCopyWithImpl<MapKeyValidationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapKeyValidationError &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(_errors));
}

/// @nodoc
abstract mixin class $MapKeyValidationErrorCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory $MapKeyValidationErrorCopyWith(MapKeyValidationError value,
          $Res Function(MapKeyValidationError) _then) =
      _$MapKeyValidationErrorCopyWithImpl;
  @useResult
  $Res call({dynamic key, ValidationErrors errors});
}

/// @nodoc
class _$MapKeyValidationErrorCopyWithImpl<$Res>
    implements $MapKeyValidationErrorCopyWith<$Res> {
  _$MapKeyValidationErrorCopyWithImpl(this._self, this._then);

  final MapKeyValidationError _self;
  final $Res Function(MapKeyValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = freezed,
    Object? errors = null,
  }) {
    return _then(MapKeyValidationError(
      freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors,
    ));
  }
}

/// @nodoc

class MapValueValidationError extends ValidationError {
  const MapValueValidationError(this.key, final ValidationErrors errors)
      : _errors = errors,
        super._();

  final dynamic key;
  final ValidationErrors _errors;
  ValidationErrors get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapValueValidationErrorCopyWith<MapValueValidationError> get copyWith =>
      _$MapValueValidationErrorCopyWithImpl<MapValueValidationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapValueValidationError &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(_errors));
}

/// @nodoc
abstract mixin class $MapValueValidationErrorCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory $MapValueValidationErrorCopyWith(MapValueValidationError value,
          $Res Function(MapValueValidationError) _then) =
      _$MapValueValidationErrorCopyWithImpl;
  @useResult
  $Res call({dynamic key, ValidationErrors errors});
}

/// @nodoc
class _$MapValueValidationErrorCopyWithImpl<$Res>
    implements $MapValueValidationErrorCopyWith<$Res> {
  _$MapValueValidationErrorCopyWithImpl(this._self, this._then);

  final MapValueValidationError _self;
  final $Res Function(MapValueValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = freezed,
    Object? errors = null,
  }) {
    return _then(MapValueValidationError(
      freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors,
    ));
  }
}

/// @nodoc

class NotEqualValidationError extends ValidationError {
  const NotEqualValidationError(this.actual, this.expected) : super._();

  final dynamic actual;
  final dynamic expected;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotEqualValidationErrorCopyWith<NotEqualValidationError> get copyWith =>
      _$NotEqualValidationErrorCopyWithImpl<NotEqualValidationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotEqualValidationError &&
            const DeepCollectionEquality().equals(other.actual, actual) &&
            const DeepCollectionEquality().equals(other.expected, expected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(actual),
      const DeepCollectionEquality().hash(expected));
}

/// @nodoc
abstract mixin class $NotEqualValidationErrorCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory $NotEqualValidationErrorCopyWith(NotEqualValidationError value,
          $Res Function(NotEqualValidationError) _then) =
      _$NotEqualValidationErrorCopyWithImpl;
  @useResult
  $Res call({dynamic actual, dynamic expected});
}

/// @nodoc
class _$NotEqualValidationErrorCopyWithImpl<$Res>
    implements $NotEqualValidationErrorCopyWith<$Res> {
  _$NotEqualValidationErrorCopyWithImpl(this._self, this._then);

  final NotEqualValidationError _self;
  final $Res Function(NotEqualValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? actual = freezed,
    Object? expected = freezed,
  }) {
    return _then(NotEqualValidationError(
      freezed == actual
          ? _self.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == expected
          ? _self.expected
          : expected // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class CustomValidationError extends ValidationError {
  const CustomValidationError(this.message) : super._();

  final String message;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomValidationErrorCopyWith<CustomValidationError> get copyWith =>
      _$CustomValidationErrorCopyWithImpl<CustomValidationError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomValidationError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);
}

/// @nodoc
abstract mixin class $CustomValidationErrorCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory $CustomValidationErrorCopyWith(CustomValidationError value,
          $Res Function(CustomValidationError) _then) =
      _$CustomValidationErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CustomValidationErrorCopyWithImpl<$Res>
    implements $CustomValidationErrorCopyWith<$Res> {
  _$CustomValidationErrorCopyWithImpl(this._self, this._then);

  final CustomValidationError _self;
  final $Res Function(CustomValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CustomValidationError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

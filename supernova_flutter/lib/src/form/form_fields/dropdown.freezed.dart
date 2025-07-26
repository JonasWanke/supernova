// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaDropdownFormField<T extends Object> {
  ValueNotifier<T?> get selectedItem;
  List<DropdownMenuItem<T>> get items;

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaDropdownFormFieldCopyWith<T, SupernovaDropdownFormField<T>>
      get copyWith => _$SupernovaDropdownFormFieldCopyWithImpl<T,
              SupernovaDropdownFormField<T>>(
          this as SupernovaDropdownFormField<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaDropdownFormField<T> &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedItem, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'SupernovaDropdownFormField<$T>(selectedItem: $selectedItem, items: $items)';
  }
}

/// @nodoc
abstract mixin class $SupernovaDropdownFormFieldCopyWith<T extends Object,
    $Res> {
  factory $SupernovaDropdownFormFieldCopyWith(
          SupernovaDropdownFormField<T> value,
          $Res Function(SupernovaDropdownFormField<T>) _then) =
      _$SupernovaDropdownFormFieldCopyWithImpl;
  @useResult
  $Res call({ValueNotifier<T?> selectedItem, List<DropdownMenuItem<T>> items});
}

/// @nodoc
class _$SupernovaDropdownFormFieldCopyWithImpl<T extends Object, $Res>
    implements $SupernovaDropdownFormFieldCopyWith<T, $Res> {
  _$SupernovaDropdownFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaDropdownFormField<T> _self;
  final $Res Function(SupernovaDropdownFormField<T>) _then;

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      selectedItem: null == selectedItem
          ? _self.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<T?>,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<T>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupernovaDropdownFormField].
extension SupernovaDropdownFormFieldPatterns<T extends Object>
    on SupernovaDropdownFormField<T> {
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
    TResult Function(_SupernovaDropdownFormField<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaDropdownFormField() when $default != null:
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
    TResult Function(_SupernovaDropdownFormField<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaDropdownFormField():
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
    TResult? Function(_SupernovaDropdownFormField<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaDropdownFormField() when $default != null:
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
            ValueNotifier<T?> selectedItem, List<DropdownMenuItem<T>> items)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaDropdownFormField() when $default != null:
        return $default(_that.selectedItem, _that.items);
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
            ValueNotifier<T?> selectedItem, List<DropdownMenuItem<T>> items)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaDropdownFormField():
        return $default(_that.selectedItem, _that.items);
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
            ValueNotifier<T?> selectedItem, List<DropdownMenuItem<T>> items)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaDropdownFormField() when $default != null:
        return $default(_that.selectedItem, _that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SupernovaDropdownFormField<T extends Object>
    extends SupernovaDropdownFormField<T> {
  const _SupernovaDropdownFormField(this.selectedItem,
      {required final List<DropdownMenuItem<T>> items})
      : _items = items,
        super._();

  @override
  final ValueNotifier<T?> selectedItem;
  final List<DropdownMenuItem<T>> _items;
  @override
  List<DropdownMenuItem<T>> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupernovaDropdownFormFieldCopyWith<T, _SupernovaDropdownFormField<T>>
      get copyWith => __$SupernovaDropdownFormFieldCopyWithImpl<T,
          _SupernovaDropdownFormField<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupernovaDropdownFormField<T> &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedItem, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'SupernovaDropdownFormField<$T>(selectedItem: $selectedItem, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$SupernovaDropdownFormFieldCopyWith<T extends Object,
    $Res> implements $SupernovaDropdownFormFieldCopyWith<T, $Res> {
  factory _$SupernovaDropdownFormFieldCopyWith(
          _SupernovaDropdownFormField<T> value,
          $Res Function(_SupernovaDropdownFormField<T>) _then) =
      __$SupernovaDropdownFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call({ValueNotifier<T?> selectedItem, List<DropdownMenuItem<T>> items});
}

/// @nodoc
class __$SupernovaDropdownFormFieldCopyWithImpl<T extends Object, $Res>
    implements _$SupernovaDropdownFormFieldCopyWith<T, $Res> {
  __$SupernovaDropdownFormFieldCopyWithImpl(this._self, this._then);

  final _SupernovaDropdownFormField<T> _self;
  final $Res Function(_SupernovaDropdownFormField<T>) _then;

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedItem = null,
    Object? items = null,
  }) {
    return _then(_SupernovaDropdownFormField<T>(
      null == selectedItem
          ? _self.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<T?>,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<T>>,
    ));
  }
}

/// @nodoc
mixin _$ClearableDropdownSelection<T extends Object> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClearableDropdownSelection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return '_ClearableDropdownSelection<$T>()';
  }
}

/// @nodoc
class _$ClearableDropdownSelectionCopyWith<T extends Object, $Res> {
  _$ClearableDropdownSelectionCopyWith(_ClearableDropdownSelection<T> _,
      $Res Function(_ClearableDropdownSelection<T>) __);
}

/// Adds pattern-matching-related methods to [_ClearableDropdownSelection].
extension _ClearableDropdownSelectionPatterns<T extends Object>
    on _ClearableDropdownSelection<T> {
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
    TResult Function(_ValueClearableDropdownSelection<T> value)? value,
    TResult Function(_ClearClearableDropdownSelection<T> value)? clear,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValueClearableDropdownSelection() when value != null:
        return value(_that);
      case _ClearClearableDropdownSelection() when clear != null:
        return clear(_that);
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
    required TResult Function(_ValueClearableDropdownSelection<T> value) value,
    required TResult Function(_ClearClearableDropdownSelection<T> value) clear,
  }) {
    final _that = this;
    switch (_that) {
      case _ValueClearableDropdownSelection():
        return value(_that);
      case _ClearClearableDropdownSelection():
        return clear(_that);
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
    TResult? Function(_ValueClearableDropdownSelection<T> value)? value,
    TResult? Function(_ClearClearableDropdownSelection<T> value)? clear,
  }) {
    final _that = this;
    switch (_that) {
      case _ValueClearableDropdownSelection() when value != null:
        return value(_that);
      case _ClearClearableDropdownSelection() when clear != null:
        return clear(_that);
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
    TResult Function(T value)? value,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValueClearableDropdownSelection() when value != null:
        return value(_that.value);
      case _ClearClearableDropdownSelection() when clear != null:
        return clear();
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
    required TResult Function(T value) value,
    required TResult Function() clear,
  }) {
    final _that = this;
    switch (_that) {
      case _ValueClearableDropdownSelection():
        return value(_that.value);
      case _ClearClearableDropdownSelection():
        return clear();
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
    TResult? Function(T value)? value,
    TResult? Function()? clear,
  }) {
    final _that = this;
    switch (_that) {
      case _ValueClearableDropdownSelection() when value != null:
        return value(_that.value);
      case _ClearClearableDropdownSelection() when clear != null:
        return clear();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ValueClearableDropdownSelection<T extends Object>
    extends _ClearableDropdownSelection<T> {
  const _ValueClearableDropdownSelection(this.value) : super._();

  final T value;

  /// Create a copy of _ClearableDropdownSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValueClearableDropdownSelectionCopyWith<T,
          _ValueClearableDropdownSelection<T>>
      get copyWith => __$ValueClearableDropdownSelectionCopyWithImpl<T,
          _ValueClearableDropdownSelection<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValueClearableDropdownSelection<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return '_ClearableDropdownSelection<$T>.value(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ValueClearableDropdownSelectionCopyWith<T extends Object,
    $Res> implements _$ClearableDropdownSelectionCopyWith<T, $Res> {
  factory _$ValueClearableDropdownSelectionCopyWith(
          _ValueClearableDropdownSelection<T> value,
          $Res Function(_ValueClearableDropdownSelection<T>) _then) =
      __$ValueClearableDropdownSelectionCopyWithImpl;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$ValueClearableDropdownSelectionCopyWithImpl<T extends Object, $Res>
    implements _$ValueClearableDropdownSelectionCopyWith<T, $Res> {
  __$ValueClearableDropdownSelectionCopyWithImpl(this._self, this._then);

  final _ValueClearableDropdownSelection<T> _self;
  final $Res Function(_ValueClearableDropdownSelection<T>) _then;

  /// Create a copy of _ClearableDropdownSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ValueClearableDropdownSelection<T>(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _ClearClearableDropdownSelection<T extends Object>
    extends _ClearableDropdownSelection<T> {
  const _ClearClearableDropdownSelection() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClearClearableDropdownSelection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return '_ClearableDropdownSelection<$T>.clear()';
  }
}

// dart format on

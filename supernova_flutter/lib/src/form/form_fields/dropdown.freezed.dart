// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupernovaDropdownFormField<T extends Object> {
  ValueNotifier<T?> get selectedItem => throw _privateConstructorUsedError;
  List<DropdownMenuItem<T>> get items => throw _privateConstructorUsedError;

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupernovaDropdownFormFieldCopyWith<T, SupernovaDropdownFormField<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupernovaDropdownFormFieldCopyWith<T extends Object, $Res> {
  factory $SupernovaDropdownFormFieldCopyWith(
          SupernovaDropdownFormField<T> value,
          $Res Function(SupernovaDropdownFormField<T>) then) =
      _$SupernovaDropdownFormFieldCopyWithImpl<T, $Res,
          SupernovaDropdownFormField<T>>;
  @useResult
  $Res call({ValueNotifier<T?> selectedItem, List<DropdownMenuItem<T>> items});
}

/// @nodoc
class _$SupernovaDropdownFormFieldCopyWithImpl<T extends Object, $Res,
        $Val extends SupernovaDropdownFormField<T>>
    implements $SupernovaDropdownFormFieldCopyWith<T, $Res> {
  _$SupernovaDropdownFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      selectedItem: null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<T?>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<T>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupernovaDropdownFormFieldImplCopyWith<T extends Object, $Res>
    implements $SupernovaDropdownFormFieldCopyWith<T, $Res> {
  factory _$$SupernovaDropdownFormFieldImplCopyWith(
          _$SupernovaDropdownFormFieldImpl<T> value,
          $Res Function(_$SupernovaDropdownFormFieldImpl<T>) then) =
      __$$SupernovaDropdownFormFieldImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ValueNotifier<T?> selectedItem, List<DropdownMenuItem<T>> items});
}

/// @nodoc
class __$$SupernovaDropdownFormFieldImplCopyWithImpl<T extends Object, $Res>
    extends _$SupernovaDropdownFormFieldCopyWithImpl<T, $Res,
        _$SupernovaDropdownFormFieldImpl<T>>
    implements _$$SupernovaDropdownFormFieldImplCopyWith<T, $Res> {
  __$$SupernovaDropdownFormFieldImplCopyWithImpl(
      _$SupernovaDropdownFormFieldImpl<T> _value,
      $Res Function(_$SupernovaDropdownFormFieldImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
    Object? items = null,
  }) {
    return _then(_$SupernovaDropdownFormFieldImpl<T>(
      null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<T?>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<T>>,
    ));
  }
}

/// @nodoc

class _$SupernovaDropdownFormFieldImpl<T extends Object>
    extends _SupernovaDropdownFormField<T> {
  const _$SupernovaDropdownFormFieldImpl(this.selectedItem,
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

  @override
  String toString() {
    return 'SupernovaDropdownFormField<$T>(selectedItem: $selectedItem, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupernovaDropdownFormFieldImpl<T> &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedItem, const DeepCollectionEquality().hash(_items));

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupernovaDropdownFormFieldImplCopyWith<T,
          _$SupernovaDropdownFormFieldImpl<T>>
      get copyWith => __$$SupernovaDropdownFormFieldImplCopyWithImpl<T,
          _$SupernovaDropdownFormFieldImpl<T>>(this, _$identity);
}

abstract class _SupernovaDropdownFormField<T extends Object>
    extends SupernovaDropdownFormField<T> {
  const factory _SupernovaDropdownFormField(
          final ValueNotifier<T?> selectedItem,
          {required final List<DropdownMenuItem<T>> items}) =
      _$SupernovaDropdownFormFieldImpl<T>;
  const _SupernovaDropdownFormField._() : super._();

  @override
  ValueNotifier<T?> get selectedItem;
  @override
  List<DropdownMenuItem<T>> get items;

  /// Create a copy of SupernovaDropdownFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupernovaDropdownFormFieldImplCopyWith<T,
          _$SupernovaDropdownFormFieldImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClearableDropdownSelection<T extends Object> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) value,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? value,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? value,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueClearableDropdownSelection<T> value) value,
    required TResult Function(_ClearClearableDropdownSelection<T> value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueClearableDropdownSelection<T> value)? value,
    TResult? Function(_ClearClearableDropdownSelection<T> value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueClearableDropdownSelection<T> value)? value,
    TResult Function(_ClearClearableDropdownSelection<T> value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearableDropdownSelectionCopyWith<T extends Object, $Res> {
  factory _$ClearableDropdownSelectionCopyWith(
          _ClearableDropdownSelection<T> value,
          $Res Function(_ClearableDropdownSelection<T>) then) =
      __$ClearableDropdownSelectionCopyWithImpl<T, $Res,
          _ClearableDropdownSelection<T>>;
}

/// @nodoc
class __$ClearableDropdownSelectionCopyWithImpl<T extends Object, $Res,
        $Val extends _ClearableDropdownSelection<T>>
    implements _$ClearableDropdownSelectionCopyWith<T, $Res> {
  __$ClearableDropdownSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _ClearableDropdownSelection
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ValueClearableDropdownSelectionImplCopyWith<T extends Object,
    $Res> {
  factory _$$ValueClearableDropdownSelectionImplCopyWith(
          _$ValueClearableDropdownSelectionImpl<T> value,
          $Res Function(_$ValueClearableDropdownSelectionImpl<T>) then) =
      __$$ValueClearableDropdownSelectionImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$ValueClearableDropdownSelectionImplCopyWithImpl<T extends Object,
        $Res>
    extends __$ClearableDropdownSelectionCopyWithImpl<T, $Res,
        _$ValueClearableDropdownSelectionImpl<T>>
    implements _$$ValueClearableDropdownSelectionImplCopyWith<T, $Res> {
  __$$ValueClearableDropdownSelectionImplCopyWithImpl(
      _$ValueClearableDropdownSelectionImpl<T> _value,
      $Res Function(_$ValueClearableDropdownSelectionImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of _ClearableDropdownSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ValueClearableDropdownSelectionImpl<T>(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueClearableDropdownSelectionImpl<T extends Object>
    extends _ValueClearableDropdownSelection<T> {
  const _$ValueClearableDropdownSelectionImpl(this.value) : super._();

  @override
  final T value;

  @override
  String toString() {
    return '_ClearableDropdownSelection<$T>.value(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueClearableDropdownSelectionImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of _ClearableDropdownSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueClearableDropdownSelectionImplCopyWith<T,
          _$ValueClearableDropdownSelectionImpl<T>>
      get copyWith => __$$ValueClearableDropdownSelectionImplCopyWithImpl<T,
          _$ValueClearableDropdownSelectionImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) value,
    required TResult Function() clear,
  }) {
    return value(this.value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? value,
    TResult? Function()? clear,
  }) {
    return value?.call(this.value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? value,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this.value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueClearableDropdownSelection<T> value) value,
    required TResult Function(_ClearClearableDropdownSelection<T> value) clear,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueClearableDropdownSelection<T> value)? value,
    TResult? Function(_ClearClearableDropdownSelection<T> value)? clear,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueClearableDropdownSelection<T> value)? value,
    TResult Function(_ClearClearableDropdownSelection<T> value)? clear,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class _ValueClearableDropdownSelection<T extends Object>
    extends _ClearableDropdownSelection<T> {
  const factory _ValueClearableDropdownSelection(final T value) =
      _$ValueClearableDropdownSelectionImpl<T>;
  const _ValueClearableDropdownSelection._() : super._();

  T get value;

  /// Create a copy of _ClearableDropdownSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueClearableDropdownSelectionImplCopyWith<T,
          _$ValueClearableDropdownSelectionImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearClearableDropdownSelectionImplCopyWith<T extends Object,
    $Res> {
  factory _$$ClearClearableDropdownSelectionImplCopyWith(
          _$ClearClearableDropdownSelectionImpl<T> value,
          $Res Function(_$ClearClearableDropdownSelectionImpl<T>) then) =
      __$$ClearClearableDropdownSelectionImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ClearClearableDropdownSelectionImplCopyWithImpl<T extends Object,
        $Res>
    extends __$ClearableDropdownSelectionCopyWithImpl<T, $Res,
        _$ClearClearableDropdownSelectionImpl<T>>
    implements _$$ClearClearableDropdownSelectionImplCopyWith<T, $Res> {
  __$$ClearClearableDropdownSelectionImplCopyWithImpl(
      _$ClearClearableDropdownSelectionImpl<T> _value,
      $Res Function(_$ClearClearableDropdownSelectionImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of _ClearableDropdownSelection
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearClearableDropdownSelectionImpl<T extends Object>
    extends _ClearClearableDropdownSelection<T> {
  const _$ClearClearableDropdownSelectionImpl() : super._();

  @override
  String toString() {
    return '_ClearableDropdownSelection<$T>.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearClearableDropdownSelectionImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) value,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? value,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? value,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueClearableDropdownSelection<T> value) value,
    required TResult Function(_ClearClearableDropdownSelection<T> value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueClearableDropdownSelection<T> value)? value,
    TResult? Function(_ClearClearableDropdownSelection<T> value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueClearableDropdownSelection<T> value)? value,
    TResult Function(_ClearClearableDropdownSelection<T> value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearClearableDropdownSelection<T extends Object>
    extends _ClearableDropdownSelection<T> {
  const factory _ClearClearableDropdownSelection() =
      _$ClearClearableDropdownSelectionImpl<T>;
  const _ClearClearableDropdownSelection._() : super._();
}

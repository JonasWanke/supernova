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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SupernovaDropdownFormField<T extends Object> {
  ValueNotifier<T?> get selectedItem => throw _privateConstructorUsedError;
  List<DropdownMenuItem<T>> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_SupernovaDropdownFormFieldCopyWith<T extends Object, $Res>
    implements $SupernovaDropdownFormFieldCopyWith<T, $Res> {
  factory _$$_SupernovaDropdownFormFieldCopyWith(
          _$_SupernovaDropdownFormField<T> value,
          $Res Function(_$_SupernovaDropdownFormField<T>) then) =
      __$$_SupernovaDropdownFormFieldCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ValueNotifier<T?> selectedItem, List<DropdownMenuItem<T>> items});
}

/// @nodoc
class __$$_SupernovaDropdownFormFieldCopyWithImpl<T extends Object, $Res>
    extends _$SupernovaDropdownFormFieldCopyWithImpl<T, $Res,
        _$_SupernovaDropdownFormField<T>>
    implements _$$_SupernovaDropdownFormFieldCopyWith<T, $Res> {
  __$$_SupernovaDropdownFormFieldCopyWithImpl(
      _$_SupernovaDropdownFormField<T> _value,
      $Res Function(_$_SupernovaDropdownFormField<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
    Object? items = null,
  }) {
    return _then(_$_SupernovaDropdownFormField<T>(
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

class _$_SupernovaDropdownFormField<T extends Object>
    extends _SupernovaDropdownFormField<T> {
  const _$_SupernovaDropdownFormField(this.selectedItem,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupernovaDropdownFormField<T> &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedItem, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupernovaDropdownFormFieldCopyWith<T, _$_SupernovaDropdownFormField<T>>
      get copyWith => __$$_SupernovaDropdownFormFieldCopyWithImpl<T,
          _$_SupernovaDropdownFormField<T>>(this, _$identity);
}

abstract class _SupernovaDropdownFormField<T extends Object>
    extends SupernovaDropdownFormField<T> {
  const factory _SupernovaDropdownFormField(
          final ValueNotifier<T?> selectedItem,
          {required final List<DropdownMenuItem<T>> items}) =
      _$_SupernovaDropdownFormField<T>;
  const _SupernovaDropdownFormField._() : super._();

  @override
  ValueNotifier<T?> get selectedItem;
  @override
  List<DropdownMenuItem<T>> get items;
  @override
  @JsonKey(ignore: true)
  _$$_SupernovaDropdownFormFieldCopyWith<T, _$_SupernovaDropdownFormField<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$_ClearableDropdownSelection<T extends Object> {
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
}

/// @nodoc
abstract class _$$_ValueClearableDropdownSelectionCopyWith<T extends Object,
    $Res> {
  factory _$$_ValueClearableDropdownSelectionCopyWith(
          _$_ValueClearableDropdownSelection<T> value,
          $Res Function(_$_ValueClearableDropdownSelection<T>) then) =
      __$$_ValueClearableDropdownSelectionCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$_ValueClearableDropdownSelectionCopyWithImpl<T extends Object, $Res>
    extends __$ClearableDropdownSelectionCopyWithImpl<T, $Res,
        _$_ValueClearableDropdownSelection<T>>
    implements _$$_ValueClearableDropdownSelectionCopyWith<T, $Res> {
  __$$_ValueClearableDropdownSelectionCopyWithImpl(
      _$_ValueClearableDropdownSelection<T> _value,
      $Res Function(_$_ValueClearableDropdownSelection<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ValueClearableDropdownSelection<T>(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ValueClearableDropdownSelection<T extends Object>
    extends _ValueClearableDropdownSelection<T> {
  const _$_ValueClearableDropdownSelection(this.value) : super._();

  @override
  final T value;

  @override
  String toString() {
    return '_ClearableDropdownSelection<$T>.value(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValueClearableDropdownSelection<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValueClearableDropdownSelectionCopyWith<T,
          _$_ValueClearableDropdownSelection<T>>
      get copyWith => __$$_ValueClearableDropdownSelectionCopyWithImpl<T,
          _$_ValueClearableDropdownSelection<T>>(this, _$identity);

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
      _$_ValueClearableDropdownSelection<T>;
  const _ValueClearableDropdownSelection._() : super._();

  T get value;
  @JsonKey(ignore: true)
  _$$_ValueClearableDropdownSelectionCopyWith<T,
          _$_ValueClearableDropdownSelection<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearClearableDropdownSelectionCopyWith<T extends Object,
    $Res> {
  factory _$$_ClearClearableDropdownSelectionCopyWith(
          _$_ClearClearableDropdownSelection<T> value,
          $Res Function(_$_ClearClearableDropdownSelection<T>) then) =
      __$$_ClearClearableDropdownSelectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ClearClearableDropdownSelectionCopyWithImpl<T extends Object, $Res>
    extends __$ClearableDropdownSelectionCopyWithImpl<T, $Res,
        _$_ClearClearableDropdownSelection<T>>
    implements _$$_ClearClearableDropdownSelectionCopyWith<T, $Res> {
  __$$_ClearClearableDropdownSelectionCopyWithImpl(
      _$_ClearClearableDropdownSelection<T> _value,
      $Res Function(_$_ClearClearableDropdownSelection<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearClearableDropdownSelection<T extends Object>
    extends _ClearClearableDropdownSelection<T> {
  const _$_ClearClearableDropdownSelection() : super._();

  @override
  String toString() {
    return '_ClearableDropdownSelection<$T>.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearClearableDropdownSelection<T>);
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
      _$_ClearClearableDropdownSelection<T>;
  const _ClearClearableDropdownSelection._() : super._();
}

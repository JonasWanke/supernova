// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autocomplete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaAutocompleteFormField<T extends Object, R extends Object> {
  TextEditingController get textEditingController;
  ValueNotifier<R?> get selectedItem;
  R Function(T) get valueSelector;
  List<String>? get autofillHints;
  TextInputAction get textInputAction;
  String? get hintText;
  bool get shouldDebounce;
  SupernovaAutocompleteOptionsBuilder<T> get optionsBuilder;
  AutocompleteOptionToString<T> get displayStringForOption;
  DataWidgetBuilder<T>? get optionViewBuilder;
  Widget? get optionFooter;

  /// Create a copy of SupernovaAutocompleteFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaAutocompleteFormFieldCopyWith<T, R,
          SupernovaAutocompleteFormField<T, R>>
      get copyWith => _$SupernovaAutocompleteFormFieldCopyWithImpl<T, R,
              SupernovaAutocompleteFormField<T, R>>(
          this as SupernovaAutocompleteFormField<T, R>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaAutocompleteFormField<T, R> &&
            (identical(other.textEditingController, textEditingController) ||
                other.textEditingController == textEditingController) &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            (identical(other.valueSelector, valueSelector) ||
                other.valueSelector == valueSelector) &&
            const DeepCollectionEquality()
                .equals(other.autofillHints, autofillHints) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.shouldDebounce, shouldDebounce) ||
                other.shouldDebounce == shouldDebounce) &&
            (identical(other.optionsBuilder, optionsBuilder) ||
                other.optionsBuilder == optionsBuilder) &&
            (identical(other.displayStringForOption, displayStringForOption) ||
                other.displayStringForOption == displayStringForOption) &&
            (identical(other.optionViewBuilder, optionViewBuilder) ||
                other.optionViewBuilder == optionViewBuilder) &&
            (identical(other.optionFooter, optionFooter) ||
                other.optionFooter == optionFooter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      textEditingController,
      selectedItem,
      valueSelector,
      const DeepCollectionEquality().hash(autofillHints),
      textInputAction,
      hintText,
      shouldDebounce,
      optionsBuilder,
      displayStringForOption,
      optionViewBuilder,
      optionFooter);

  @override
  String toString() {
    return 'SupernovaAutocompleteFormField<$T, $R>(textEditingController: $textEditingController, selectedItem: $selectedItem, valueSelector: $valueSelector, autofillHints: $autofillHints, textInputAction: $textInputAction, hintText: $hintText, shouldDebounce: $shouldDebounce, optionsBuilder: $optionsBuilder, displayStringForOption: $displayStringForOption, optionViewBuilder: $optionViewBuilder, optionFooter: $optionFooter)';
  }
}

/// @nodoc
abstract mixin class $SupernovaAutocompleteFormFieldCopyWith<T extends Object,
    R extends Object, $Res> {
  factory $SupernovaAutocompleteFormFieldCopyWith(
          SupernovaAutocompleteFormField<T, R> value,
          $Res Function(SupernovaAutocompleteFormField<T, R>) _then) =
      _$SupernovaAutocompleteFormFieldCopyWithImpl;
  @useResult
  $Res call(
      {TextEditingController textEditingController,
      ValueNotifier<R?> selectedItem,
      R Function(T) valueSelector,
      List<String>? autofillHints,
      TextInputAction textInputAction,
      String? hintText,
      bool shouldDebounce,
      SupernovaAutocompleteOptionsBuilder<T> optionsBuilder,
      AutocompleteOptionToString<T> displayStringForOption,
      DataWidgetBuilder<T>? optionViewBuilder,
      Widget? optionFooter});
}

/// @nodoc
class _$SupernovaAutocompleteFormFieldCopyWithImpl<
    T extends Object,
    R extends Object,
    $Res> implements $SupernovaAutocompleteFormFieldCopyWith<T, R, $Res> {
  _$SupernovaAutocompleteFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaAutocompleteFormField<T, R> _self;
  final $Res Function(SupernovaAutocompleteFormField<T, R>) _then;

  /// Create a copy of SupernovaAutocompleteFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textEditingController = null,
    Object? selectedItem = null,
    Object? valueSelector = null,
    Object? autofillHints = freezed,
    Object? textInputAction = null,
    Object? hintText = freezed,
    Object? shouldDebounce = null,
    Object? optionsBuilder = null,
    Object? displayStringForOption = null,
    Object? optionViewBuilder = freezed,
    Object? optionFooter = freezed,
  }) {
    return _then(_self.copyWith(
      textEditingController: null == textEditingController
          ? _self.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      selectedItem: null == selectedItem
          ? _self.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<R?>,
      valueSelector: null == valueSelector
          ? _self.valueSelector
          : valueSelector // ignore: cast_nullable_to_non_nullable
              as R Function(T),
      autofillHints: freezed == autofillHints
          ? _self.autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      textInputAction: null == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      shouldDebounce: null == shouldDebounce
          ? _self.shouldDebounce
          : shouldDebounce // ignore: cast_nullable_to_non_nullable
              as bool,
      optionsBuilder: null == optionsBuilder
          ? _self.optionsBuilder
          : optionsBuilder // ignore: cast_nullable_to_non_nullable
              as SupernovaAutocompleteOptionsBuilder<T>,
      displayStringForOption: null == displayStringForOption
          ? _self.displayStringForOption
          : displayStringForOption // ignore: cast_nullable_to_non_nullable
              as AutocompleteOptionToString<T>,
      optionViewBuilder: freezed == optionViewBuilder
          ? _self.optionViewBuilder
          : optionViewBuilder // ignore: cast_nullable_to_non_nullable
              as DataWidgetBuilder<T>?,
      optionFooter: freezed == optionFooter
          ? _self.optionFooter
          : optionFooter // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupernovaAutocompleteFormField].
extension SupernovaAutocompleteFormFieldPatterns<T extends Object,
    R extends Object> on SupernovaAutocompleteFormField<T, R> {
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
    TResult Function(_SupernovaAutocompleteFormField<T, R> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaAutocompleteFormField() when $default != null:
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
    TResult Function(_SupernovaAutocompleteFormField<T, R> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaAutocompleteFormField():
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
    TResult? Function(_SupernovaAutocompleteFormField<T, R> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaAutocompleteFormField() when $default != null:
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
            TextEditingController textEditingController,
            ValueNotifier<R?> selectedItem,
            R Function(T) valueSelector,
            List<String>? autofillHints,
            TextInputAction textInputAction,
            String? hintText,
            bool shouldDebounce,
            SupernovaAutocompleteOptionsBuilder<T> optionsBuilder,
            AutocompleteOptionToString<T> displayStringForOption,
            DataWidgetBuilder<T>? optionViewBuilder,
            Widget? optionFooter)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaAutocompleteFormField() when $default != null:
        return $default(
            _that.textEditingController,
            _that.selectedItem,
            _that.valueSelector,
            _that.autofillHints,
            _that.textInputAction,
            _that.hintText,
            _that.shouldDebounce,
            _that.optionsBuilder,
            _that.displayStringForOption,
            _that.optionViewBuilder,
            _that.optionFooter);
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
            TextEditingController textEditingController,
            ValueNotifier<R?> selectedItem,
            R Function(T) valueSelector,
            List<String>? autofillHints,
            TextInputAction textInputAction,
            String? hintText,
            bool shouldDebounce,
            SupernovaAutocompleteOptionsBuilder<T> optionsBuilder,
            AutocompleteOptionToString<T> displayStringForOption,
            DataWidgetBuilder<T>? optionViewBuilder,
            Widget? optionFooter)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaAutocompleteFormField():
        return $default(
            _that.textEditingController,
            _that.selectedItem,
            _that.valueSelector,
            _that.autofillHints,
            _that.textInputAction,
            _that.hintText,
            _that.shouldDebounce,
            _that.optionsBuilder,
            _that.displayStringForOption,
            _that.optionViewBuilder,
            _that.optionFooter);
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
            TextEditingController textEditingController,
            ValueNotifier<R?> selectedItem,
            R Function(T) valueSelector,
            List<String>? autofillHints,
            TextInputAction textInputAction,
            String? hintText,
            bool shouldDebounce,
            SupernovaAutocompleteOptionsBuilder<T> optionsBuilder,
            AutocompleteOptionToString<T> displayStringForOption,
            DataWidgetBuilder<T>? optionViewBuilder,
            Widget? optionFooter)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaAutocompleteFormField() when $default != null:
        return $default(
            _that.textEditingController,
            _that.selectedItem,
            _that.valueSelector,
            _that.autofillHints,
            _that.textInputAction,
            _that.hintText,
            _that.shouldDebounce,
            _that.optionsBuilder,
            _that.displayStringForOption,
            _that.optionViewBuilder,
            _that.optionFooter);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SupernovaAutocompleteFormField<T extends Object, R extends Object>
    extends SupernovaAutocompleteFormField<T, R> {
  const _SupernovaAutocompleteFormField(
      this.textEditingController, this.selectedItem,
      {required this.valueSelector,
      required final List<String>? autofillHints,
      required this.textInputAction,
      this.hintText,
      this.shouldDebounce = true,
      required this.optionsBuilder,
      required this.displayStringForOption,
      this.optionViewBuilder,
      this.optionFooter})
      : _autofillHints = autofillHints,
        super._();

  @override
  final TextEditingController textEditingController;
  @override
  final ValueNotifier<R?> selectedItem;
  @override
  final R Function(T) valueSelector;
  final List<String>? _autofillHints;
  @override
  List<String>? get autofillHints {
    final value = _autofillHints;
    if (value == null) return null;
    if (_autofillHints is EqualUnmodifiableListView) return _autofillHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TextInputAction textInputAction;
  @override
  final String? hintText;
  @override
  @JsonKey()
  final bool shouldDebounce;
  @override
  final SupernovaAutocompleteOptionsBuilder<T> optionsBuilder;
  @override
  final AutocompleteOptionToString<T> displayStringForOption;
  @override
  final DataWidgetBuilder<T>? optionViewBuilder;
  @override
  final Widget? optionFooter;

  /// Create a copy of SupernovaAutocompleteFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupernovaAutocompleteFormFieldCopyWith<T, R,
          _SupernovaAutocompleteFormField<T, R>>
      get copyWith => __$SupernovaAutocompleteFormFieldCopyWithImpl<T, R,
          _SupernovaAutocompleteFormField<T, R>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupernovaAutocompleteFormField<T, R> &&
            (identical(other.textEditingController, textEditingController) ||
                other.textEditingController == textEditingController) &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            (identical(other.valueSelector, valueSelector) ||
                other.valueSelector == valueSelector) &&
            const DeepCollectionEquality()
                .equals(other._autofillHints, _autofillHints) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.shouldDebounce, shouldDebounce) ||
                other.shouldDebounce == shouldDebounce) &&
            (identical(other.optionsBuilder, optionsBuilder) ||
                other.optionsBuilder == optionsBuilder) &&
            (identical(other.displayStringForOption, displayStringForOption) ||
                other.displayStringForOption == displayStringForOption) &&
            (identical(other.optionViewBuilder, optionViewBuilder) ||
                other.optionViewBuilder == optionViewBuilder) &&
            (identical(other.optionFooter, optionFooter) ||
                other.optionFooter == optionFooter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      textEditingController,
      selectedItem,
      valueSelector,
      const DeepCollectionEquality().hash(_autofillHints),
      textInputAction,
      hintText,
      shouldDebounce,
      optionsBuilder,
      displayStringForOption,
      optionViewBuilder,
      optionFooter);

  @override
  String toString() {
    return 'SupernovaAutocompleteFormField<$T, $R>(textEditingController: $textEditingController, selectedItem: $selectedItem, valueSelector: $valueSelector, autofillHints: $autofillHints, textInputAction: $textInputAction, hintText: $hintText, shouldDebounce: $shouldDebounce, optionsBuilder: $optionsBuilder, displayStringForOption: $displayStringForOption, optionViewBuilder: $optionViewBuilder, optionFooter: $optionFooter)';
  }
}

/// @nodoc
abstract mixin class _$SupernovaAutocompleteFormFieldCopyWith<
    T extends Object,
    R extends Object,
    $Res> implements $SupernovaAutocompleteFormFieldCopyWith<T, R, $Res> {
  factory _$SupernovaAutocompleteFormFieldCopyWith(
          _SupernovaAutocompleteFormField<T, R> value,
          $Res Function(_SupernovaAutocompleteFormField<T, R>) _then) =
      __$SupernovaAutocompleteFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TextEditingController textEditingController,
      ValueNotifier<R?> selectedItem,
      R Function(T) valueSelector,
      List<String>? autofillHints,
      TextInputAction textInputAction,
      String? hintText,
      bool shouldDebounce,
      SupernovaAutocompleteOptionsBuilder<T> optionsBuilder,
      AutocompleteOptionToString<T> displayStringForOption,
      DataWidgetBuilder<T>? optionViewBuilder,
      Widget? optionFooter});
}

/// @nodoc
class __$SupernovaAutocompleteFormFieldCopyWithImpl<
    T extends Object,
    R extends Object,
    $Res> implements _$SupernovaAutocompleteFormFieldCopyWith<T, R, $Res> {
  __$SupernovaAutocompleteFormFieldCopyWithImpl(this._self, this._then);

  final _SupernovaAutocompleteFormField<T, R> _self;
  final $Res Function(_SupernovaAutocompleteFormField<T, R>) _then;

  /// Create a copy of SupernovaAutocompleteFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? textEditingController = null,
    Object? selectedItem = null,
    Object? valueSelector = null,
    Object? autofillHints = freezed,
    Object? textInputAction = null,
    Object? hintText = freezed,
    Object? shouldDebounce = null,
    Object? optionsBuilder = null,
    Object? displayStringForOption = null,
    Object? optionViewBuilder = freezed,
    Object? optionFooter = freezed,
  }) {
    return _then(_SupernovaAutocompleteFormField<T, R>(
      null == textEditingController
          ? _self.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      null == selectedItem
          ? _self.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<R?>,
      valueSelector: null == valueSelector
          ? _self.valueSelector
          : valueSelector // ignore: cast_nullable_to_non_nullable
              as R Function(T),
      autofillHints: freezed == autofillHints
          ? _self._autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      textInputAction: null == textInputAction
          ? _self.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      shouldDebounce: null == shouldDebounce
          ? _self.shouldDebounce
          : shouldDebounce // ignore: cast_nullable_to_non_nullable
              as bool,
      optionsBuilder: null == optionsBuilder
          ? _self.optionsBuilder
          : optionsBuilder // ignore: cast_nullable_to_non_nullable
              as SupernovaAutocompleteOptionsBuilder<T>,
      displayStringForOption: null == displayStringForOption
          ? _self.displayStringForOption
          : displayStringForOption // ignore: cast_nullable_to_non_nullable
              as AutocompleteOptionToString<T>,
      optionViewBuilder: freezed == optionViewBuilder
          ? _self.optionViewBuilder
          : optionViewBuilder // ignore: cast_nullable_to_non_nullable
              as DataWidgetBuilder<T>?,
      optionFooter: freezed == optionFooter
          ? _self.optionFooter
          : optionFooter // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

// dart format on

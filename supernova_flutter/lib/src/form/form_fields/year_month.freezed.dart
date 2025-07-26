// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_month.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaYearMonthFormField {
  ValueNotifier<YearMonth?> get selectedYearMonth;
  ValueGetter<YearMonth?>? get firstYearMonth;
  ValueGetter<YearMonth?>? get lastYearMonth;
  Formatter<YearMonth> get formatYearMonth;
  String? get hintText;
  String? get dialogHelpText;
  YearMonthPickerMode get initialPickerMode;
  SupernovaFormFieldValidator<YearMonth>? get validator;

  /// Create a copy of SupernovaYearMonthFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaYearMonthFormFieldCopyWith<SupernovaYearMonthFormField>
      get copyWith => _$SupernovaYearMonthFormFieldCopyWithImpl<
              SupernovaYearMonthFormField>(
          this as SupernovaYearMonthFormField, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaYearMonthFormField &&
            (identical(other.selectedYearMonth, selectedYearMonth) ||
                other.selectedYearMonth == selectedYearMonth) &&
            (identical(other.firstYearMonth, firstYearMonth) ||
                other.firstYearMonth == firstYearMonth) &&
            (identical(other.lastYearMonth, lastYearMonth) ||
                other.lastYearMonth == lastYearMonth) &&
            (identical(other.formatYearMonth, formatYearMonth) ||
                other.formatYearMonth == formatYearMonth) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.dialogHelpText, dialogHelpText) ||
                other.dialogHelpText == dialogHelpText) &&
            (identical(other.initialPickerMode, initialPickerMode) ||
                other.initialPickerMode == initialPickerMode) &&
            (identical(other.validator, validator) ||
                other.validator == validator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedYearMonth,
      firstYearMonth,
      lastYearMonth,
      formatYearMonth,
      hintText,
      dialogHelpText,
      initialPickerMode,
      validator);

  @override
  String toString() {
    return 'SupernovaYearMonthFormField(selectedYearMonth: $selectedYearMonth, firstYearMonth: $firstYearMonth, lastYearMonth: $lastYearMonth, formatYearMonth: $formatYearMonth, hintText: $hintText, dialogHelpText: $dialogHelpText, initialPickerMode: $initialPickerMode, validator: $validator)';
  }
}

/// @nodoc
abstract mixin class $SupernovaYearMonthFormFieldCopyWith<$Res> {
  factory $SupernovaYearMonthFormFieldCopyWith(
          SupernovaYearMonthFormField value,
          $Res Function(SupernovaYearMonthFormField) _then) =
      _$SupernovaYearMonthFormFieldCopyWithImpl;
  @useResult
  $Res call(
      {ValueNotifier<YearMonth?> selectedYearMonth,
      ValueGetter<YearMonth?>? firstYearMonth,
      ValueGetter<YearMonth?>? lastYearMonth,
      Formatter<YearMonth> formatYearMonth,
      String? hintText,
      String? dialogHelpText,
      YearMonthPickerMode initialPickerMode,
      SupernovaFormFieldValidator<YearMonth>? validator});
}

/// @nodoc
class _$SupernovaYearMonthFormFieldCopyWithImpl<$Res>
    implements $SupernovaYearMonthFormFieldCopyWith<$Res> {
  _$SupernovaYearMonthFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaYearMonthFormField _self;
  final $Res Function(SupernovaYearMonthFormField) _then;

  /// Create a copy of SupernovaYearMonthFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedYearMonth = null,
    Object? firstYearMonth = freezed,
    Object? lastYearMonth = freezed,
    Object? formatYearMonth = null,
    Object? hintText = freezed,
    Object? dialogHelpText = freezed,
    Object? initialPickerMode = null,
    Object? validator = freezed,
  }) {
    return _then(_self.copyWith(
      selectedYearMonth: null == selectedYearMonth
          ? _self.selectedYearMonth
          : selectedYearMonth // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<YearMonth?>,
      firstYearMonth: freezed == firstYearMonth
          ? _self.firstYearMonth
          : firstYearMonth // ignore: cast_nullable_to_non_nullable
              as ValueGetter<YearMonth?>?,
      lastYearMonth: freezed == lastYearMonth
          ? _self.lastYearMonth
          : lastYearMonth // ignore: cast_nullable_to_non_nullable
              as ValueGetter<YearMonth?>?,
      formatYearMonth: null == formatYearMonth
          ? _self.formatYearMonth
          : formatYearMonth // ignore: cast_nullable_to_non_nullable
              as Formatter<YearMonth>,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      dialogHelpText: freezed == dialogHelpText
          ? _self.dialogHelpText
          : dialogHelpText // ignore: cast_nullable_to_non_nullable
              as String?,
      initialPickerMode: null == initialPickerMode
          ? _self.initialPickerMode
          : initialPickerMode // ignore: cast_nullable_to_non_nullable
              as YearMonthPickerMode,
      validator: freezed == validator
          ? _self.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldValidator<YearMonth>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupernovaYearMonthFormField].
extension SupernovaYearMonthFormFieldPatterns on SupernovaYearMonthFormField {
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
    TResult Function(_SupernovaYearMonthFormField value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaYearMonthFormField() when $default != null:
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
    TResult Function(_SupernovaYearMonthFormField value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaYearMonthFormField():
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
    TResult? Function(_SupernovaYearMonthFormField value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaYearMonthFormField() when $default != null:
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
            ValueNotifier<YearMonth?> selectedYearMonth,
            ValueGetter<YearMonth?>? firstYearMonth,
            ValueGetter<YearMonth?>? lastYearMonth,
            Formatter<YearMonth> formatYearMonth,
            String? hintText,
            String? dialogHelpText,
            YearMonthPickerMode initialPickerMode,
            SupernovaFormFieldValidator<YearMonth>? validator)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaYearMonthFormField() when $default != null:
        return $default(
            _that.selectedYearMonth,
            _that.firstYearMonth,
            _that.lastYearMonth,
            _that.formatYearMonth,
            _that.hintText,
            _that.dialogHelpText,
            _that.initialPickerMode,
            _that.validator);
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
            ValueNotifier<YearMonth?> selectedYearMonth,
            ValueGetter<YearMonth?>? firstYearMonth,
            ValueGetter<YearMonth?>? lastYearMonth,
            Formatter<YearMonth> formatYearMonth,
            String? hintText,
            String? dialogHelpText,
            YearMonthPickerMode initialPickerMode,
            SupernovaFormFieldValidator<YearMonth>? validator)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaYearMonthFormField():
        return $default(
            _that.selectedYearMonth,
            _that.firstYearMonth,
            _that.lastYearMonth,
            _that.formatYearMonth,
            _that.hintText,
            _that.dialogHelpText,
            _that.initialPickerMode,
            _that.validator);
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
            ValueNotifier<YearMonth?> selectedYearMonth,
            ValueGetter<YearMonth?>? firstYearMonth,
            ValueGetter<YearMonth?>? lastYearMonth,
            Formatter<YearMonth> formatYearMonth,
            String? hintText,
            String? dialogHelpText,
            YearMonthPickerMode initialPickerMode,
            SupernovaFormFieldValidator<YearMonth>? validator)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaYearMonthFormField() when $default != null:
        return $default(
            _that.selectedYearMonth,
            _that.firstYearMonth,
            _that.lastYearMonth,
            _that.formatYearMonth,
            _that.hintText,
            _that.dialogHelpText,
            _that.initialPickerMode,
            _that.validator);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SupernovaYearMonthFormField extends SupernovaYearMonthFormField {
  const _SupernovaYearMonthFormField(this.selectedYearMonth,
      {this.firstYearMonth,
      this.lastYearMonth,
      required this.formatYearMonth,
      this.hintText,
      this.dialogHelpText,
      this.initialPickerMode = YearMonthPickerMode.year,
      this.validator})
      : super._();

  @override
  final ValueNotifier<YearMonth?> selectedYearMonth;
  @override
  final ValueGetter<YearMonth?>? firstYearMonth;
  @override
  final ValueGetter<YearMonth?>? lastYearMonth;
  @override
  final Formatter<YearMonth> formatYearMonth;
  @override
  final String? hintText;
  @override
  final String? dialogHelpText;
  @override
  @JsonKey()
  final YearMonthPickerMode initialPickerMode;
  @override
  final SupernovaFormFieldValidator<YearMonth>? validator;

  /// Create a copy of SupernovaYearMonthFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupernovaYearMonthFormFieldCopyWith<_SupernovaYearMonthFormField>
      get copyWith => __$SupernovaYearMonthFormFieldCopyWithImpl<
          _SupernovaYearMonthFormField>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupernovaYearMonthFormField &&
            (identical(other.selectedYearMonth, selectedYearMonth) ||
                other.selectedYearMonth == selectedYearMonth) &&
            (identical(other.firstYearMonth, firstYearMonth) ||
                other.firstYearMonth == firstYearMonth) &&
            (identical(other.lastYearMonth, lastYearMonth) ||
                other.lastYearMonth == lastYearMonth) &&
            (identical(other.formatYearMonth, formatYearMonth) ||
                other.formatYearMonth == formatYearMonth) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.dialogHelpText, dialogHelpText) ||
                other.dialogHelpText == dialogHelpText) &&
            (identical(other.initialPickerMode, initialPickerMode) ||
                other.initialPickerMode == initialPickerMode) &&
            (identical(other.validator, validator) ||
                other.validator == validator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedYearMonth,
      firstYearMonth,
      lastYearMonth,
      formatYearMonth,
      hintText,
      dialogHelpText,
      initialPickerMode,
      validator);

  @override
  String toString() {
    return 'SupernovaYearMonthFormField(selectedYearMonth: $selectedYearMonth, firstYearMonth: $firstYearMonth, lastYearMonth: $lastYearMonth, formatYearMonth: $formatYearMonth, hintText: $hintText, dialogHelpText: $dialogHelpText, initialPickerMode: $initialPickerMode, validator: $validator)';
  }
}

/// @nodoc
abstract mixin class _$SupernovaYearMonthFormFieldCopyWith<$Res>
    implements $SupernovaYearMonthFormFieldCopyWith<$Res> {
  factory _$SupernovaYearMonthFormFieldCopyWith(
          _SupernovaYearMonthFormField value,
          $Res Function(_SupernovaYearMonthFormField) _then) =
      __$SupernovaYearMonthFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ValueNotifier<YearMonth?> selectedYearMonth,
      ValueGetter<YearMonth?>? firstYearMonth,
      ValueGetter<YearMonth?>? lastYearMonth,
      Formatter<YearMonth> formatYearMonth,
      String? hintText,
      String? dialogHelpText,
      YearMonthPickerMode initialPickerMode,
      SupernovaFormFieldValidator<YearMonth>? validator});
}

/// @nodoc
class __$SupernovaYearMonthFormFieldCopyWithImpl<$Res>
    implements _$SupernovaYearMonthFormFieldCopyWith<$Res> {
  __$SupernovaYearMonthFormFieldCopyWithImpl(this._self, this._then);

  final _SupernovaYearMonthFormField _self;
  final $Res Function(_SupernovaYearMonthFormField) _then;

  /// Create a copy of SupernovaYearMonthFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedYearMonth = null,
    Object? firstYearMonth = freezed,
    Object? lastYearMonth = freezed,
    Object? formatYearMonth = null,
    Object? hintText = freezed,
    Object? dialogHelpText = freezed,
    Object? initialPickerMode = null,
    Object? validator = freezed,
  }) {
    return _then(_SupernovaYearMonthFormField(
      null == selectedYearMonth
          ? _self.selectedYearMonth
          : selectedYearMonth // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<YearMonth?>,
      firstYearMonth: freezed == firstYearMonth
          ? _self.firstYearMonth
          : firstYearMonth // ignore: cast_nullable_to_non_nullable
              as ValueGetter<YearMonth?>?,
      lastYearMonth: freezed == lastYearMonth
          ? _self.lastYearMonth
          : lastYearMonth // ignore: cast_nullable_to_non_nullable
              as ValueGetter<YearMonth?>?,
      formatYearMonth: null == formatYearMonth
          ? _self.formatYearMonth
          : formatYearMonth // ignore: cast_nullable_to_non_nullable
              as Formatter<YearMonth>,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      dialogHelpText: freezed == dialogHelpText
          ? _self.dialogHelpText
          : dialogHelpText // ignore: cast_nullable_to_non_nullable
              as String?,
      initialPickerMode: null == initialPickerMode
          ? _self.initialPickerMode
          : initialPickerMode // ignore: cast_nullable_to_non_nullable
              as YearMonthPickerMode,
      validator: freezed == validator
          ? _self.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldValidator<YearMonth>?,
    ));
  }
}

// dart format on

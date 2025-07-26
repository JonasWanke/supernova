// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupernovaDateFormField {
  ValueNotifier<Date?> get selectedDate;
  ValueGetter<Date?>? get firstDate;
  ValueGetter<Date?>? get lastDate;
  Formatter<Date> get formatDate;
  String? get hintText;
  String? get dialogHelpText;
  DatePickerMode get initialDatePickerMode;
  SupernovaFormFieldValidator<Date>? get validator;

  /// Create a copy of SupernovaDateFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupernovaDateFormFieldCopyWith<SupernovaDateFormField> get copyWith =>
      _$SupernovaDateFormFieldCopyWithImpl<SupernovaDateFormField>(
          this as SupernovaDateFormField, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupernovaDateFormField &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.firstDate, firstDate) ||
                other.firstDate == firstDate) &&
            (identical(other.lastDate, lastDate) ||
                other.lastDate == lastDate) &&
            (identical(other.formatDate, formatDate) ||
                other.formatDate == formatDate) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.dialogHelpText, dialogHelpText) ||
                other.dialogHelpText == dialogHelpText) &&
            (identical(other.initialDatePickerMode, initialDatePickerMode) ||
                other.initialDatePickerMode == initialDatePickerMode) &&
            (identical(other.validator, validator) ||
                other.validator == validator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDate,
      firstDate,
      lastDate,
      formatDate,
      hintText,
      dialogHelpText,
      initialDatePickerMode,
      validator);

  @override
  String toString() {
    return 'SupernovaDateFormField(selectedDate: $selectedDate, firstDate: $firstDate, lastDate: $lastDate, formatDate: $formatDate, hintText: $hintText, dialogHelpText: $dialogHelpText, initialDatePickerMode: $initialDatePickerMode, validator: $validator)';
  }
}

/// @nodoc
abstract mixin class $SupernovaDateFormFieldCopyWith<$Res> {
  factory $SupernovaDateFormFieldCopyWith(SupernovaDateFormField value,
          $Res Function(SupernovaDateFormField) _then) =
      _$SupernovaDateFormFieldCopyWithImpl;
  @useResult
  $Res call(
      {ValueNotifier<Date?> selectedDate,
      ValueGetter<Date?>? firstDate,
      ValueGetter<Date?>? lastDate,
      Formatter<Date> formatDate,
      String? hintText,
      String? dialogHelpText,
      DatePickerMode initialDatePickerMode,
      SupernovaFormFieldValidator<Date>? validator});
}

/// @nodoc
class _$SupernovaDateFormFieldCopyWithImpl<$Res>
    implements $SupernovaDateFormFieldCopyWith<$Res> {
  _$SupernovaDateFormFieldCopyWithImpl(this._self, this._then);

  final SupernovaDateFormField _self;
  final $Res Function(SupernovaDateFormField) _then;

  /// Create a copy of SupernovaDateFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? firstDate = freezed,
    Object? lastDate = freezed,
    Object? formatDate = null,
    Object? hintText = freezed,
    Object? dialogHelpText = freezed,
    Object? initialDatePickerMode = null,
    Object? validator = freezed,
  }) {
    return _then(_self.copyWith(
      selectedDate: null == selectedDate
          ? _self.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<Date?>,
      firstDate: freezed == firstDate
          ? _self.firstDate
          : firstDate // ignore: cast_nullable_to_non_nullable
              as ValueGetter<Date?>?,
      lastDate: freezed == lastDate
          ? _self.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as ValueGetter<Date?>?,
      formatDate: null == formatDate
          ? _self.formatDate
          : formatDate // ignore: cast_nullable_to_non_nullable
              as Formatter<Date>,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      dialogHelpText: freezed == dialogHelpText
          ? _self.dialogHelpText
          : dialogHelpText // ignore: cast_nullable_to_non_nullable
              as String?,
      initialDatePickerMode: null == initialDatePickerMode
          ? _self.initialDatePickerMode
          : initialDatePickerMode // ignore: cast_nullable_to_non_nullable
              as DatePickerMode,
      validator: freezed == validator
          ? _self.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldValidator<Date>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupernovaDateFormField].
extension SupernovaDateFormFieldPatterns on SupernovaDateFormField {
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
    TResult Function(_SupernovaDateFormField value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaDateFormField() when $default != null:
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
    TResult Function(_SupernovaDateFormField value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaDateFormField():
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
    TResult? Function(_SupernovaDateFormField value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaDateFormField() when $default != null:
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
            ValueNotifier<Date?> selectedDate,
            ValueGetter<Date?>? firstDate,
            ValueGetter<Date?>? lastDate,
            Formatter<Date> formatDate,
            String? hintText,
            String? dialogHelpText,
            DatePickerMode initialDatePickerMode,
            SupernovaFormFieldValidator<Date>? validator)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupernovaDateFormField() when $default != null:
        return $default(
            _that.selectedDate,
            _that.firstDate,
            _that.lastDate,
            _that.formatDate,
            _that.hintText,
            _that.dialogHelpText,
            _that.initialDatePickerMode,
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
            ValueNotifier<Date?> selectedDate,
            ValueGetter<Date?>? firstDate,
            ValueGetter<Date?>? lastDate,
            Formatter<Date> formatDate,
            String? hintText,
            String? dialogHelpText,
            DatePickerMode initialDatePickerMode,
            SupernovaFormFieldValidator<Date>? validator)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaDateFormField():
        return $default(
            _that.selectedDate,
            _that.firstDate,
            _that.lastDate,
            _that.formatDate,
            _that.hintText,
            _that.dialogHelpText,
            _that.initialDatePickerMode,
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
            ValueNotifier<Date?> selectedDate,
            ValueGetter<Date?>? firstDate,
            ValueGetter<Date?>? lastDate,
            Formatter<Date> formatDate,
            String? hintText,
            String? dialogHelpText,
            DatePickerMode initialDatePickerMode,
            SupernovaFormFieldValidator<Date>? validator)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupernovaDateFormField() when $default != null:
        return $default(
            _that.selectedDate,
            _that.firstDate,
            _that.lastDate,
            _that.formatDate,
            _that.hintText,
            _that.dialogHelpText,
            _that.initialDatePickerMode,
            _that.validator);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SupernovaDateFormField extends SupernovaDateFormField {
  const _SupernovaDateFormField(this.selectedDate,
      {this.firstDate,
      this.lastDate,
      this.formatDate = SupernovaDateFormField.defaultFormatDate,
      this.hintText,
      this.dialogHelpText,
      this.initialDatePickerMode = DatePickerMode.day,
      this.validator})
      : super._();

  @override
  final ValueNotifier<Date?> selectedDate;
  @override
  final ValueGetter<Date?>? firstDate;
  @override
  final ValueGetter<Date?>? lastDate;
  @override
  @JsonKey()
  final Formatter<Date> formatDate;
  @override
  final String? hintText;
  @override
  final String? dialogHelpText;
  @override
  @JsonKey()
  final DatePickerMode initialDatePickerMode;
  @override
  final SupernovaFormFieldValidator<Date>? validator;

  /// Create a copy of SupernovaDateFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupernovaDateFormFieldCopyWith<_SupernovaDateFormField> get copyWith =>
      __$SupernovaDateFormFieldCopyWithImpl<_SupernovaDateFormField>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupernovaDateFormField &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.firstDate, firstDate) ||
                other.firstDate == firstDate) &&
            (identical(other.lastDate, lastDate) ||
                other.lastDate == lastDate) &&
            (identical(other.formatDate, formatDate) ||
                other.formatDate == formatDate) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.dialogHelpText, dialogHelpText) ||
                other.dialogHelpText == dialogHelpText) &&
            (identical(other.initialDatePickerMode, initialDatePickerMode) ||
                other.initialDatePickerMode == initialDatePickerMode) &&
            (identical(other.validator, validator) ||
                other.validator == validator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDate,
      firstDate,
      lastDate,
      formatDate,
      hintText,
      dialogHelpText,
      initialDatePickerMode,
      validator);

  @override
  String toString() {
    return 'SupernovaDateFormField(selectedDate: $selectedDate, firstDate: $firstDate, lastDate: $lastDate, formatDate: $formatDate, hintText: $hintText, dialogHelpText: $dialogHelpText, initialDatePickerMode: $initialDatePickerMode, validator: $validator)';
  }
}

/// @nodoc
abstract mixin class _$SupernovaDateFormFieldCopyWith<$Res>
    implements $SupernovaDateFormFieldCopyWith<$Res> {
  factory _$SupernovaDateFormFieldCopyWith(_SupernovaDateFormField value,
          $Res Function(_SupernovaDateFormField) _then) =
      __$SupernovaDateFormFieldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ValueNotifier<Date?> selectedDate,
      ValueGetter<Date?>? firstDate,
      ValueGetter<Date?>? lastDate,
      Formatter<Date> formatDate,
      String? hintText,
      String? dialogHelpText,
      DatePickerMode initialDatePickerMode,
      SupernovaFormFieldValidator<Date>? validator});
}

/// @nodoc
class __$SupernovaDateFormFieldCopyWithImpl<$Res>
    implements _$SupernovaDateFormFieldCopyWith<$Res> {
  __$SupernovaDateFormFieldCopyWithImpl(this._self, this._then);

  final _SupernovaDateFormField _self;
  final $Res Function(_SupernovaDateFormField) _then;

  /// Create a copy of SupernovaDateFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedDate = null,
    Object? firstDate = freezed,
    Object? lastDate = freezed,
    Object? formatDate = null,
    Object? hintText = freezed,
    Object? dialogHelpText = freezed,
    Object? initialDatePickerMode = null,
    Object? validator = freezed,
  }) {
    return _then(_SupernovaDateFormField(
      null == selectedDate
          ? _self.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as ValueNotifier<Date?>,
      firstDate: freezed == firstDate
          ? _self.firstDate
          : firstDate // ignore: cast_nullable_to_non_nullable
              as ValueGetter<Date?>?,
      lastDate: freezed == lastDate
          ? _self.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as ValueGetter<Date?>?,
      formatDate: null == formatDate
          ? _self.formatDate
          : formatDate // ignore: cast_nullable_to_non_nullable
              as Formatter<Date>,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      dialogHelpText: freezed == dialogHelpText
          ? _self.dialogHelpText
          : dialogHelpText // ignore: cast_nullable_to_non_nullable
              as String?,
      initialDatePickerMode: null == initialDatePickerMode
          ? _self.initialDatePickerMode
          : initialDatePickerMode // ignore: cast_nullable_to_non_nullable
              as DatePickerMode,
      validator: freezed == validator
          ? _self.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as SupernovaFormFieldValidator<Date>?,
    ));
  }
}

// dart format on

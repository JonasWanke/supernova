import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:platformx/platformx.dart';
import 'package:supernova/supernova.dart' hide ValueChanged, ValueGetter;

import '../../hooks.dart';
import '../../localization.dart';
import '../form.dart';
import '../form_field.dart';
import '../validators.dart';
import 'utils.dart';

part 'local_month.freezed.dart';

@freezed
class SupernovaLocalMonthFormField extends SupernovaFormFieldBase<LocalMonth>
    with _$SupernovaLocalMonthFormField {
  const factory SupernovaLocalMonthFormField(
    ValueNotifier<LocalMonth?> selectedMonth, {
    ValueGetter<LocalMonth?>? firstMonth,
    ValueGetter<LocalMonth?>? lastMonth,
    @Default(SupernovaLocalMonthFormField.defaultFormatMonth)
        Formatter<LocalMonth> formatMonth,
    String? hintText,
    String? dialogHelpText,
    @Default(LocalMonthPickerMode.year)
        LocalMonthPickerMode initialPickerMode,
    SupernovaFormFieldValidator<LocalMonth>? validator,
  }) = _SupernovaLocalMonthFormField;

  const SupernovaLocalMonthFormField._();

  static String defaultFormatMonth(LocalMonth month) =>
      LocalMonthFormat.long.format(month);

  @override
  LocalMonth? get value => selectedMonth.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaLocalMonthFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => selectedMonth.dispose();
}

class _SupernovaLocalMonthFormFieldWidget extends HookWidget {
  const _SupernovaLocalMonthFormFieldWidget(
    this.common,
    this.onSubmitted,
    this.formField,
  );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaLocalMonthFormField formField;

  @override
  Widget build(BuildContext context) {
    return SupernovaFormFieldWidget(
      common,
      child: FormField<LocalMonth?>(
        initialValue: formField.selectedMonth.value,
        validator:
            common.necessity.validator<LocalMonth>() & formField.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (state) {
          void setValue(LocalMonth? month) {
            state.didChange(month);
            formField.selectedMonth.value = month;
          }

          Future<void> onTap() async {
            final firstMonth =
                formField.firstMonth?.call() ?? const LocalMonth(1900, 1);
            final lastMonth =
                formField.lastMonth?.call() ?? const LocalMonth(2100, 1);
            final initialMonth = formField.value ??
                LocalMonth.current().coerceIn(firstMonth, lastMonth);

            final month = await showLocalMonthPicker(
              context: context,
              initialMonth: initialMonth,
              firstMonth: firstMonth,
              lastMonth: lastMonth,
              helpText: formField.dialogHelpText,
              initialPickerMode: formField.initialPickerMode,
            );
            if (month == null) return;

            setValue(month);
          }

          final horizontalPadding =
              SupernovaFormFieldWidget.horizontalPaddingValue(context);
          return InkWell(
            onTap: SupernovaForm.isEnabled(context) ? onTap : null,
            borderRadius: SupernovaFormFieldWidget.borderRadius(context)
                .resolve(context.directionality),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(child: _buildContent(context)),
                    if (common.necessity.isOptional &&
                        formField.selectedMonth.value != null) ...[
                      const SizedBox(width: 16),
                      ClearButton(onPressed: () => setValue(null)),
                      SizedBox(width: horizontalPadding - 16),
                    ] else
                      SizedBox(width: horizontalPadding),
                  ],
                ),
                if (state.hasError) PaddedFormError(state.errorText!),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        SupernovaFormFieldWidget.horizontalPaddingValue(context),
        16,
        0,
        16,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              formField.selectedMonth.value != null
                  ? formField.formatMonth(formField.selectedMonth.value!)
                  : formField.hintText ?? context.supernovaL10n.choose,
              style: formField.selectedMonth.value == null
                  ? SupernovaFormFieldWidget.hintTextStyle(context)
                  : SupernovaFormFieldWidget.textStyle(context),
            ),
          ),
          const SizedBox(width: 16),
          Icon(
            Icons.calendar_month_outlined,
            size: 16,
            color: context.theme.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}

enum LocalMonthPickerMode { month, year }

class MonthPicker extends HookWidget {
  const MonthPicker({
    super.key,
    required this.currentMonth,
    required this.firstMonth,
    required this.lastMonth,
    required this.selectedMonth,
    required this.onChanged,
  })  : assert(firstMonth <= lastMonth),
        assert(selectedMonth == null || firstMonth <= selectedMonth),
        assert(selectedMonth == null || selectedMonth <= lastMonth);

  static const columnCount = 3;
  static const rowCount = 4;

  final int? currentMonth;
  final int firstMonth;
  final int lastMonth;
  final int? selectedMonth;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    assert(
      MonthPicker.rowCount * MonthPicker.columnCount == DateTime.monthsPerYear,
    );
    assert(debugCheckHasMaterial(context));

    final autoSizeGroup = useAutoSizeGroup();

    Widget buildMonth(int month) =>
        Expanded(child: _buildMonthItem(context, autoSizeGroup, month));
    Widget buildRow(int rowIndex) {
      return Expanded(
        child: Row(
          children: List.generate(
            MonthPicker.columnCount,
            (columnIndex) => buildMonth(
              rowIndex * MonthPicker.columnCount + columnIndex + 1,
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _yearPickerPadding),
      child: Column(
        children: List.generate(MonthPicker.rowCount, buildRow),
      ),
    );
  }

  Widget _buildMonthItem(
    BuildContext context,
    AutoSizeGroup autoSizeGroup,
    int month,
  ) {
    final isSelected = month == selectedMonth;
    final isCurrentMonth = month == currentMonth;
    final isDisabled = month < firstMonth || month > lastMonth;

    const borderRadius = 18.0;
    final colorScheme = context.theme.colorScheme;
    final Color textColor;
    BoxDecoration? decoration;
    if (isSelected) {
      textColor = Colors.white;
      decoration = BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(borderRadius),
      );
    } else if (isDisabled) {
      textColor = colorScheme.background.disabledOnColor;
    } else if (isCurrentMonth) {
      textColor = colorScheme.primary;
      decoration = BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: colorScheme.primary)),
        borderRadius: BorderRadius.circular(borderRadius),
      );
    } else {
      textColor = colorScheme.background.mediumEmphasisOnColor;
    }

    Widget monthItem = Center(
      child: DecoratedBox(
        decoration: decoration ?? const BoxDecoration(),
        child: Semantics(
          selected: isSelected,
          button: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: AutoSizeText(
              LocalMonthFormat.monthOnlyLong.format(LocalMonth(2000, month)),
              style: context.textTheme.bodyMedium!.copyWith(color: textColor),
              textAlign: TextAlign.center,
              maxLines: 1,
              group: autoSizeGroup,
            ),
          ),
        ),
      ),
    );

    if (isDisabled) {
      monthItem = ExcludeSemantics(child: monthItem);
    } else {
      monthItem = InkWell(
        key: ValueKey(month),
        onTap: () => onChanged(month),
        child: monthItem,
      );
    }

    return monthItem;
  }
}

// Copied and heavily modified from Flutter
// https://github.com/flutter/flutter/blob/160e0712a8bb6f2d10dfca703c91e60d0e0a0c5e/packages/flutter/lib/src/material/date_picker.dart

const _calendarPortraitDialogSize = Size(330, 480);
const _calendarLandscapeDialogSize = Size(496, 360);
const _dialogSizeAnimationDuration = Duration(milliseconds: 200);

Future<LocalMonth?> showLocalMonthPicker({
  required BuildContext context,
  required LocalMonth initialMonth,
  required LocalMonth firstMonth,
  required LocalMonth lastMonth,
  String? helpText,
  bool useRootNavigator = true,
  LocalMonthPickerMode initialPickerMode = LocalMonthPickerMode.year,
}) async {
  assert(
    firstMonth <= lastMonth,
    'lastMonth $lastMonth must be on or after firstMonth $firstMonth.',
  );
  assert(
    firstMonth <= initialMonth,
    'initialMonth $initialMonth must be on or after firstMonth $firstMonth.',
  );
  assert(
    initialMonth <= lastMonth,
    'initialMonth $initialMonth must be on or before lastMonth $lastMonth.',
  );
  assert(debugCheckHasMaterialLocalizations(context));

  return showDialog<LocalMonth>(
    context: context,
    useRootNavigator: useRootNavigator,
    builder: (context) => _MonthPickerDialog(
      initialMonth: initialMonth,
      firstMonth: firstMonth,
      lastMonth: lastMonth,
      helpText: helpText,
      initialPickerMode: initialPickerMode,
    ),
  );
}

class _MonthPickerDialog extends StatefulWidget {
  const _MonthPickerDialog({
    required this.initialMonth,
    required this.firstMonth,
    required this.lastMonth,
    this.helpText,
    this.initialPickerMode = LocalMonthPickerMode.year,
  })  : assert(
          firstMonth <= lastMonth,
          'lastMonth $lastMonth must be on or after firstMonth $firstMonth.',
        ),
        assert(
          firstMonth <= initialMonth,
          'initialMonth $initialMonth must be on or after firstMonth '
          '$firstMonth.',
        ),
        assert(
          initialMonth <= lastMonth,
          'initialMonth $initialMonth must be on or before lastMonth '
          '$lastMonth.',
        );

  final LocalMonth initialMonth;
  final LocalMonth firstMonth;
  final LocalMonth lastMonth;
  final String? helpText;
  final LocalMonthPickerMode initialPickerMode;

  @override
  State<_MonthPickerDialog> createState() => _MonthPickerDialogState();
}

class _MonthPickerDialogState extends State<_MonthPickerDialog> {
  late var _selectedMonth = widget.initialMonth;

  final GlobalKey _calendarPickerKey = GlobalKey();

  Size _dialogSize(BuildContext context) {
    switch (context.mediaQuery.orientation) {
      case Orientation.portrait:
        return _calendarPortraitDialogSize;
      case Orientation.landscape:
        return _calendarLandscapeDialogSize;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final localizations = context.materialLocalizations;
    final orientation = context.mediaQuery.orientation;
    final textTheme = theme.textTheme;
    // Constrain the textScaleFactor to the largest supported value to prevent
    // layout issues.
    // TODO(JonasWanke): Update to use `TextScaler`
    // ignore: deprecated_member_use
    final textScaleFactor = math.min(context.mediaQuery.textScaleFactor, 1.3);

    final monthText = LocalMonthFormat.long.format(_selectedMonth);
    final onPrimarySurface = colorScheme.brightness == Brightness.light
        ? colorScheme.onPrimary
        : colorScheme.onSurface;
    final dateStyle = orientation == Orientation.landscape
        ? textTheme.headlineSmall?.copyWith(color: onPrimarySurface)
        : textTheme.headlineMedium?.copyWith(color: onPrimarySurface);

    final actions = Container(
      alignment: AlignmentDirectional.centerEnd,
      constraints: const BoxConstraints(minHeight: 52),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: OverflowBar(
        spacing: 8,
        children: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(localizations.cancelButtonLabel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, _selectedMonth),
            child: Text(localizations.okButtonLabel),
          ),
        ],
      ),
    );

    final picker = _CalendarMonthPicker(
      key: _calendarPickerKey,
      initialMonth: _selectedMonth,
      firstMonth: widget.firstMonth,
      lastMonth: widget.lastMonth,
      onMonthChanged: (month) => setState(() => _selectedMonth = month),
      initialPickerMode: widget.initialPickerMode,
    );

    final header = _LocalMonthPickerHeader(
      helpText: widget.helpText ?? localizations.datePickerHelpText,
      titleText: monthText,
      titleStyle: dateStyle,
      orientation: orientation,
      isShort: orientation == Orientation.landscape,
    );

    final dialogSize = _dialogSize(context) * textScaleFactor;
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      clipBehavior: Clip.antiAlias,
      child: AnimatedContainer(
        width: dialogSize.width,
        height: dialogSize.height,
        duration: _dialogSizeAnimationDuration,
        curve: Curves.easeIn,
        child: MediaQuery(
          // TODO(JonasWanke): Update to use `TextScaler`
          // ignore: deprecated_member_use
          data: context.mediaQuery.copyWith(textScaleFactor: textScaleFactor),
          child: Builder(
            builder: (context) {
              switch (orientation) {
                case Orientation.portrait:
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [header, Expanded(child: picker), actions],
                  );
                case Orientation.landscape:
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      header,
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [Expanded(child: picker), actions],
                        ),
                      ),
                    ],
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}

class _LocalMonthPickerHeader extends StatelessWidget {
  const _LocalMonthPickerHeader({
    required this.helpText,
    required this.titleText,
    required this.titleStyle,
    required this.orientation,
    this.isShort = false,
  });

  static const _datePickerHeaderLandscapeWidth = 152.0;
  static const _datePickerHeaderPortraitHeight = 120.0;
  static const _headerPaddingLandscape = 16.0;

  final String helpText;
  final String titleText;
  final TextStyle? titleStyle;
  final Orientation orientation;
  final bool isShort;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    // The header should use the primary color in light themes and surface color
    // in dark.
    final isDark = colorScheme.brightness == Brightness.dark;
    final primarySurfaceColor =
        isDark ? colorScheme.surface : colorScheme.primary;
    final onPrimarySurfaceColor =
        isDark ? colorScheme.onSurface : colorScheme.onPrimary;

    final helpStyle =
        textTheme.labelSmall?.copyWith(color: onPrimarySurfaceColor);

    final help = Text(
      helpText,
      style: helpStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
    final title = AutoSizeText(
      titleText,
      style: titleStyle,
      maxLines: orientation == Orientation.portrait ? 1 : 2,
    );

    switch (orientation) {
      case Orientation.portrait:
        return SizedBox(
          height: _datePickerHeaderPortraitHeight,
          child: Material(
            color: primarySurfaceColor,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 24, end: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  help,
                  const Flexible(child: SizedBox(height: 38)),
                  title,
                ],
              ),
            ),
          ),
        );
      case Orientation.landscape:
        return SizedBox(
          width: _datePickerHeaderLandscapeWidth,
          child: Material(
            color: primarySurfaceColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: _headerPaddingLandscape,
                  ),
                  child: help,
                ),
                SizedBox(height: isShort ? 16 : 56),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: _headerPaddingLandscape,
                    ),
                    child: title,
                  ),
                ),
              ],
            ),
          ),
        );
    }
  }
}

// Copied and heavily modified from Flutter
// https://github.com/flutter/flutter/blob/160e0712a8bb6f2d10dfca703c91e60d0e0a0c5e/packages/flutter/lib/src/material/calendar_date_picker.dart

const _yearPickerPadding = 16.0;
const _subHeaderHeight = 52.0;

class _CalendarMonthPicker extends StatefulWidget {
  const _CalendarMonthPicker({
    super.key,
    required this.initialMonth,
    required this.firstMonth,
    required this.lastMonth,
    required this.onMonthChanged,
    this.initialPickerMode = LocalMonthPickerMode.year,
  })  : assert(
          firstMonth <= lastMonth,
          'lastMonth $lastMonth must be on or after firstMonth $firstMonth.',
        ),
        assert(
          firstMonth <= initialMonth,
          'initialMonth $initialMonth must be on or after firstMonth '
          '$firstMonth.',
        ),
        assert(
          initialMonth <= lastMonth,
          'initialMonth $initialMonth must be on or before lastMonth '
          '$lastMonth.',
        );

  final LocalMonth initialMonth;
  final LocalMonth firstMonth;
  final LocalMonth lastMonth;
  final ValueChanged<LocalMonth> onMonthChanged;
  final LocalMonthPickerMode initialPickerMode;

  @override
  State<_CalendarMonthPicker> createState() => _CalendarMonthPickerState();
}

class _CalendarMonthPickerState extends State<_CalendarMonthPicker> {
  bool _announcedInitialMonth = false;
  late LocalMonthPickerMode _mode;
  late int _currentDisplayedYear;
  late LocalMonth _selectedMonth;
  final GlobalKey _monthPickerKey = GlobalKey();
  final GlobalKey _yearPickerKey = GlobalKey();
  late MaterialLocalizations _localizations;
  late TextDirection _textDirection;

  @override
  void initState() {
    super.initState();
    _mode = widget.initialPickerMode;
    _currentDisplayedYear = widget.initialMonth.year;
    _selectedMonth = widget.initialMonth;
  }

  @override
  void didUpdateWidget(_CalendarMonthPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialPickerMode != oldWidget.initialPickerMode) {
      _mode = widget.initialPickerMode;
    }
    if (widget.initialMonth != oldWidget.initialMonth) {
      _currentDisplayedYear = widget.initialMonth.year;
      _selectedMonth = widget.initialMonth;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    assert(debugCheckHasMaterial(context));
    assert(debugCheckHasMaterialLocalizations(context));
    assert(debugCheckHasDirectionality(context));
    _localizations = context.materialLocalizations;
    _textDirection = Directionality.of(context);
    if (!_announcedInitialMonth) {
      _announcedInitialMonth = true;
      unawaited(
        SemanticsService.announce(
          LocalMonthFormat.long.format(_selectedMonth),
          _textDirection,
        ),
      );
    }
  }

  void _vibrate() {
    switch (PlatformX.platform) {
      case PlatformEnum.Android:
      case PlatformEnum.Web:
        unawaited(HapticFeedback.vibrate());
      case PlatformEnum.IOS:
      case PlatformEnum.Windows:
      case PlatformEnum.Linux:
      case PlatformEnum.MacOS:
      case PlatformEnum.Fuchsia:
        break;
    }
  }

  void _handleModeChanged(LocalMonthPickerMode mode) {
    _vibrate();
    setState(() {
      _mode = mode;

      final String message;
      switch (_mode) {
        case LocalMonthPickerMode.month:
          message = LocalMonthFormat.long.format(_selectedMonth);
        case LocalMonthPickerMode.year:
          message = _localizations.formatYear(_selectedMonth.dateTime);
      }
      unawaited(SemanticsService.announce(message, _textDirection));
    });
  }

  void _handleYearChanged(int year) {
    assert(widget.firstMonth.year <= year);
    assert(year <= widget.lastMonth.year);

    _vibrate();
    setState(() {
      _mode = LocalMonthPickerMode.month;
      _currentDisplayedYear = year;
    });
  }

  void _handleMonthChanged(LocalMonth month) {
    assert(widget.firstMonth <= month);
    assert(month <= widget.lastMonth);

    _vibrate();
    setState(() {
      _selectedMonth = month;
      widget.onMonthChanged(_selectedMonth);
    });
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    assert(debugCheckHasMaterialLocalizations(context));
    assert(debugCheckHasDirectionality(context));
    return Column(
      children: [
        _LocalMonthPickerModeToggleButton(
          mode: _mode,
          title: _localizations.formatYear(DateTime(_currentDisplayedYear)),
          onTitlePressed: () {
            // Toggle the month/year mode.
            _handleModeChanged(
              _mode == LocalMonthPickerMode.month
                  ? LocalMonthPickerMode.year
                  : LocalMonthPickerMode.month,
            );
          },
        ),
        Expanded(child: _buildPicker()),
      ],
    );
  }

  Widget _buildPicker() {
    switch (_mode) {
      case LocalMonthPickerMode.month:
        final currentMonth = LocalMonth.current();
        return MonthPicker(
          key: _monthPickerKey,
          currentMonth: _currentDisplayedYear == currentMonth.year
              ? currentMonth.month
              : null,
          firstMonth: widget.firstMonth.year < _currentDisplayedYear
              ? 1
              : widget.firstMonth.month,
          lastMonth: widget.lastMonth.year > _currentDisplayedYear
              ? 12
              : widget.lastMonth.month,
          selectedMonth: _selectedMonth.month,
          onChanged: (month) =>
              _handleMonthChanged(LocalMonth(_currentDisplayedYear, month)),
        );
      case LocalMonthPickerMode.year:
        return YearPicker(
          key: _yearPickerKey,
          firstDate: widget.firstMonth.dateTime,
          lastDate: widget.lastMonth.dateTime,
          selectedDate: _selectedMonth.dateTime,
          onChanged: (it) => _handleYearChanged(it.year),
        );
    }
  }
}

/// A button that used to toggle the [LocalMonthPickerMode] for a date picker.
///
/// This appears above the calendar grid and allows the user to toggle the
/// [LocalMonthPickerMode] to display either the calendar view or the year list.
class _LocalMonthPickerModeToggleButton extends StatefulWidget {
  const _LocalMonthPickerModeToggleButton({
    required this.mode,
    required this.title,
    required this.onTitlePressed,
  });

  /// The current display of the calendar picker.
  final LocalMonthPickerMode mode;

  /// The text that displays the current month/year being viewed.
  final String title;

  /// The callback when the title is pressed.
  final VoidCallback onTitlePressed;

  @override
  _LocalMonthPickerModeToggleButtonState createState() =>
      _LocalMonthPickerModeToggleButtonState();
}

class _LocalMonthPickerModeToggleButtonState
    extends State<_LocalMonthPickerModeToggleButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: widget.mode == LocalMonthPickerMode.year ? 0.5 : 0,
      upperBound: 0.5,
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(_LocalMonthPickerModeToggleButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.mode == widget.mode) return;

    if (widget.mode == LocalMonthPickerMode.year) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final controlColor = colorScheme.onSurface.withOpacity(0.6);

    return Container(
      height: _subHeaderHeight,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Semantics(
        label: context.materialLocalizations.selectYearSemanticsLabel,
        excludeSemantics: true,
        button: true,
        child: InkWell(
          onTap: widget.onTitlePressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    widget.title,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleSmall?.copyWith(color: controlColor),
                  ),
                ),
                RotationTransition(
                  turns: _controller,
                  child: Icon(Icons.arrow_drop_down, color: controlColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

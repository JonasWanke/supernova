import 'dart:core' as core;
import 'dart:core';
import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:chrono/chrono.dart';
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

part 'year_month.freezed.dart';

@freezed
class SupernovaYearMonthFormField extends SupernovaFormFieldBase<YearMonth>
    with _$SupernovaYearMonthFormField {
  const factory SupernovaYearMonthFormField(
    ValueNotifier<YearMonth?> selectedYearMonth, {
    ValueGetter<YearMonth?>? firstYearMonth,
    ValueGetter<YearMonth?>? lastYearMonth,
    required Formatter<YearMonth> formatYearMonth,
    String? hintText,
    String? dialogHelpText,
    @Default(YearMonthPickerMode.year) YearMonthPickerMode initialPickerMode,
    SupernovaFormFieldValidator<YearMonth>? validator,
  }) = _SupernovaYearMonthFormField;

  const SupernovaYearMonthFormField._();

  @override
  YearMonth? get value => selectedYearMonth.value;

  @override
  Widget build(SupernovaFormFieldData common, VoidCallback? onSubmitted) =>
      _SupernovaYearMonthFormFieldWidget(common, onSubmitted, this);

  @override
  void dispose() => selectedYearMonth.dispose();
}

class _SupernovaYearMonthFormFieldWidget extends HookWidget {
  const _SupernovaYearMonthFormFieldWidget(
    this.common,
    this.onSubmitted,
    this.formField,
  );

  final SupernovaFormFieldData common;
  final VoidCallback? onSubmitted;
  final SupernovaYearMonthFormField formField;

  @override
  Widget build(BuildContext context) {
    return SupernovaFormFieldWidget(
      common,
      child: FormField<YearMonth?>(
        initialValue: formField.selectedYearMonth.value,
        validator:
            common.necessity.validator<YearMonth>() & formField.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (state) {
          void setValue(YearMonth? month) {
            state.didChange(month);
            formField.selectedYearMonth.value = month;
          }

          Future<void> onTap() async {
            final firstYearMonth = formField.firstYearMonth?.call() ??
                const Year(1900).months.start;
            final lastYearMonth = formField.lastYearMonth?.call() ??
                const Year(2100).months.endInclusive;
            final initialYearMonth = formField.value ??
                YearMonth.currentInLocalZone()
                    .coerceIn(firstYearMonth, lastYearMonth);

            final month = await showYearMonthPicker(
              context: context,
              initialYearMonth: initialYearMonth,
              firstYearMonth: firstYearMonth,
              lastYearMonth: lastYearMonth,
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
                        formField.selectedYearMonth.value != null) ...[
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
              formField.selectedYearMonth.value != null
                  ? formField
                      .formatYearMonth(formField.selectedYearMonth.value!)
                  : formField.hintText ?? context.supernovaL10n.choose,
              style: formField.selectedYearMonth.value == null
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

enum YearMonthPickerMode { month, year }

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

  final Month? currentMonth;
  final Month firstMonth;
  final Month lastMonth;
  final Month? selectedMonth;
  final ValueChanged<Month> onChanged;

  @override
  Widget build(BuildContext context) {
    assert(
      MonthPicker.rowCount * MonthPicker.columnCount == Months.perYear,
    );
    assert(debugCheckHasMaterial(context));

    final autoSizeGroup = useAutoSizeGroup();

    Widget buildMonth(Month month) =>
        Expanded(child: _buildMonthItem(context, autoSizeGroup, month));
    Widget buildRow(int rowIndex) {
      return Expanded(
        child: Row(
          children: List.generate(
            MonthPicker.columnCount,
            (columnIndex) => buildMonth(
              Month.fromIndex(rowIndex * MonthPicker.columnCount + columnIndex)
                  .unwrap(),
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
    Month month,
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
      textColor = colorScheme.surface.disabledOnColor;
    } else if (isCurrentMonth) {
      textColor = colorScheme.primary;
      decoration = BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: colorScheme.primary)),
        borderRadius: BorderRadius.circular(borderRadius),
      );
    } else {
      textColor = colorScheme.surface.mediumEmphasisOnColor;
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
              context.supernovaL10n.month(month),
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
const _dialogSizeAnimationDuration = core.Duration(milliseconds: 200);

Future<YearMonth?> showYearMonthPicker({
  required BuildContext context,
  required YearMonth initialYearMonth,
  required YearMonth firstYearMonth,
  required YearMonth lastYearMonth,
  String? helpText,
  bool useRootNavigator = true,
  YearMonthPickerMode initialPickerMode = YearMonthPickerMode.year,
}) async {
  assert(
    firstYearMonth <= lastYearMonth,
    'lastYearMonth $lastYearMonth must be on or after firstYearMonth '
    '$firstYearMonth.',
  );
  assert(
    firstYearMonth <= initialYearMonth,
    'initialYearMonth $initialYearMonth must be on or after firstYearMonth '
    '$firstYearMonth.',
  );
  assert(
    initialYearMonth <= lastYearMonth,
    'initialYearMonth $initialYearMonth must be on or before lastYearMonth '
    '$lastYearMonth.',
  );
  assert(debugCheckHasMaterialLocalizations(context));

  return showDialog<YearMonth>(
    context: context,
    useRootNavigator: useRootNavigator,
    builder: (context) => _MonthPickerDialog(
      initialYearMonth: initialYearMonth,
      firstYearMonth: firstYearMonth,
      lastYearMonth: lastYearMonth,
      helpText: helpText,
      initialPickerMode: initialPickerMode,
    ),
  );
}

class _MonthPickerDialog extends StatefulWidget {
  const _MonthPickerDialog({
    required this.initialYearMonth,
    required this.firstYearMonth,
    required this.lastYearMonth,
    this.helpText,
    this.initialPickerMode = YearMonthPickerMode.year,
  })  : assert(
          firstYearMonth <= lastYearMonth,
          'lastYearMonth $lastYearMonth must be on or after firstYearMonth '
          '$firstYearMonth.',
        ),
        assert(
          firstYearMonth <= initialYearMonth,
          'initialYearMonth $initialYearMonth must be on or after '
          'firstYearMonth $firstYearMonth.',
        ),
        assert(
          initialYearMonth <= lastYearMonth,
          'initialYearMonth $initialYearMonth must be on or before '
          'lastYearMonth $lastYearMonth.',
        );

  final YearMonth initialYearMonth;
  final YearMonth firstYearMonth;
  final YearMonth lastYearMonth;
  final String? helpText;
  final YearMonthPickerMode initialPickerMode;

  @override
  State<_MonthPickerDialog> createState() => _MonthPickerDialogState();
}

class _MonthPickerDialogState extends State<_MonthPickerDialog> {
  late var _selectedYearMonth = widget.initialYearMonth;

  final GlobalKey _calendarPickerKey = GlobalKey();

  Size _dialogSize(BuildContext context) {
    return switch (context.mediaQuery.orientation) {
      Orientation.portrait => _calendarPortraitDialogSize,
      Orientation.landscape => _calendarLandscapeDialogSize
    };
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

    final monthText = localizations.formatMonthYear(
      _selectedYearMonth.dateTimes.start.asCoreDateTimeInLocalZone,
    );
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
            onPressed: () => Navigator.pop(context, _selectedYearMonth),
            child: Text(localizations.okButtonLabel),
          ),
        ],
      ),
    );

    final picker = _CalendarMonthPicker(
      key: _calendarPickerKey,
      initialYearMonth: _selectedYearMonth,
      firstYearMonth: widget.firstYearMonth,
      lastYearMonth: widget.lastYearMonth,
      onMonthChanged: (month) => setState(() => _selectedYearMonth = month),
      initialPickerMode: widget.initialPickerMode,
    );

    final header = _YearMonthPickerHeader(
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
          child: switch (orientation) {
            Orientation.portrait => Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [header, Expanded(child: picker), actions],
              ),
            Orientation.landscape => Row(
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
              ),
          },
        ),
      ),
    );
  }
}

class _YearMonthPickerHeader extends StatelessWidget {
  const _YearMonthPickerHeader({
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

    return switch (orientation) {
      Orientation.portrait => SizedBox(
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
        ),
      Orientation.landscape => SizedBox(
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
        )
    };
  }
}

// Copied and heavily modified from Flutter
// https://github.com/flutter/flutter/blob/160e0712a8bb6f2d10dfca703c91e60d0e0a0c5e/packages/flutter/lib/src/material/calendar_date_picker.dart

const _yearPickerPadding = 16.0;
const _subHeaderHeight = 52.0;

class _CalendarMonthPicker extends StatefulWidget {
  const _CalendarMonthPicker({
    super.key,
    required this.initialYearMonth,
    required this.firstYearMonth,
    required this.lastYearMonth,
    required this.onMonthChanged,
    this.initialPickerMode = YearMonthPickerMode.year,
  })  : assert(
          firstYearMonth <= lastYearMonth,
          'lastYearMonth $lastYearMonth must be on or after firstYearMonth '
          '$firstYearMonth.',
        ),
        assert(
          firstYearMonth <= initialYearMonth,
          'initialYearMonth $initialYearMonth must be on or after '
          'firstYearMonth $firstYearMonth.',
        ),
        assert(
          initialYearMonth <= lastYearMonth,
          'initialYearMonth $initialYearMonth must be on or before '
          'lastYearMonth $lastYearMonth.',
        );

  final YearMonth initialYearMonth;
  final YearMonth firstYearMonth;
  final YearMonth lastYearMonth;
  final ValueChanged<YearMonth> onMonthChanged;
  final YearMonthPickerMode initialPickerMode;

  @override
  State<_CalendarMonthPicker> createState() => _CalendarMonthPickerState();
}

class _CalendarMonthPickerState extends State<_CalendarMonthPicker> {
  bool _announcedInitialYearMonth = false;
  late YearMonthPickerMode _mode;
  late Year _currentDisplayedYear;
  late YearMonth _selectedYearMonth;
  final GlobalKey _monthPickerKey = GlobalKey();
  final GlobalKey _yearPickerKey = GlobalKey();
  late MaterialLocalizations _localizations;
  late TextDirection _textDirection;

  @override
  void initState() {
    super.initState();
    _mode = widget.initialPickerMode;
    _currentDisplayedYear = widget.initialYearMonth.year;
    _selectedYearMonth = widget.initialYearMonth;
  }

  @override
  void didUpdateWidget(_CalendarMonthPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialPickerMode != oldWidget.initialPickerMode) {
      _mode = widget.initialPickerMode;
    }
    if (widget.initialYearMonth != oldWidget.initialYearMonth) {
      _currentDisplayedYear = widget.initialYearMonth.year;
      _selectedYearMonth = widget.initialYearMonth;
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
    if (!_announcedInitialYearMonth) {
      _announcedInitialYearMonth = true;
      unawaited(
        SemanticsService.announce(
          _localizations.formatMonthYear(
            _selectedYearMonth.dateTimes.start.asCoreDateTimeInLocalZone,
          ),
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

  void _handleModeChanged(YearMonthPickerMode mode) {
    _vibrate();
    setState(() {
      _mode = mode;

      final message = switch (_mode) {
        YearMonthPickerMode.month => _localizations.formatMonthYear(
            _selectedYearMonth.dateTimes.start.asCoreDateTimeInLocalZone,
          ),
        YearMonthPickerMode.year => _localizations.formatYear(
            _selectedYearMonth.dateTimes.start.asCoreDateTimeInLocalZone,
          )
      };
      unawaited(SemanticsService.announce(message, _textDirection));
    });
  }

  void _handleYearChanged(Year year) {
    assert(widget.firstYearMonth.year <= year);
    assert(year <= widget.lastYearMonth.year);

    _vibrate();
    setState(() {
      _mode = YearMonthPickerMode.month;
      _currentDisplayedYear = year;
    });
  }

  void _handleMonthChanged(YearMonth month) {
    assert(widget.firstYearMonth <= month);
    assert(month <= widget.lastYearMonth);

    _vibrate();
    setState(() {
      _selectedYearMonth = month;
      widget.onMonthChanged(_selectedYearMonth);
    });
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    assert(debugCheckHasMaterialLocalizations(context));
    assert(debugCheckHasDirectionality(context));
    return Column(
      children: [
        _YearMonthPickerModeToggleButton(
          mode: _mode,
          title: _localizations.formatYear(
            _currentDisplayedYear.dateTimes.start.asCoreDateTimeInLocalZone,
          ),
          onTitlePressed: () {
            // Toggle the month/year mode.
            _handleModeChanged(
              _mode == YearMonthPickerMode.month
                  ? YearMonthPickerMode.year
                  : YearMonthPickerMode.month,
            );
          },
        ),
        Expanded(child: _buildPicker()),
      ],
    );
  }

  Widget _buildPicker() {
    switch (_mode) {
      case YearMonthPickerMode.month:
        final currentMonth = YearMonth.currentInLocalZone();
        return MonthPicker(
          key: _monthPickerKey,
          currentMonth: _currentDisplayedYear == currentMonth.year
              ? currentMonth.month
              : null,
          firstMonth: widget.firstYearMonth.year < _currentDisplayedYear
              ? Month.january
              : widget.firstYearMonth.month,
          lastMonth: widget.lastYearMonth.year > _currentDisplayedYear
              ? Month.december
              : widget.lastYearMonth.month,
          selectedMonth: _selectedYearMonth.month,
          onChanged: (month) =>
              _handleMonthChanged(YearMonth(_currentDisplayedYear, month)),
        );
      case YearMonthPickerMode.year:
        return YearPicker(
          key: _yearPickerKey,
          firstDate:
              widget.firstYearMonth.dateTimes.start.asCoreDateTimeInLocalZone,
          lastDate:
              widget.lastYearMonth.dateTimes.start.asCoreDateTimeInLocalZone,
          selectedDate:
              _selectedYearMonth.dateTimes.start.asCoreDateTimeInLocalZone,
          onChanged: (it) => _handleYearChanged(Year(it.year)),
        );
    }
  }
}

/// A button that used to toggle the [YearMonthPickerMode] for a date picker.
///
/// This appears above the calendar grid and allows the user to toggle the
/// [YearMonthPickerMode] to display either the calendar view or the year list.
class _YearMonthPickerModeToggleButton extends StatefulWidget {
  const _YearMonthPickerModeToggleButton({
    required this.mode,
    required this.title,
    required this.onTitlePressed,
  });

  /// The current display of the calendar picker.
  final YearMonthPickerMode mode;

  /// The text that displays the current month/year being viewed.
  final String title;

  /// The callback when the title is pressed.
  final VoidCallback onTitlePressed;

  @override
  _YearMonthPickerModeToggleButtonState createState() =>
      _YearMonthPickerModeToggleButtonState();
}

class _YearMonthPickerModeToggleButtonState
    extends State<_YearMonthPickerModeToggleButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: widget.mode == YearMonthPickerMode.year ? 0.5 : 0,
      upperBound: 0.5,
      duration: const core.Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(_YearMonthPickerModeToggleButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.mode == widget.mode) return;

    if (widget.mode == YearMonthPickerMode.year) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final controlColor = colorScheme.onSurface.withValues(alpha: 0.6);

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

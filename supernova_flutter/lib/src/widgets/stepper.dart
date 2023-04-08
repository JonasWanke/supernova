import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supernova/supernova.dart' hide ValueGetter;

import '../hooks.dart';

@immutable
class CommonStepState {
  late final VoidCallback _showNextStep;
  VoidCallback get showNextStep => _showNextStep;
}

abstract class StepState {
  StepState.use(this.common);

  final CommonStepState common;

  final formKey = useGlobalKey<FormState>();
  bool validate() => formKey.currentState!.validate();
  String? extraValidation(BuildContext context) => null;

  void requestFocus();

  Widget build();
}

@immutable
class Stepper<S extends StepState> {
  const Stepper._(
    this.context, {
    required this.scaffoldMessengerKey,
    required this.pageController,
    required this.currentIndex,
    required this.states,
  });

  static Stepper<S> use<S extends StepState>(
    List<S> states, {
    GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
  }) {
    final pageController = usePageController();
    final currentIndex = useListenableSelector(
      pageController,
      () => pageController.hasClients ? pageController.page!.round() : 0,
    );

    final stepper = Stepper._(
      useContext(),
      scaffoldMessengerKey: scaffoldMessengerKey,
      pageController: pageController,
      currentIndex: currentIndex,
      states: states,
    );
    states.firstOrNull?.common._showNextStep = stepper.showNextStep;
    return stepper;
  }

  final BuildContext context;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;

  final PageController pageController;

  final List<S> states;
  int get stepCount => states.length;

  final int currentIndex;
  bool get isFirstStep => currentIndex == 0;
  bool get isLastStep => currentIndex == states.lastIndex;
  S get currentState => states[currentIndex];

  bool _canVisitStep(int index) {
    assert(0 <= index && index < stepCount);
    return states.take(index).every((it) => it.validate());
  }

  bool _checkCurrentExtraValidation() {
    final errorMessage = states[currentIndex].extraValidation(context);
    if (errorMessage == null) return true;

    (scaffoldMessengerKey?.currentState! ?? context.scaffoldMessenger)
        .showSimpleSnackBar(errorMessage);
    return false;
  }

  /// Shows the step with the given [index] without validating the previous
  /// steps.
  Future<void> showReachableStep(int index) async {
    assert(states.isValidIndex(index));

    await pageController.animateToPage(
      index,
      duration: 250.milliseconds,
      curve: Curves.ease,
    );
    states[index].requestFocus();
  }

  Future<void> showPreviousStep() => showReachableStep(currentIndex - 1);
  Future<void> showNextStep() async {
    // This calls [FormState.validate] internally and hence also shows
    // error messages where appropriate.
    if (!_canVisitStep(currentIndex + 1)) return;

    if (!_checkCurrentExtraValidation()) return;

    await showReachableStep(currentIndex + 1);
  }

  bool validateAllSteps() {
    assert(currentIndex == states.lastIndex);

    // All previous steps must be valid, otherwise, we couldn't view this
    // step.
    return states.last.validate() && _checkCurrentExtraValidation();
  }
}

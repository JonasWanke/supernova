// TODO(JonasWanke): remove when updating Flutter
// ignore_for_file: unnecessary_ignore

extension BoolSupernova on bool {
  /// The logical operation `this → consequent`.
  // ignore: avoid_positional_boolean_parameters
  bool implies(bool consequent) => !this || consequent;
}

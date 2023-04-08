extension BoolSupernova on bool {
  /// The logical operation `this → consequent`.
  // ignore: avoid_positional_boolean_parameters
  bool implies(bool consequent) => !this || consequent;
}

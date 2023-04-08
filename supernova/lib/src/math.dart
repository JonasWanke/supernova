extension DoubleSupernova on double {
  bool get isWholeNumber => this == roundToDouble();

  double mapRange(double min, double max, double targetMin, double targetMax) =>
      targetMin + (targetMax - targetMin) / (max - min) * (this - min);
}

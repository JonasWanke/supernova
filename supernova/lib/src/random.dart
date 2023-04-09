import 'dart:math';

extension RandomSupernova on Random {
  double nextDoubleInRange(double min, double max) =>
      min + nextDouble() * (max - min);
}

extension DurationSupernova on Duration {
  static Duration fromJson(int json) => Duration(milliseconds: json);
  int toJson() => inMilliseconds;

  double operator /(Duration otherDuration) =>
      inMicroseconds / otherDuration.inMicroseconds;
}

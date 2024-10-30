import 'package:chrono/chrono.dart';
import 'package:flutter/material.dart';

extension TimeSupernovaFlutter on Time {
  TimeOfDay get timeOfDay => TimeOfDay(hour: hour, minute: minute);
}

extension TimeOfDaySupernovaFlutter on TimeOfDay {
  Time get localTime => Time.from(hour, minute).unwrap();
}

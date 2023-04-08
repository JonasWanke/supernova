import 'package:flutter/material.dart';
import 'package:supernova/supernova.dart';

extension LocalTimeSupernovaFlutter on LocalTime {
  TimeOfDay get timeOfDay => TimeOfDay(hour: hour, minute: minute);
}

extension TimeOfDaySupernovaFlutter on TimeOfDay {
  LocalTime get localTime => LocalTime(hour, minute, 0);
}

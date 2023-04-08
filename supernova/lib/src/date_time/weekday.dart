enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  static Weekday fromDartInt(int weekday) {
    assert(DateTime.monday <= weekday && weekday <= DateTime.sunday);
    return values[weekday - DateTime.monday];
  }

  int get dartInt => DateTime.monday + index;
}

import 'dart:math';

class Util {
  const Util._();

  /// Returns a list of randomly picked strings.
  ///
  /// [list] is the list to pick from.
  ///
  /// [n] is the number of strings to pick.
  static List<String> pickN({required List<String> list, required int n}) {
    return [for (var i = 0; i < n; i++) list[Random().nextInt(list.length)]];
  }

  /// Returns the number of days in the specified month.
  ///
  /// This function assumes the use of the Gregorian calendar or the proleptic
  /// Gregorian calendar.
  static int daysInMonth(int year, int month) {
    // Days in a month. This array uses 1-based month numbers, i.e. January is
    // the 1-st element in the array, not the 0-th.
    const daysInMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    return (month == DateTime.february && isLeapYear(year))
        ? 29
        : daysInMonth[month];
  }

  /// Returns true if [year] is a leap year.
  ///
  /// This implements the Gregorian calendar leap year rules wherein a year is
  /// considered to be a leap year if it is divisible by 4, excepting years
  /// divisible by 100, but including years divisible by 400.
  ///
  /// This function assumes the use of the Gregorian calendar or the proleptic
  /// Gregorian calendar.
  static bool isLeapYear(int year) =>
      (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
}

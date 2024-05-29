import 'dart:math';

import 'package:imitatio/src/datasets/date.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/util.dart';

/// Provider of data related to date and time.
class Date {
  const Date._();

  /// Returns random date.
  ///
  /// [start] is optional start year (default is 2000).
  ///
  /// [end] is optional end year (default is current year).
  ///
  /// Example:
  /// ```dart
  /// Date.date(); // "2015-9-10"
  /// Date.date(start: 2022, end: 2022); // "2022-8-20"
  /// ```
  static String date({int start = 2000, int? end}) {
    final random = Random();
    final endYear = end ?? DateTime.now().year;
    final year = random.nextInt(endYear + 1 - start) + start;
    final month = random.nextInt(12) + 1;
    final day = random.nextInt(Util.daysInMonth(year: year, month: month)) + 1;
    return '$year-$month-$day';
  }

  /// Returns day of the week.
  ///
  /// [isAbbr] is optional name abbreviation (default is false).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Date.dayOfWeek(); // "Monday"
  /// Date.dayOfWeek(isAbbr: true); // "Sun."
  /// ```
  static String dayOfWeek({bool isAbbr = false, Locale locale = Locale.en}) {
    final random = Random();
    final day = DateData.locale[locale.name]!.day[isAbbr ? 'abbr' : 'name']!;
    return day[random.nextInt(day.length)];
  }
}

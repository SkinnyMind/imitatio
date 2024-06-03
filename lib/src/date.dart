import 'dart:math';

import 'package:imitatio/src/datasets/date.dart';
import 'package:imitatio/src/datasets/international/date.dart';
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
    final day = DateData.locale(locale).day(isAbbr: isAbbr);
    return day[random.nextInt(day.length)];
  }

  /// Returns a random year.
  ///
  /// [min] is optional minumum value (default is 1990).
  ///
  /// [max] is optional maximum value (default is current year).
  ///
  /// Example:
  /// ```dart
  /// Date.year(); // 2007
  /// Date.year(min: 1800, max: 2000); // 1808
  /// ```
  static int year({int min = 1990, int? max}) {
    final random = Random();
    final maxYear = max ?? DateTime.now().year;
    return random.nextInt(maxYear + 1 - min) + min;
  }

  /// Returns a random week number with year.
  ///
  /// [start] is optional starting year (default is 2017).
  ///
  /// [end] is optional ending year (default is current year)
  ///
  /// Example:
  /// ```dart
  /// Date.weekDate(); // "2022-W48"
  /// Date.weekDate(start: 1800, end: 2000); // "1855-W10"
  /// ```
  static String weekDate({int start = 2017, int? end}) {
    final year = Date.year(min: start, max: end);
    final week = Random().nextInt(52) + 1;
    return "$year-W$week";
  }

  /// Returns a random month of the year.
  ///
  /// [isAbbr] is optional month name abbreviation (default is false).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Date.month(); // "July"
  /// Date.month(isAbbr: true); // "Jan."
  /// ```
  static String month({bool isAbbr = false, Locale locale = Locale.en}) {
    final random = Random();
    final month = DateData.locale(locale).month(isAbbr: isAbbr);
    return month[random.nextInt(month.length)];
  }

  /// Returns a random century.
  ///
  /// Example:
  /// ```dart
  /// Date.century(); // "XIII"
  /// ```
  static String century() =>
      IntDateData.romanNums[Random().nextInt(IntDateData.romanNums.length)];

  /// Returns a random periodicity string.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Date.periodicity(); // "Often"
  /// ```
  static String periodicity({Locale locale = Locale.en}) {
    final random = Random();
    final periodicity = DateData.locale(locale).periodicity;
    return periodicity[random.nextInt(periodicity.length)];
  }

  /// Returns a random day of the month, from 1 to 31.
  ///
  /// Example:
  /// ```dart
  /// Date.dayOfMonth(); // 18
  /// ```
  static int dayOfMonth() => Random().nextInt(31) + 1;

  /// Returns a random timezone.
  ///
  /// [region] is optional [TimezoneRegion].
  ///
  /// Example:
  /// ```dart
  /// Date.timezone() // "Asia/Kathmandu"
  /// Date.timezone(region: TimezoneRegion.europe) // "Europe/Stockholm"
  /// ```
  static String timezone({TimezoneRegion? region}) {
    final timezone = region ??
        TimezoneRegion.values[Random().nextInt(TimezoneRegion.values.length)];
    final data = IntDateData.timezones(timezone);
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random GMT offset value.
  ///
  /// Example:
  /// ```dart
  /// Date.gmtOffset(); // "UTC +11:00"
  /// ```
  static String gmtOffset() =>
      IntDateData.gmtOffsets[Random().nextInt(IntDateData.gmtOffsets.length)];
}

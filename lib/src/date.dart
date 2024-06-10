import 'dart:math';

import 'package:imitatio/src/datasets/date.dart';
import 'package:imitatio/src/datasets/international/date.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to date and time.
class Date {
  /// Provides data related to date and time.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Date({this.locale = Locale.en, this.seed});

  final Locale locale;

  final int? seed;

  /// Returns random date in the YYYY-MM-DD format.
  ///
  /// [start] is optional start year (default is 2000).
  ///
  /// [end] is optional end year (default is current year).
  ///
  /// Throws a [RangeError] if [start] or [end] is negative or [start] is
  /// greater than [end].
  ///
  /// Example:
  /// ```dart
  /// Date().date(); // "2015-09-10"
  /// Date().date(start: 2022, end: 2022); // "2022-08-20"
  /// ```
  String date({int start = 2000, int? end}) {
    final endYear = end ?? DateTime.now().year;

    if (start.isNegative || endYear.isNegative) {
      throw RangeError(
        'start and end should be positive integers',
      );
    }

    if (start > endYear) {
      throw RangeError.value(
        start,
        'start',
        'start cannot be greater than end',
      );
    }

    final random = Random(seed);
    final year = random.nextInt(endYear + 1 - start) + start;
    final month = random.nextInt(12) + 1;
    final day = random.nextInt(Util.daysInMonth(year: year, month: month)) + 1;
    final paddedMonth = month.toString().padLeft(2, '0');
    final paddedDay = day.toString().padLeft(2, '0');
    return '$year-$paddedMonth-$paddedDay';
  }

  /// Returns day of the week.
  ///
  /// [isAbbr] is optional name abbreviation (default is false).
  ///
  /// Example:
  /// ```dart
  /// Date().dayOfWeek(); // "Monday"
  /// Date().dayOfWeek(isAbbr: true); // "Sun."
  /// ```
  String dayOfWeek({bool isAbbr = false}) {
    final data = DateData.locale(locale).days(isAbbr: isAbbr);
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random year.
  ///
  /// [min] is optional minumum value (default is 1990).
  ///
  /// [max] is optional maximum value (default is current year).
  ///
  /// Throws a [RangeError] if [min] or [max] is negative or [min] is
  /// greater than [max].
  ///
  /// Example:
  /// ```dart
  /// Date().year(); // 2007
  /// Date().year(min: 1800, max: 2000); // 1808
  /// ```
  int year({int min = 1990, int? max}) {
    final maxYear = max ?? DateTime.now().year;

    if (min.isNegative || maxYear.isNegative) {
      throw RangeError(
        'min and max should be positive integers',
      );
    }

    if (min > maxYear) {
      throw RangeError.value(
        min,
        'min',
        'min cannot be greater than end',
      );
    }

    return Random(seed).nextInt(maxYear + 1 - min) + min;
  }

  /// Returns a random week number with year.
  ///
  /// [start] is optional starting year (default is 2017).
  ///
  /// [end] is optional ending year (default is current year).
  ///
  /// Throws a [RangeError] if [start] or [end] is negative or [start] is
  /// greater than [end].
  ///
  /// Example:
  /// ```dart
  /// Date().weekDate(); // "2022-W48"
  /// Date().weekDate(start: 1800, end: 2000); // "1855-W10"
  /// ```
  String weekDate({int start = 2017, int? end}) {
    final year = this.year(min: start, max: end);

    if (start.isNegative) {
      throw RangeError('start should be positive integer');
    }

    if (start > year) {
      throw RangeError.value(
        start,
        'start',
        'start cannot be greater than end',
      );
    }

    final week = Random(seed).nextInt(52) + 1;
    return "$year-W$week";
  }

  /// Returns a random month of the year.
  ///
  /// [isAbbr] is optional month name abbreviation (default is false).
  ///
  /// Example:
  /// ```dart
  /// Date().month(); // "July"
  /// Date().month(isAbbr: true); // "Jan."
  /// ```
  String month({bool isAbbr = false}) {
    final data = DateData.locale(locale).months(isAbbr: isAbbr);
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random century.
  ///
  /// Example:
  /// ```dart
  /// Date().century; // "XIII"
  /// ```
  String get century =>
      IntDateData.romanNums[Random(seed).nextInt(IntDateData.romanNums.length)];

  /// Returns a random periodicity string.
  ///
  /// Example:
  /// ```dart
  /// Date().periodicity; // "Often"
  /// ```
  String get periodicity {
    final periodicities = DateData.locale(locale).periodicities;
    return periodicities[Random(seed).nextInt(periodicities.length)];
  }

  /// Returns a random day of the month, from 1 to 31.
  ///
  /// Example:
  /// ```dart
  /// Date().dayOfMonth; // 18
  /// ```
  int get dayOfMonth => Random(seed).nextInt(31) + 1;

  /// Returns a random timezone.
  ///
  /// [region] is optional [TimezoneRegion].
  ///
  /// Example:
  /// ```dart
  /// Date().timezone() // "Asia/Kathmandu"
  /// Date().timezone(region: TimezoneRegion.europe) // "Europe/Stockholm"
  /// ```
  String timezone({TimezoneRegion? region}) {
    final timezone = region ??
        TimezoneRegion
            .values[Random(seed).nextInt(TimezoneRegion.values.length)];
    final data = IntDateData.timezones(timezone);
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random GMT offset value.
  ///
  /// Example:
  /// ```dart
  /// Date().gmtOffset; // "UTC +11:00"
  /// ```
  String get gmtOffset {
    final data = IntDateData.gmtOffsets;
    return data[Random(seed).nextInt(data.length)];
  }
}

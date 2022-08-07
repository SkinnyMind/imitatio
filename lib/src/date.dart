import 'dart:math';

import 'package:imitatio/src/util.dart';

/// Provider of data related to date and time.
class Date {
  /// Creates data related to the date and time.
  const Date();

  /// Returns random date.
  ///
  /// [start] is optional start year (default is 2000).
  ///
  /// [end] is optional end year (default is current year).
  String date({int start = 2000, int? end}) {
    final endYear = end ?? DateTime.now().year;
    final year = Random().nextInt(endYear + 1 - start) + start;
    final month = Random().nextInt(12) + 1;
    final day = Random().nextInt(Util.daysInMonth(year, month)) + 1;
    return '$year-$month-$day';
  }
}

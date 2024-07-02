import 'dart:math';

import 'package:imitatio/src/date.dart';
import 'package:imitatio/src/util.dart';

class Denmark {
  /// Provides special data for Denmark.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Denmark({this.seed});

  final int? seed;

  /// Returns a random CPR number (Central Person Registry).
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.denmark().cpr; // '1605949432';
  /// ```
  String get cpr {
    final date = DateTime.parse(Date(seed: seed).date(start: 1858));
    final centuryDigit = (date.year ~/ 100) % 10;
    final sequenceNumber = Random(seed).nextInt(100).toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');
    final month = date.month.toString().padLeft(2, '0');
    final year = (date.year % 100).toString().padLeft(2, '0');
    final first9Digits = '$day$month$year$centuryDigit$sequenceNumber';
    final checkDigit = Util.calculateCprCheckDigit(first9Digits);
    return '$first9Digits$checkDigit';
  }
}

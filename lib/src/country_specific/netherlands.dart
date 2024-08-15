import 'dart:math';

import 'package:imitatio/src/extensions.dart';

class Netherlands {
  /// Provides special data for Netherlands.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Netherlands({this.seed});

  final int? seed;

  /// Returns a random, but valid Burgerservicenummer (BSN).
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.netherlands().bsn; // "994513550"
  /// ```
  String get bsn {
    final random = Random(seed);
    final min = 100000000;
    final max = 999999999;
    String sample;

    do {
      sample = random.integer(min: min, max: max).toString();
    } while (!_isValidBsn(sample));

    return sample;
  }

  bool _isValidBsn(String sample) {
    var total = 0;
    var multiplier = 9;

    for (var i = 0; i < sample.length; i++) {
      multiplier = multiplier == 1 ? -multiplier : multiplier;
      total += int.parse(sample[i]) * multiplier;
      multiplier--;
    }

    return total % 11 == 0;
  }
}

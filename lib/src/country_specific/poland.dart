import 'dart:math';

import 'package:imitatio/src/date.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';

class Poland {
  /// Provides special data for Poland.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Poland({this.seed});

  final int? seed;

  /// Returns a random valid 10-digit NIP.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.poland().nip; // "8986665250"
  /// ```
  String get nip {
    List<int> nipDigits;
    int checksumDigit;

    do {
      final random = Random(seed);
      nipDigits = [
        for (final digit in (random.nextInt(897) + 101).toString().split(''))
          int.parse(digit),
      ];
      nipDigits.addAll(List.generate(6, (_) => random.nextInt(10)));

      final nipCoefficients = [6, 5, 7, 2, 3, 4, 5, 6, 7];

      var sumV = 0;
      for (var i = 0; i < nipCoefficients.length; i++) {
        sumV += nipCoefficients[i] * nipDigits[i];
      }

      checksumDigit = sumV % 11;
    } while (checksumDigit > 9);

    nipDigits.add(checksumDigit);
    return nipDigits.join();
  }

  /// Returns a random 11-digit PESEL.
  ///
  /// [birthDate] is optional initial birth date (default is between 1940 and
  /// current year).
  ///
  /// [gender] is optional gender.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.poland().pesel(); // "59662568803"
  /// CountrySpecific.poland().pesel(birthDate: DateTime(2001)); // "01210179902"
  /// CountrySpecific.poland().(gender: Gender.male); // "42690886034"
  /// CountrySpecific.poland().(gender: Gender.female); // "41640507007"
  /// ```
  String pesel({DateTime? birthDate, Gender? gender}) {
    final random = Random(seed);
    birthDate ??= DateTime.parse(Date(seed: seed).date(start: 1940));
    final genderData = Gender.values;
    gender ??= genderData[random.integer(max: genderData.length - 1)];

    final year = (birthDate.year % 100).toString().padLeft(2, '0');
    final month = switch (birthDate.year) {
      >= 1800 && <= 1899 => (birthDate.month + 80).toString().padLeft(2, '0'),
      >= 2000 && <= 2099 => (birthDate.month + 20).toString().padLeft(2, '0'),
      >= 2100 && <= 2199 => (birthDate.month + 40).toString().padLeft(2, '0'),
      _ => (birthDate.month + 60).toString().padLeft(2, '0'),
    };
    final day = birthDate.day.toString().padLeft(2, '0');

    final seriesNumber = random.integer(max: 999).toString().padLeft(3, '0');

    final peselDigits = [
      for (final digit in '$year$month$day$seriesNumber'.split(''))
        int.parse(digit),
    ];

    final maleDigits = [1, 3, 5, 7, 9];
    final femaleDigits = [0, 2, 4, 6, 8];
    final genderDigit =
        gender == Gender.male
            ? maleDigits[random.integer(max: maleDigits.length - 1)]
            : femaleDigits[random.integer(max: femaleDigits.length - 1)];
    peselDigits.add(genderDigit);

    final peselCoefficients = [9, 7, 3, 1, 9, 7, 3, 1, 9, 7];
    var sumV = 0;
    for (var i = 0; i < peselCoefficients.length; i++) {
      sumV += peselCoefficients[i] * peselDigits[i];
    }
    final checksumDigit = sumV % 10;
    peselDigits.add(checksumDigit);
    return peselDigits.join();
  }

  /// Returns a random valid 9-digit REGON.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.poland().regon; // "617611660"
  /// ```
  String get regon {
    final random = Random(seed);
    final regonCoefficients = [8, 9, 2, 3, 4, 5, 6, 7];
    final regonDigits = List.generate(8, (_) => random.integer(max: 9));
    var sumV = 0;
    for (var i = 0; i < regonCoefficients.length; i++) {
      sumV += regonCoefficients[i] * regonDigits[i];
    }
    var checksumDigit = sumV % 11;
    if (checksumDigit > 9) checksumDigit = 0;
    regonDigits.add(checksumDigit);
    return regonDigits.join();
  }
}

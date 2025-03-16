import 'dart:math';

import 'package:imitatio/src/datasets/country_specific/russia.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';

class Russia {
  /// Provides special data for Russia.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Russia({this.seed});

  final int? seed;

  /// Returns a random passport series and number.
  ///
  /// [year] is optional last 2 digits (i.e. 24 for 2024) of year of
  /// manufacture (default is current year).
  ///
  /// Throws [ArgumentError] if [year] is not 2 digits.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.russia().passportNumber(); // "57 22 491105"
  /// CountrySpecific.russia().passportNumber(year: 99); // "14 99 304050"
  /// ```
  String passportNumber({int? year}) {
    if (year != null && year.toString().length != 2) {
      throw ArgumentError.value(year, 'year', 'Should be last 2 digits');
    }

    final random = Random(seed);
    final currentYear = DateTime.now().year % 100;
    year ??= random.integer(max: currentYear);
    final region = random.integer(min: 1, max: 99).toString().padLeft(2, '0');
    final series = '$region ${year.toString().padLeft(2, '0')}';
    final number = List.generate(6, (_) => random.integer(max: 9)).join();
    return '$series $number';
  }

  /// Returns a random SNILS.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.russia().snils; // "66191133490"
  /// ```
  String get snils {
    final random = Random(seed);
    final numbers = List.generate(9, (_) => random.integer(max: 9));
    final controlCodes = [for (var i = 9; i > 0; i--) numbers[9 - i] * i];
    var controlCode = controlCodes.reduce((a, b) => a + b);
    final code = numbers.join();

    if (controlCode == 100 || controlCode == 101) {
      return '${code}00';
    }

    if (controlCode < 100) {
      return '$code$controlCode';
    }

    if (controlCode > 101) {
      controlCode = controlCode % 101;
      if (controlCode == 100) {
        controlCode = 0;
      }
    }

    return '$code${controlCode.toString().padLeft(2, '0')}';
  }

  /// Returns a random INN.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.russia().inn; // "105657847035"
  /// ```
  String get inn {
    final random = Random(seed);
    final numbers = List.generate(
      10,
      (i) => random.integer(min: i == 0 ? 1 : 0, max: 9),
    );
    final n2 = _innControlSum(numbers: numbers, digit: 2);
    numbers.add(n2);
    final n1 = _innControlSum(numbers: numbers, digit: 1);
    numbers.add(n1);
    return numbers.join();
  }

  int _innControlSum({required List<int> numbers, required int digit}) {
    assert(digit == 1 || digit == 2, 'digit should be either 1 or 2');
    const digitsMap = {
      2: [7, 2, 4, 10, 3, 5, 9, 4, 6, 8],
      1: [3, 7, 2, 4, 10, 3, 5, 9, 4, 6, 8],
    };
    var number = 0;
    final digits = digitsMap[digit]!;

    for (var i = 0; i < digits.length; i++) {
      number += numbers[i] * digits[i];
    }
    return number % 11 % 10;
  }

  /// Returns a random OGRN.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.russia().ogrn; // "7146120463064"
  /// ```
  String get ogrn {
    final random = Random(seed);
    final numbers = List.generate(
      12,
      (i) => random.integer(min: i == 0 ? 1 : 0, max: 9),
    );

    final ogrn = numbers.join();
    final checkSum = int.parse(ogrn) % 11 % 10;

    return '$ogrn$checkSum';
  }

  /// Returns a random BIC (Bank ID Code).
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.russia().bic; // "041081268"
  /// ```
  String get bic {
    final random = Random(seed);
    final countryCode = '04';
    final code = random.integer(min: 1, max: 10).toString().padLeft(2, '0');
    final bankNumber = random.integer(max: 99).toString().padLeft(2, '0');
    final bankOffice = random
        .integer(min: 50, max: 999)
        .toString()
        .padLeft(3, '0');
    return '$countryCode$code$bankNumber$bankOffice';
  }

  /// Returns a random KPP.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.russia().kpp; // "210027023"
  /// ```
  String get kpp {
    final random = Random(seed);
    final taxCodes = RussiaSpecificData.taxCodes;
    final taxCode = taxCodes[random.integer(max: taxCodes.length - 1)];
    final regCode = random.integer(min: 1, max: 99).toString().padLeft(2, '0');
    final regNumber = random
        .integer(min: 1, max: 999)
        .toString()
        .padLeft(3, '0');
    return '$taxCode$regCode$regNumber';
  }

  /// Returns a random patronymic name.
  ///
  /// [gender] is optional [Gender].
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.russia().patronymic(); // "Ерофеевич"
  /// CountrySpecific.russia().patronymic(gender: Gender.female); // "Брониславовна"
  /// ```
  String patronymic({Gender? gender}) {
    final random = Random(seed);
    final genderData = Gender.values;
    gender ??= genderData[random.integer(max: genderData.length - 1)];
    final data = RussiaSpecificData().patronymics(gender: gender);
    return data[random.integer(max: data.length - 1)];
  }
}

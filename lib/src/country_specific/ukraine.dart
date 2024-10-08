import 'dart:math';

import 'package:imitatio/src/datasets/country_specific/ukraine.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';

class Ukraine {
  /// Provides special data for Ukraine.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Ukraine({this.seed});

  final int? seed;

  /// Returns a random patronymic name.
  ///
  /// [gender] is optional [Gender].
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.ukraine().patronymic(); // "Юлійович"
  /// CountrySpecific.ukraine().patronymic(gender: Gender.female); // "Трифонівна"
  /// ```
  String patronymic({Gender? gender}) {
    final random = Random(seed);
    final genderData = Gender.values;
    gender ??= genderData[random.integer(max: genderData.length - 1)];
    final data = UkraineSpecificData().patronymics(gender: gender);
    return data[random.integer(max: data.length - 1)];
  }
}

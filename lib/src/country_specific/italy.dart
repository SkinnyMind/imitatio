import 'dart:math';

import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/rng.dart';
import 'package:imitatio/src/util.dart';

class Italy {
  /// Provides special data for Italy.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Italy({this.seed});

  final int? seed;

  /// Returns a random fiscal code.
  ///
  /// [gender] is optional [Gender].
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.italy().fiscalCode(gender: Gender.male); // "VCFMOL55T27B224O";
  /// CountrySpecific.italy().fiscalCode(gender: Gender.female); // "LADLLJ48H60M098Q";
  /// ```
  String fiscalCode({Gender? gender}) {
    final random = Random(seed);
    gender ??= Gender.values[random.nextInt(Gender.values.length)];

    final code = StringBuffer();
    code.write(
      Util.pickN(list: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split(''), n: 6, seed: seed)
          .join(),
    );
    code.write(Rng.customCode(mask: '##', seed: seed));

    final monthCodes = ["A", "B", "C", "E", "H", "L", "M", "P", "R", "S", "T"];
    code.write(monthCodes[random.nextInt(monthCodes.length)]);

    var birthDay = random.nextInt(31) + 101;
    if (gender == Gender.female) birthDay += 40;
    code.write(birthDay.toString().substring(1));

    final cityLetters = [
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "L",
      "M",
      "Z",
    ];
    code.write(cityLetters[random.nextInt(cityLetters.length)]);
    code.write(Rng.customCode(mask: '###@', seed: seed));

    return code.toString();
  }
}

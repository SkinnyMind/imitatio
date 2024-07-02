import 'dart:math';

import 'package:imitatio/src/util.dart';

/// Implements various helpers.
class Rng {
  const Rng._();

  /// Returns a random string value.
  ///
  /// [unique] is optional flag to generate only unique values.
  ///
  /// [length] is optional length of the resulting string (default is between
  /// 16 and 128).
  ///
  /// Example:
  /// ```dart
  /// Rng.randomString(); // "WpDwD3YSZjyXbK8fwoKRqu0PFAt2iIBWQb"
  /// Rng.randomString(unique: true); // "9a1af951-e5b0-4a8e-bfd6-f64b323551bb"
  /// Rng.randomString(length: 5); // "pNADq"
  /// ```
  static String randomString({bool unique = false, int? length, int? seed}) {
    if (unique) return Util.uuidV4;
    final chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
            .split('');

    return Util.pickN(
      list: chars,
      n: length ?? Random(seed).nextInt(113) + 16,
      seed: seed,
    ).join();
  }

  /// Returns a custom code using ascii uppercase and random integers.
  ///
  /// [mask] is optional mask of code (default is 4 digits).
  ///
  /// [char] is optional placeholder for characters (default is "@").
  ///
  /// [digit] is optional placeholder for digits (default is "#").
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  ///
  /// Throws [ArgumentError] if [char] and [digit] are the same.
  ///
  /// Example:
  /// ```dart
  /// Rng.customCode(); // "3362"
  /// Rng.customCode(mask: '@#-#@'); // "T4-2A"
  /// Rng.customCode(mask: r'*$$', char: '*', digit: r'$'); // "C76"
  /// ```
  static String customCode({
    String mask = '####',
    String char = '@',
    String digit = '#',
    int? seed,
  }) {
    final random = Random(seed);
    final maskCodes = mask.codeUnits;
    final charCode = char.codeUnits.first;
    final digitCode = digit.codeUnits.first;

    if (charCode == digitCode) {
      throw ArgumentError(
        'You cannot use the same placeholder for digits and chars',
      );
    }

    final code = <int>[];

    for (var i = 0; i < maskCodes.length; i++) {
      if (maskCodes[i] == digitCode) {
        code.add(random.nextInt(58 - 48) + 48);
      } else if (maskCodes[i] == charCode) {
        code.add(random.nextInt(91 - 65) + 65);
      } else {
        code.add(maskCodes[i]);
      }
    }
    return String.fromCharCodes(code);
  }
}

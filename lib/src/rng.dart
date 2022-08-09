import 'dart:math';

import 'package:imitatio/src/util.dart';
import 'package:uuid/uuid.dart';

/// Implements various helpers.
class Rng {
  const Rng._(); // coverage:ignore-line

  /// Returns a random string value.
  ///
  /// [unique] is optional flag to generate only unique values.
  ///
  /// [length] is optional length of the resulting string (default is between
  /// 16 and 128).
  static String randomString({bool unique = false, int? length}) {
    if (unique) return const Uuid().v4();
    final chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
            .split('');

    return Util.pickN(
      list: chars,
      n: length ?? Random().nextInt(113) + 16,
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
  /// Throws [ArgumentError] if [char] and [digit] are the same.
  static String customCode({
    String mask = '####',
    String char = '@',
    String digit = '#',
  }) {
    final random = Random();
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

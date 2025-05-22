import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/code.dart';
import 'package:imitatio/src/extensions.dart';
import 'package:imitatio/src/rng.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to codes.
class Code {
  /// Provides data related to codes.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Code({this.seed});

  final int? seed;

  /// Returns a random locale code (MS-LCID).
  ///
  /// Example:
  /// ```dart
  /// Code().localeCode; // "en"
  /// ```
  String get localeCode {
    final data = IntCodeData.localeCodes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random IMEI.
  ///
  /// Example:
  /// ```dart
  /// Code().imei; // "358031069395385"
  /// ```
  String get imei {
    final random = Random(seed);
    final number = StringBuffer();
    final tacs = IntCodeData.imeiTacs;
    number.write(tacs[random.integer(max: tacs.length - 1)]);
    number.write(random.integer(min: 100000, max: 999999));
    number.write(Util.luhnChecksum(number.toString()));
    return number.toString();
  }

  /// Returns a random PIN code.
  ///
  /// [mask] is optional mask of pin code. "#" will be changed to digit and "@"
  /// will be changed to ascii character. Any provided digits or characters in
  /// mask will be left as is (default mask is 4 digits).
  ///
  /// Example:
  /// ```dart
  /// Code().pin(); // "7302"
  /// Code().pin(mask: "@@###"); // "DU728"
  /// Code().pin(mask: "33##"); // "3373"
  ///
  /// ```
  String pin({String mask = "####"}) => Rng.customCode(mask: mask, seed: seed);

  /// Returns a random ISSN.
  ///
  /// [mask] is optional mask of ISSN. "#" will be changed to digit and "@"
  /// will be changed to ascii character. Any provided digits or characters in
  /// mask will be left as is (default mask is 4 digits followed by "-"
  /// followed by 4 digits).
  ///
  /// Example:
  /// ```dart
  /// Code().issn(); // "9032-7804"
  /// Code().issn(mask: "##-##-####"); // "75-19-3500"
  /// ```
  String issn({String mask = "####-####"}) =>
      Rng.customCode(mask: mask, seed: seed);

  /// Returns ISBN.
  ///
  /// [format] is optional [ISBNFormat].
  ///
  /// [locale] is optional [Locale].
  ///
  /// Example:
  /// ```dart
  /// Code().isbn(); // "886-5-33530-286-4"
  /// Code().isbn(format: ISBNFormat.isbn10); // "8-81232-519-8"
  /// Code().isbn(format: ISBNFormat.isbn10, locale: Locale.en); // "1-20167-936-0"
  /// ```
  String isbn({ISBNFormat? format, Locale? locale}) {
    final isbnFormat =
        format ??
        (Random(seed).nextBool() ? ISBNFormat.isbn13 : ISBNFormat.isbn10);

    final localeNumber = locale == null
        ? '#'
        : IntCodeData.isbnGroups(locale: locale);

    final mask = isbnFormat == ISBNFormat.isbn13
        ? '###-$localeNumber-#####-###-#'
        : '$localeNumber-#####-###-#';

    return Rng.customCode(mask: mask, seed: seed);
  }

  /// Returns EAN.
  ///
  /// [format] is optional [EANFormat].
  ///
  /// Example:
  /// ```dart
  /// Code().ean(); // "02012064"
  /// Code().ean(format: EANFormat.ean13); // "1059922466156"
  /// ```
  String ean({EANFormat? format}) {
    final mask =
        format?.mask ??
        (Random(seed).nextBool() ? EANFormat.ean8.mask : EANFormat.ean13.mask);
    return Rng.customCode(mask: mask, seed: seed);
  }
}

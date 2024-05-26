import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/code.dart';
import 'package:imitatio/src/rng.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to codes.
class Code {
  /// Creates data related to codes.
  const Code();

  /// Returns a random locale code (MS-LCID).
  ///
  /// Example:
  /// ```dart
  /// Code().localeCode(); // "en"
  /// ```
  String localeCode() =>
      CodeData.localeCodes[Random().nextInt(CodeData.localeCodes.length)];

  /// Returns a random IMEI.
  ///
  /// Example:
  /// ```dart
  /// Code().imei(); // "358031069395385"
  /// ```
  String imei() {
    final random = Random();
    final number = StringBuffer();
    number.write(CodeData.imeiTacs[random.nextInt(CodeData.imeiTacs.length)]);
    number.write(random.nextInt(1000000 - 100000) + 100000);
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
  /// Code.pin(); // "7302"
  /// Code.pin(mask: "@@###"); // "DU728"
  /// Code.pin(mask: "33##"); // "3373"
  ///
  /// ```
  String pin({String mask = "####"}) => Rng.customCode(mask: mask);

  /// Returns a random ISSN.
  ///
  /// [mask] is optional mask of ISSN. "#" will be changed to digit and "@"
  /// will be changed to ascii character. Any provided digits or characters in
  /// mask will be left as is (default mask is 4 digits followed by "-"
  /// followed by 4 digits).
  ///
  /// Example:
  /// ```dart
  /// Code.issn(); // "9032-7804"
  /// Code.issn(mask: "##-##-####"); // "75-19-3500"
  /// ```
  String issn({String mask = "####-####"}) => Rng.customCode(mask: mask);

  /// Returns ISBN.
  ///
  /// [format] is optional [ISBNFormat].
  ///
  /// Example:
  /// ```dart
  /// Code.isbn(); // "886-5-33530-286-4"
  /// Code.isbn(format: ISBNFormat.isbn10); // "8-81232-519-8"
  /// ```
  String isbn({ISBNFormat? format}) {
    final mask = format?.mask ??
        (Random().nextBool() ? ISBNFormat.isbn10.mask : ISBNFormat.isbn13.mask);
    return Rng.customCode(mask: mask);
  }

  /// Returns EAN.
  ///
  /// [format] is optional [EANFormat].
  ///
  /// Example:
  /// ```dart
  /// Code.ean(); // "02012064"
  /// Code.ean(format: EANFormat.ean13); // "1059922466156"
  /// ```
  String ean({EANFormat? format}) {
    final mask = format?.mask ??
        (Random().nextBool() ? EANFormat.ean8.mask : EANFormat.ean13.mask);
    return Rng.customCode(mask: mask);
  }
}

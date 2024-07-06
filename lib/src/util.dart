import 'dart:math';
import 'dart:typed_data';

class Util {
  const Util._();

  /// Returns a list of randomly picked strings.
  ///
  /// [list] is the list to pick from.
  ///
  /// [n] is the number of strings to pick.
  static List<String> pickN({
    required List<String> list,
    required int n,
    int? seed,
  }) {
    final random = Random(seed);
    return List.generate(n, (_) => list[random.nextInt(list.length)]);
  }

  /// Returns the number of days in the specified month.
  ///
  /// This function assumes the use of the Gregorian calendar or the proleptic
  /// Gregorian calendar.
  static int daysInMonth({required int year, required int month}) {
    // Days in a month. This array uses 1-based month numbers, i.e. January is
    // the 1-st element in the array, not the 0-th.
    const daysInMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    return (month == DateTime.february && isLeapYear(year: year))
        ? 29
        : daysInMonth[month];
  }

  /// Returns true if [year] is a leap year.
  ///
  /// This implements the Gregorian calendar leap year rules wherein a year is
  /// considered to be a leap year if it is divisible by 4, excepting years
  /// divisible by 100, but including years divisible by 400.
  ///
  /// This function assumes the use of the Gregorian calendar or the proleptic
  /// Gregorian calendar.
  static bool isLeapYear({required int year}) =>
      (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));

  /// Returns a checksum for [number] using the Luhn algorithm.
  static String luhnChecksum(String number) {
    var check = 0;
    for (var i = number.length - 1; i >= 0; i--) {
      var x = int.parse(number[i]);
      if (i.isOdd) x *= 2;
      if (x > 9) x -= 9;
      check += x;
    }
    return (check * 9 % 10).toString();
  }

  // Taken from https://github.com/Daegalus/dart-uuid
  static String get uuidV4 {
    final rng = Uint8List(16);

    for (var i = 0; i < 16; i += 4) {
      final k = Random().nextInt(pow(2, 32).toInt());
      rng[i] = k;
      rng[i + 1] = k >> 8;
      rng[i + 2] = k >> 16;
      rng[i + 3] = k >> 24;
    }

    final List<int> buffer = rng;
    buffer[6] = (buffer[6] & 0x0f) | 0x40;
    buffer[8] = (buffer[8] & 0x3f) | 0x80;

    var i = 0;
    return '${_byteToHex[buffer[i++]]}${_byteToHex[buffer[i++]]}'
        '${_byteToHex[buffer[i++]]}${_byteToHex[buffer[i++]]}-'
        '${_byteToHex[buffer[i++]]}${_byteToHex[buffer[i++]]}-'
        '${_byteToHex[buffer[i++]]}${_byteToHex[buffer[i++]]}-'
        '${_byteToHex[buffer[i++]]}${_byteToHex[buffer[i++]]}-'
        '${_byteToHex[buffer[i++]]}${_byteToHex[buffer[i++]]}'
        '${_byteToHex[buffer[i++]]}${_byteToHex[buffer[i++]]}'
        '${_byteToHex[buffer[i++]]}${_byteToHex[buffer[i++]]}';
  }

  static final List<String> _byteToHex = List<String>.generate(256, (i) {
    return i.toRadixString(16).padLeft(2, '0');
  });

  static int calculateCprCheckDigit(String first9Digits) {
    final weights = [4, 3, 2, 7, 6, 5, 4, 3, 2];

    var sum = 0;
    for (var i = 0; i < 9; i++) {
      sum += int.parse(first9Digits[i]) * weights[i];
    }

    final checkDigit = 11 - (sum % 11);
    return checkDigit >= 10 ? 0 : checkDigit;
  }

  static String compressIPv6(String address) {
    final regexp = RegExp(r':?(?:0:|0$){2,}');
    final matches = regexp.allMatches(address).toList();

    for (final (i, match) in matches.indexed.toList()) {
      if (!match.group(0)!.contains(':')) matches.removeAt(i);
    }

    if (matches.isEmpty) {
      return address;
    }

    matches.sort((a, b) {
      return b
          .group(0)!
          .replaceAll(':', '')
          .length
          .compareTo(a.group(0)!.replaceAll(':', '').length);
    });

    return address.replaceFirst(matches.first.group(0)!, '::');
  }
}

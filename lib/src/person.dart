import 'dart:math';

import 'package:imitatio/src/data/int/internet.dart';
import 'package:imitatio/src/data/int/person.dart';
import 'package:imitatio/src/rng.dart';

/// Provides personal data.
class Person {
  /// Creates personal data.
  const Person();

  /// Returns username from template.
  ///
  /// Many different usernames can be created using masks:
  /// - **C** stands for capitalized.
  /// - **U** stands for uppercase.
  /// - **l** stands for lowercase.
  /// - **d** stands for digits.
  ///
  /// You can also use symbols to separate the different parts of the username
  /// (e.g. \*.\*, \*_\*, \*-\*, etc.);
  ///
  /// [mask] is optional mask (default is 'l_d' - lowercase_digits).
  ///
  /// [digitsMin] is minimum number used in digits range (default is 1800).
  ///
  /// [digitsMax] is maximum number used in digits range (default is 2100).
  ///
  /// Throws [ArgumentError] if [mask] does not contain one of "C", "U" or "l".
  ///
  /// Example:
  /// ```dart
  /// Person().username(); // "seems_2007"
  /// Person().username(mask: 'C_C_d'); // "Warm_Egyptian_2053"
  /// Person().username(digitsMin: 20, digitsMax: 30); // "jordan_25"
  /// ```
  String username({
    String mask = 'l_d',
    int digitsMin = 1800,
    int digitsMax = 2100,
  }) {
    final matches = RegExp('[CUl]').allMatches(mask);
    if (matches.isEmpty) {
      throw ArgumentError.value(
        mask,
        'mask',
        'Username mask must contain at least one of these: (C, U, l)',
      );
    }

    final result = StringBuffer();
    final tags = mask.split('');
    final random = Random();
    for (final tag in tags) {
      final username =
          PersonData.usernames[random.nextInt(PersonData.usernames.length)];
      switch (tag) {
        case 'C':
          final capitalized = '${username[0].toUpperCase()}'
              '${username.substring(1).toLowerCase()}';
          result.write(capitalized);
          break;
        case 'U':
          result.write(username.toUpperCase());
          break;
        case 'l':
          result.write(username.toLowerCase());
          break;
        case 'd':
          result.write(random.nextInt(digitsMax + 1 - digitsMin) + digitsMin);
          break;
        default:
          result.write(tag);
      }
    }

    return result.toString();
  }

  /// Returns a random email.
  ///
  /// [domains] is optional list of custom domains for email.
  ///
  /// [unique] whether or not email should be unique.
  ///
  /// Example:
  /// ```dart
  /// Person().email(); // "crash1802@duck.com"
  /// Person().email(domains: ['example.com']); // "complaints1927@example.com"
  /// Person().email(unique: true) // "a467545c-1397-4601-8cc0-288e6b0de671@outlook.com"
  /// ```
  String email({List<String>? domains, bool unique = false}) {
    final emailDomains = domains ?? InternetData.emailDomains;
    var domain = emailDomains[Random().nextInt(emailDomains.length)];

    if (!domain.startsWith('@')) domain = '@$domain';

    final name = unique ? Rng.randomString(unique: true) : username(mask: 'ld');

    return '$name$domain';
  }
}

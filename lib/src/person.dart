import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/internet.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/person.dart';
import 'package:imitatio/src/rng.dart';

/// Provides personal data.
class Person {
  /// Provides personal data.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  const Person({this.locale = Locale.en});

  final Locale locale;

  /// Returns a random name.
  ///
  /// [gender] is optional [Gender].
  ///
  /// Example:
  /// ```dart
  /// Person().name(); // "Larry"
  /// Person().name(gender: Gender.female); // "Kiana"
  /// ```
  String name({Gender? gender}) {
    final random = Random();
    gender ??= Gender.values[random.nextInt(Gender.values.length)];
    final data = PersonData.locale(locale).names(gender);
    return data[random.nextInt(data.length)];
  }

  /// Returns a random surname.
  ///
  /// [gender] is optional [Gender].
  ///
  /// Example:
  /// ```dart
  /// Person().surname(); // "Weiss"
  /// ```
  String surname({Gender? gender}) {
    final random = Random();
    gender ??= Gender.values[random.nextInt(Gender.values.length)];
    final data = PersonData.locale(locale).surnames(gender);
    return data[random.nextInt(data.length)];
  }

  /// Returns a random full name.
  ///
  /// [gender] is optional [Gender].
  ///
  /// [reverse] whether to return reversed full name (surname before name).
  ///
  /// Example:
  /// ```dart
  /// Person().fullName(); // "Kristofer Livingston"
  /// Person().fullName(reverse: true); // "Livingston Kristofer"
  /// ```
  String fullName({Gender? gender, bool reverse = false}) {
    gender ??= Gender.values[Random().nextInt(Gender.values.length)];
    final name = this.name(gender: gender);
    final surname = this.surname(gender: gender);
    return reverse ? '$surname $name' : '$name $surname';
  }

  /// Returns a random title for name.
  ///
  /// [gender] is optional [Gender].
  ///
  /// [titleType] is optional [TitleType].
  ///
  /// Example:
  /// ```dart
  /// Person().title(); // "B.A."
  /// Person().title(gender: Gender.male); // "Sir"
  /// Person().title(titleType: TitleType.academic); // "B.Sc"
  /// ```
  String title({Gender? gender, TitleType? titleType}) {
    final random = Random();
    gender ??= Gender.values[random.nextInt(Gender.values.length)];
    titleType ??= TitleType.values[random.nextInt(TitleType.values.length)];
    final data = PersonData.locale(locale).titles(
      gender: gender,
      titleType: titleType,
    );
    return data[random.nextInt(data.length)];
  }

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
      final username = IntPersonData
          .usernames[random.nextInt(IntPersonData.usernames.length)];
      switch (tag) {
        case 'C':
          final capitalized = '${username[0].toUpperCase()}'
              '${username.substring(1).toLowerCase()}';
          result.write(capitalized);
        case 'U':
          result.write(username.toUpperCase());
        case 'l':
          result.write(username.toLowerCase());
        case 'd':
          result.write(random.nextInt(digitsMax + 1 - digitsMin) + digitsMin);
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
    final data = domains ?? IntInternetData.emailDomains;
    var domain = data[Random().nextInt(data.length)];

    if (!domain.startsWith('@')) domain = '@$domain';

    final name = unique ? Rng.randomString(unique: true) : username(mask: 'ld');

    return '$name$domain';
  }

  /// Returns a random sex symbol.
  ///
  /// Example:
  /// ```dart
  /// Person().genderSymbol; // "♀"
  /// ```
  String get genderSymbol => IntPersonData
      .genderSymbols[Random().nextInt(IntPersonData.genderSymbols.length)];

  /// Returns a random ISO/IEC 5218 gender code.
  ///
  /// Codes for the representation of human sexes is an international standard
  /// (0 - not known, 1 - male, 2 - female, 9 - not applicable).
  ///
  /// Example:
  /// ```dart
  /// Person().genderCode; // 2
  /// ```
  int get genderCode => IntPersonData
      .genderCodes[Random().nextInt(IntPersonData.genderCodes.length)];

  /// Returns a random gender title.
  ///
  /// Example:
  /// ```dart
  /// Person().gender; // "Female"
  /// ```
  String get gender {
    final data = PersonData.locale(locale).genders;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random height in meters.
  ///
  /// [min] is optional minimum value (default is 1.5).
  ///
  /// [max] is optional maximum value (default is 2.0).
  ///
  /// Example:
  /// ```dart
  /// Person().height(); // "1.97"
  /// Person().height(min: 1.7, max: 1.8); // "1.71"
  /// ```
  String height({double min = 1.5, double max = 2.0}) {
    final result = Random().nextDouble() * (max - min) + min;
    return result.toStringAsFixed(2);
  }

  /// Returns a random weight in kilograms.
  ///
  /// [min] is optional minimum value (default is 38).
  ///
  /// [max] is optional maximum value (default is 90).
  ///
  /// Example:
  /// ```dart
  /// Person().weight(); // 84
  /// Person().weight(min: 42, max: 69); // 53
  /// ```
  int weight({int min = 38, int max = 90}) =>
      Random().nextInt(max + 1 - min) + min;

  /// Returns a random blood type (blood group).
  ///
  /// Example:
  /// ```dart
  /// Person().bloodType; // "O-"
  /// ```
  String get bloodType => IntPersonData
      .bloodGroups[Random().nextInt(IntPersonData.bloodGroups.length)];

  /// Returns a random occupation (job).
  ///
  /// Example:
  /// ```dart
  /// Person().occupation; // "Legal Executive"
  /// ```
  String get occupation {
    final data = PersonData.locale(locale).occupations;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random political views.
  ///
  /// Example:
  /// ```dart
  /// Person().politicalViews; // "Communist"
  /// ```
  String get politicalViews {
    final data = PersonData.locale(locale).politicalViews;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random worldview.
  ///
  /// Example:
  /// ```dart
  /// Person().worldview; // "Agnosticism"
  /// ```
  String get worldview {
    final data = PersonData.locale(locale).worldviews;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random views on something.
  ///
  /// Example:
  /// ```dart
  /// Person().viewsOn; // "Positive"
  /// ```
  String get viewsOn {
    final data = PersonData.locale(locale).viewsOn;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random nationality.
  ///
  /// [gender] is optional [Gender].
  ///
  /// Example:
  /// ```dart
  /// Person().nationality(); // "Japanese"
  /// ```
  String nationality({Gender? gender}) {
    final random = Random();
    gender ??= Gender.values[random.nextInt(Gender.values.length)];
    final data = PersonData.locale(locale).nationalities(gender);
    return data[random.nextInt(data.length)];
  }

  /// Returns a random university name.
  ///
  /// Example:
  /// ```dart
  /// Person().university; // "University of Georgia (UGA)"
  /// ```
  String get university {
    final data = PersonData.locale(locale).universities;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random academic degree.
  ///
  /// Example:
  /// ```dart
  /// Person().academicDegree; // "Master"
  /// ```
  String get academicDegree {
    final data = PersonData.locale(locale).academicDegrees;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random language name.
  ///
  /// Example:
  /// ```dart
  /// Person().language; // "Icelandic"
  /// ```
  String get language {
    final data = PersonData.locale(locale).languages;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random phone number.
  ///
  /// [mask] is optional mask for formatting number (placeholder for a mask is
  /// "#" and will be changed to digit). Any provided digits or characters in
  /// mask will be left as is.
  ///
  /// Example:
  /// ```dart
  /// Person().phoneNumber(); // "+1-912-450-5556"
  /// Person().phoneNumber(mask: "123#"); // "1232"
  /// ```
  String phoneNumber({String? mask}) {
    final data = PersonData.locale(locale).telephoneFormats;
    mask ??= data[Random().nextInt(data.length)];
    return Rng.customCode(mask: mask);
  }

  /// Returns a random identifier by mask.
  ///
  /// [mask] is optional mask of identifier. "#" will be changed to digit and
  /// "@" will be changed to ascii character. Any provided digits or characters
  /// in mask will be left as is.
  ///
  /// Example:
  /// ```dart
  /// Person().identifier(); // "42-02/40"
  /// Person().identifier(mask: "123#"); // "1235"
  /// ```
  String identifier({String mask = "##-##/##"}) => Rng.customCode(mask: mask);
}

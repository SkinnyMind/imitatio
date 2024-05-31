import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/internet.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/person.dart';
import 'package:imitatio/src/rng.dart';

/// Provides personal data.
class Person {
  const Person._();

  /// Returns a random name.
  ///
  /// [gender] is optional [Gender].
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.name(); // "Larry"
  /// Person.name(gender: Gender.female); // "Kiana"
  /// ```
  static String name({Gender? gender, Locale locale = Locale.en}) {
    final random = Random();
    gender ??= Gender.values[random.nextInt(Gender.values.length)];
    final data = PersonData.locale[locale.name]!;
    final names = data.names[gender.name] ?? data.names['generic']!;
    return names[random.nextInt(names.length)];
  }

  /// Returns a random surname.
  ///
  /// [gender] is optional [Gender].
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.surname(); // "Weiss"
  /// ```
  static String surname({Gender? gender, Locale locale = Locale.en}) {
    final random = Random();
    gender ??= Gender.values[random.nextInt(Gender.values.length)];
    final data = PersonData.locale[locale.name]!;
    final surnames = data.surnames[gender.name] ?? data.surnames['generic']!;
    return surnames[random.nextInt(surnames.length)];
  }

  /// Returns a random full name.
  ///
  /// [gender] is optional [Gender].
  ///
  /// [reverse] whether to return reversed full name (surname before name).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.fullName(); // "Kristofer Livingston"
  /// Person.fullName(reverse: true); // "Livingston Kristofer"
  /// ```
  static String fullName({
    Gender? gender,
    bool reverse = false,
    Locale locale = Locale.en,
  }) {
    gender ??= Gender.values[Random().nextInt(Gender.values.length)];
    final name = Person.name(gender: gender, locale: locale);
    final surname = Person.surname(gender: gender, locale: locale);
    return reverse ? '$surname $name' : '$name $surname';
  }

  /// Returns a random title for name.
  ///
  /// [gender] is optional [Gender].
  ///
  /// [titleType] is optional [TitleType].
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.title(); // "B.A."
  /// Person.title(gender: Gender.male); // "Sir"
  /// Person.title(titleType: TitleType.academic); // "B.Sc"
  /// ```
  static String title({
    Gender? gender,
    TitleType? titleType,
    Locale locale = Locale.en,
  }) {
    final random = Random();
    gender ??= Gender.values[random.nextInt(Gender.values.length)];
    titleType ??= TitleType.values[random.nextInt(TitleType.values.length)];
    final titles =
        PersonData.locale[locale.name]!.title[gender.name]![titleType.name]!;
    return titles[random.nextInt(titles.length)];
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
  /// Person.username(); // "seems_2007"
  /// Person.username(mask: 'C_C_d'); // "Warm_Egyptian_2053"
  /// Person.username(digitsMin: 20, digitsMax: 30); // "jordan_25"
  /// ```
  static String username({
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
  /// Person.email(); // "crash1802@duck.com"
  /// Person.email(domains: ['example.com']); // "complaints1927@example.com"
  /// Person.email(unique: true) // "a467545c-1397-4601-8cc0-288e6b0de671@outlook.com"
  /// ```
  static String email({List<String>? domains, bool unique = false}) {
    final emailDomains = domains ?? InternetData.emailDomains;
    var domain = emailDomains[Random().nextInt(emailDomains.length)];

    if (!domain.startsWith('@')) domain = '@$domain';

    final name = unique ? Rng.randomString(unique: true) : username(mask: 'ld');

    return '$name$domain';
  }

  /// Returns a random sex symbol.
  ///
  /// Example:
  /// ```dart
  /// Person.genderSymbol(); // "♀"
  /// ```
  static String genderSymbol() => IntPersonData
      .genderSymbols[Random().nextInt(IntPersonData.genderSymbols.length)];

  /// Returns a random ISO/IEC 5218 gender code.
  ///
  /// Codes for the representation of human sexes is an international standard
  /// (0 - not known, 1 - male, 2 - female, 9 - not applicable).
  ///
  /// Example:
  /// ```dart
  /// Person.genderCode(); // 2
  /// ```
  static int genderCode() => IntPersonData
      .genderCodes[Random().nextInt(IntPersonData.genderCodes.length)];

  /// Returns a random gender title.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.gender(); // "Female"
  /// ```
  static String gender({Locale locale = Locale.en}) {
    final genders = PersonData.locale[locale.name]!.gender;
    return genders[Random().nextInt(genders.length)];
  }

  /// Returns a random height in meters.
  ///
  /// [min] is optional minimum value (default is 1.5).
  ///
  /// [max] is optional maximum value (default is 2.0).
  ///
  /// Example:
  /// ```dart
  /// Person.height(); // "1.97"
  /// Person.height(min: 1.7, max: 1.8); // "1.71"
  /// ```
  static String height({double min = 1.5, double max = 2.0}) {
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
  /// Person.weight(); // 84
  /// Person.weight(min: 42, max: 69); // 53
  /// ```
  static int weight({int min = 38, int max = 90}) =>
      Random().nextInt(max + 1 - min) + min;

  /// Returns a random blood type (blood group).
  ///
  /// Example:
  /// ```dart
  /// Person.bloodType(); // "O-"
  /// ```
  static String bloodType() => IntPersonData
      .bloodGroups[Random().nextInt(IntPersonData.bloodGroups.length)];

  /// Returns a random occupation (job).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.occupation(); // "Legal Executive"
  /// ```
  static String occupation({Locale locale = Locale.en}) {
    final data = PersonData.locale[locale.name]!.occupation;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random political views.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.politicalViews(); // "Communist"
  /// ```
  static String politicalViews({Locale locale = Locale.en}) {
    final data = PersonData.locale[locale.name]!.politicalViews;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random worldview.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.worldview(); // "Agnosticism"
  /// ```
  static String worldview({Locale locale = Locale.en}) {
    final data = PersonData.locale[locale.name]!.worldview;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random views on something.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.viewsOn(); // "Positive"
  /// ```
  static String viewsOn({Locale locale = Locale.en}) {
    final data = PersonData.locale[locale.name]!.viewsOn;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random nationality.
  ///
  /// [gender] is optional [Gender].
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.nationality(); // "Japanese"
  /// ```
  static String nationality({Gender? gender, Locale locale = Locale.en}) {
    final random = Random();
    gender ??= Gender.values[random.nextInt(Gender.values.length)];
    final data = PersonData.locale[locale.name]!;
    final nationalities =
        data.nationality[gender.name] ?? data.nationality['generic']!;
    return nationalities[random.nextInt(nationalities.length)];
  }

  /// Returns a random university name.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.university(); // "University of Georgia (UGA)"
  /// ```
  static String university({Locale locale = Locale.en}) {
    final data = PersonData.locale[locale.name]!.university;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random academic degree.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.academicDegree(); // "Master"
  /// ```
  static String academicDegree({Locale locale = Locale.en}) {
    final data = PersonData.locale[locale.name]!.academicDegree;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random language name.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.language(); // "Icelandic"
  /// ```
  static String language({Locale locale = Locale.en}) {
    final data = PersonData.locale[locale.name]!.language;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random phone number.
  ///
  /// [mask] is optional mask for formatting number (placeholder for a mask is
  /// "#" and will be changed to digit). Any provided digits or characters in
  /// mask will be left as is.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Person.phoneNumber(); // "+1-912-450-5556"
  /// Person.phoneNumber(mask: "123#"); // "1232"
  /// ```
  static String phoneNumber({String? mask, Locale locale = Locale.en}) {
    final data = PersonData.locale[locale.name]!.telephoneFormat;
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
  /// Person.identifier(); // "42-02/40"
  /// Person.identifier(mask: "123#"); // "1235"
  /// ```
  static String identifier({String mask = "##-##/##"}) =>
      Rng.customCode(mask: mask);
}

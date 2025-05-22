import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/internet.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/person.dart';
import 'package:imitatio/src/extensions.dart';
import 'package:imitatio/src/rng.dart';

/// Provides personal data.
class Person {
  /// Provides personal data.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Person({this.locale = Locale.en, this.seed});

  final Locale locale;
  final int? seed;

  /// Returns a random birthdate in the YYYY-MM-DD format.
  ///
  /// [minYear] is optional minimum birth year (default is 1980).
  ///
  /// [maxYear] is optional maximim birth year (default is current year).
  ///
  /// Throws a [RangeError] if [start] or [end] is negative or [start] is
  /// greater than [end].
  ///
  /// Example:
  /// ```dart
  /// Person().birthdate(); // "2015-09-10"
  /// Person().birthdate(minYear: 2022, maxYear: 2022); // "2022-08-20"
  /// ```
  String birthdate({int minYear = 1980, int? maxYear}) {
    return const Date().date(start: minYear, end: maxYear);
  }

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
    final random = Random(seed);
    final genders = Gender.values;
    gender ??= genders[random.integer(max: genders.length - 1)];
    final data = PersonData.locale(locale).names(gender);
    return data[random.integer(max: data.length - 1)];
  }

  /// Returns a random patronymic name. Specific to [Locale.ru] and [Locale.uk].
  ///
  /// Alias for [CountrySpecific.russia().patronymic()] and
  /// [CountrySpecific.ukraine().patronymic()] methods.
  ///
  /// [gender] is optional [Gender].
  ///
  /// Throws on locales other than [Locale.ru] and [Locale.uk].
  ///
  /// Example:
  /// ```dart
  /// Person(locale: Locale.ru).patronymic(); // "Ерофеевич"
  /// Person(locale: Locale.uk).patronymic(); // "Трифонівна"
  /// ```
  String patronymic({Gender? gender}) {
    return switch (locale) {
      Locale.ru => CountrySpecific.russia(
        seed: seed,
      ).patronymic(gender: gender),
      Locale.uk => CountrySpecific.ukraine(
        seed: seed,
      ).patronymic(gender: gender),
      _ => throw ArgumentError.value(
        locale,
        'Works only for Locale.ru and Locale.uk',
      ),
    };
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
    final random = Random(seed);
    final genders = Gender.values;
    gender ??= genders[random.integer(max: genders.length - 1)];
    final data = PersonData.locale(locale).surnames(gender);
    return data[random.integer(max: data.length - 1)];
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
  /// Person(locale: Locale.ru).fullName(); // "Емельян Тарасович Абакумов"
  /// Person(locale: Locale.uk).fullName(); // "Ігорина Демидівна Бабенко"
  /// ```
  String fullName({Gender? gender, bool reverse = false}) {
    final genders = Gender.values;
    gender ??= genders[Random(seed).integer(max: genders.length - 1)];
    final name = this.name(gender: gender);
    final surname = this.surname(gender: gender);
    final patronymic = switch (locale) {
      Locale.ru => this.patronymic(gender: gender),
      Locale.uk => this.patronymic(gender: gender),
      _ => '',
    };
    return switch (locale) {
      Locale.ru =>
        reverse ? '$surname $name $patronymic' : '$name $patronymic $surname',
      Locale.uk =>
        reverse ? '$surname $name $patronymic' : '$name $patronymic $surname',
      _ => reverse ? '$surname $name' : '$name $surname',
    };
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
    final random = Random(seed);
    final genders = Gender.values;
    gender ??= genders[random.integer(max: genders.length - 1)];
    titleType ??= TitleType.values[random.nextInt(TitleType.values.length)];
    final data = PersonData.locale(
      locale,
    ).titles(gender: gender, titleType: titleType);
    return data[random.integer(max: data.length - 1)];
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
    final random = Random(seed);
    final data = IntPersonData.usernames;
    for (final tag in tags) {
      final username = data[random.integer(max: data.length - 1)];
      switch (tag) {
        case 'C':
          final capitalized =
              '${username[0].toUpperCase()}'
              '${username.substring(1).toLowerCase()}';
          result.write(capitalized);
        case 'U':
          result.write(username.toUpperCase());
        case 'l':
          result.write(username.toLowerCase());
        case 'd':
          result.write(random.integer(min: digitsMin, max: digitsMax));
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
    var domain = data[Random(seed).integer(max: data.length - 1)];

    if (!domain.startsWith('@')) domain = '@$domain';

    final name = unique ? Rng.randomString(unique: true) : username(mask: 'ld');

    return '$name$domain';
  }

  /// Returns a random password or SHA256 hash of password.
  ///
  /// [length] is optional length of the password (default is 8).
  ///
  /// [isHashed] determines whether to return SHA256 hashed password (default
  /// is false).
  ///
  /// Example:
  /// ```dart
  /// Person().password(); // ""zoP(/WG"
  /// Person().password(length: 16); // "H 'Iow7& MrH##V_"
  /// Person().password(isHashed: true); // "42e8c2aba3368bcbe648e372e166fe410147420f2fe09d96fb7fe0a249c1c23d"
  /// ```
  String password({int length = 8, bool isHashed = false}) {
    final chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!"#\$%&\'()*+, -./:;<=>?@[\\]^_`{|}~'
            .split('');
    final random = Random(seed);
    final password = List.generate(
      length,
      (_) => chars[random.integer(max: chars.length - 1)],
    ).join();

    if (isHashed) {
      final bytes = utf8.encode(password);
      return sha256.convert(bytes).toString();
    } else {
      return password;
    }
  }

  /// Returns a random sex symbol.
  ///
  /// Example:
  /// ```dart
  /// Person().genderSymbol; // "♀"
  /// ```
  String get genderSymbol {
    final data = IntPersonData.genderSymbols;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random ISO/IEC 5218 gender code.
  ///
  /// Codes for the representation of human sexes is an international standard
  /// (0 - not known, 1 - male, 2 - female, 9 - not applicable).
  ///
  /// Example:
  /// ```dart
  /// Person().genderCode; // 2
  /// ```
  int get genderCode {
    final data = IntPersonData.genderCodes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random gender title.
  ///
  /// Example:
  /// ```dart
  /// Person().gender; // "Female"
  /// ```
  String get gender {
    final data = PersonData.locale(locale).genders;
    return data[Random(seed).integer(max: data.length - 1)];
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
    final result = Random(seed).nextDouble() * (max - min) + min;
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
      Random(seed).integer(min: min, max: max);

  /// Returns a random blood type (blood group).
  ///
  /// Example:
  /// ```dart
  /// Person().bloodType; // "O-"
  /// ```
  String get bloodType {
    final data = IntPersonData.bloodGroups;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random occupation (job).
  ///
  /// Example:
  /// ```dart
  /// Person().occupation; // "Legal Executive"
  /// ```
  String get occupation {
    final data = PersonData.locale(locale).occupations;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random political views.
  ///
  /// Example:
  /// ```dart
  /// Person().politicalViews; // "Communist"
  /// ```
  String get politicalViews {
    final data = PersonData.locale(locale).politicalViews;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random worldview.
  ///
  /// Example:
  /// ```dart
  /// Person().worldview; // "Agnosticism"
  /// ```
  String get worldview {
    final data = PersonData.locale(locale).worldviews;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random views on something.
  ///
  /// Example:
  /// ```dart
  /// Person().viewsOn; // "Positive"
  /// ```
  String get viewsOn {
    final data = PersonData.locale(locale).viewsOn;
    return data[Random(seed).integer(max: data.length - 1)];
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
    final random = Random(seed);
    final genders = Gender.values;
    gender ??= genders[random.integer(max: genders.length - 1)];
    final data = PersonData.locale(locale).nationalities(gender);
    return data[random.integer(max: data.length - 1)];
  }

  /// Returns a random university name.
  ///
  /// Example:
  /// ```dart
  /// Person().university; // "University of Georgia (UGA)"
  /// ```
  String get university {
    final data = PersonData.locale(locale).universities;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random academic degree.
  ///
  /// Example:
  /// ```dart
  /// Person().academicDegree; // "Master"
  /// ```
  String get academicDegree {
    final data = PersonData.locale(locale).academicDegrees;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random language name.
  ///
  /// Example:
  /// ```dart
  /// Person().language; // "Icelandic"
  /// ```
  String get language {
    final data = PersonData.locale(locale).languages;
    return data[Random(seed).integer(max: data.length - 1)];
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
    mask ??= data[Random(seed).integer(max: data.length - 1)];
    return Rng.customCode(mask: mask, seed: seed);
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
  String identifier({String mask = "##-##/##"}) =>
      Rng.customCode(mask: mask, seed: seed);
}

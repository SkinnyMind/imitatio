import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/person.dart';
import 'package:test/test.dart';

void main() {
  group('Person', () {
    test('returns name', () {
      expect(Person.name(), isNotEmpty);

      for (final locale in Locale.values) {
        final maleName = Person.name(gender: Gender.male, locale: locale);
        final femaleName = Person.name(gender: Gender.female, locale: locale);
        final data = PersonData.locale[locale.name]!;
        final maleData = data.names[Gender.male.name] ?? data.names['generic']!;
        final femaleData =
            data.names[Gender.female.name] ?? data.names['generic']!;
        expect(maleData.contains(maleName), true);
        expect(femaleData.contains(femaleName), true);
      }
    });

    test('returns surname', () {
      expect(Person.surname(), isNotEmpty);

      for (final locale in Locale.values) {
        final maleSurname = Person.surname(gender: Gender.male, locale: locale);
        final femaleSurname =
            Person.surname(gender: Gender.female, locale: locale);
        final data = PersonData.locale[locale.name]!;
        final maleData =
            data.surnames[Gender.male.name] ?? data.surnames['generic']!;
        final femaleData =
            data.surnames[Gender.female.name] ?? data.surnames['generic']!;
        expect(maleData.contains(maleSurname), true);
        expect(femaleData.contains(femaleSurname), true);
      }
    });

    test('returns full name', () {
      final result = Person.fullName().split(' ');
      expect(result.length, 2);
      expect(result[0], isNotEmpty);
      expect(result[1], isNotEmpty);

      final reversed = Person.fullName().split(' ');
      expect(reversed.length, 2);
      expect(reversed[0], isNotEmpty);
      expect(reversed[1], isNotEmpty);
    });

    test('returns title', () {
      expect(Person.title(), isNotEmpty);

      for (final locale in Locale.values) {
        for (final titleType in TitleType.values) {
          final maleTitle = Person.title(
            gender: Gender.male,
            titleType: titleType,
            locale: locale,
          );
          final femaleTitle = Person.title(
            gender: Gender.female,
            titleType: titleType,
            locale: locale,
          );
          final data = PersonData.locale[locale.name]!;
          final maleData = data.title[Gender.male.name]![titleType.name]!;
          final femaleData = data.title[Gender.female.name]![titleType.name]!;
          expect(maleData.contains(maleTitle), true);
          expect(femaleData.contains(femaleTitle), true);
        }
      }
    });

    test('returns username', () {
      expect(Person.username().split('_').length, 2);

      const patterns = {
        'C-d': r"^[A-Z][a-z]+-[0-9]+$",
        "C.d": r"^[A-Z][a-z]+\.[0-9]+$",
        "C_d": r"^[A-Z][a-z]+_[0-9]+$",
        "CC-d": r"^[A-Z][a-z]+[A-Z][a-z]+-[0-9]+$",
        "CC.d": r"^[A-Z][a-z]+[A-Z][a-z]+\.[0-9]+$",
        "UC_d": r"^[A-Z]+[A-Z][a-z]+_[0-9]+$",
        "Cd": r"^[A-Z][a-z]+[0-9]+$",
        "l-d": r"^[a-z]+-[0-9]+$",
        "l.d": r"^[a-z]+\.[0-9]+$",
        "l_d": r"^[a-z]+_[0-9]+$",
        "ld": r"^[a-z]+[0-9]+$",
      };
      for (final pattern in patterns.entries) {
        final result = Person.username(mask: pattern.key);
        expect(RegExp(pattern.value).hasMatch(result), true);
      }

      final digitsRange = int.parse(
        Person.username(digitsMin: 10, digitsMax: 20).split('_').last,
      );
      expect(digitsRange >= 10 && digitsRange <= 20, true);
    });

    test('throws when trying to get username with invalid mask', () {
      expect(() => Person.username(mask: ''), throwsA(isA<ArgumentError>()));
    });

    test('returns an email', () {
      final emailRegex = RegExp(
        r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)",
      );
      expect(emailRegex.hasMatch(Person.email()), true);

      final domains = ['@example.com', 'example.com'];
      final result = Person.email(domains: domains);
      expect(emailRegex.hasMatch(result), true);
      expect(result.split('@').last, 'example.com');

      final count = 1000000;
      final generated = <String>{};
      for (var i = 0; i < count; i++) {
        final email = Person.email(domains: ['example.com'], unique: true);
        generated.add(email.split('@').first);
      }
      expect(generated.length, count);
    });

    test('returns gender symbol', () {
      expect(
        IntPersonData.genderSymbols.contains(Person.genderSymbol()),
        true,
      );
    });

    test('returns gender code', () {
      expect(
        IntPersonData.genderCodes.contains(Person.genderCode()),
        true,
      );
    });

    test('returns gender title', () {
      expect(Person.gender(), isNotEmpty);

      for (final locale in Locale.values) {
        final result = Person.gender(locale: locale);
        final data = PersonData.locale[locale.name]!.gender;
        expect(data.contains(result), true);
      }
    });

    test('returns random height in meters', () {
      final defaultResult = double.parse(Person.height());
      expect((defaultResult >= 1.5) && (defaultResult <= 2.0), true);

      final min = 1.7;
      final max = 1.8;
      final minMaxResult = double.parse(Person.height(min: min, max: max));
      expect((minMaxResult >= min) && (minMaxResult <= max), true);
    });

    test('returns random weight in kg', () {
      final defaultResult = Person.weight();
      expect((defaultResult >= 38) && (defaultResult <= 90), true);

      final min = 69;
      final max = 69;
      final minMaxResult = Person.weight(min: min, max: max);
      expect((minMaxResult >= min) && (minMaxResult <= max), true);
    });

    test('returns random blood type', () {
      final result = Person.bloodType();
      expect(IntPersonData.bloodGroups.contains(result), true);
    });

    test('returns occupation', () {
      expect(Person.occupation(), isNotEmpty);

      for (final locale in Locale.values) {
        final result = Person.occupation(locale: locale);
        final data = PersonData.locale[locale.name]!.occupation;
        expect(data.contains(result), true);
      }
    });

    test('returns political views', () {
      expect(Person.politicalViews(), isNotEmpty);

      for (final locale in Locale.values) {
        final result = Person.politicalViews(locale: locale);
        final data = PersonData.locale[locale.name]!.politicalViews;
        expect(data.contains(result), true);
      }
    });

    test('returns worldview', () {
      expect(Person.worldview(), isNotEmpty);

      for (final locale in Locale.values) {
        final result = Person.worldview(locale: locale);
        final data = PersonData.locale[locale.name]!.worldview;
        expect(data.contains(result), true);
      }
    });

    test('returns views on something', () {
      expect(Person.viewsOn(), isNotEmpty);

      for (final locale in Locale.values) {
        final result = Person.viewsOn(locale: locale);
        final data = PersonData.locale[locale.name]!.viewsOn;
        expect(data.contains(result), true);
      }
    });

    test('returns nationality', () {
      expect(Person.nationality(), isNotEmpty);

      for (final locale in Locale.values) {
        final maleNationality = Person.nationality(
          gender: Gender.male,
          locale: locale,
        );
        final femaleNationality = Person.nationality(
          gender: Gender.female,
          locale: locale,
        );
        final data = PersonData.locale[locale.name]!;
        final maleData =
            data.nationality[Gender.male.name] ?? data.nationality['generic']!;
        final femaleData = data.nationality[Gender.female.name] ??
            data.nationality['generic']!;
        expect(maleData.contains(maleNationality), true);
        expect(femaleData.contains(femaleNationality), true);
      }
    });

    test('returns university', () {
      expect(Person.university(), isNotEmpty);

      for (final locale in Locale.values) {
        final result = Person.university(locale: locale);
        final data = PersonData.locale[locale.name]!.university;
        expect(data.contains(result), true);
      }
    });

    test('returns academic degree', () {
      expect(Person.academicDegree(), isNotEmpty);

      for (final locale in Locale.values) {
        final result = Person.academicDegree(locale: locale);
        final data = PersonData.locale[locale.name]!.academicDegree;
        expect(data.contains(result), true);
      }
    });

    test('returns language name', () {
      expect(Person.language(), isNotEmpty);

      for (final locale in Locale.values) {
        final result = Person.language(locale: locale);
        final data = PersonData.locale[locale.name]!.language;
        expect(data.contains(result), true);
      }
    });

    test('returns phone number', () {
      expect(Person.phoneNumber(), isNotEmpty);

      final result = Person.phoneNumber(mask: "123#");
      expect(result.startsWith("123"), true);
      expect(result.length, 4);
    });

    test('returns identifier by mask', () {
      expect(Person.identifier().length, 8);

      final result = Person.identifier(mask: "123#");
      expect(result.startsWith("123"), true);
      expect(result.length, 4);
    });
  });
}

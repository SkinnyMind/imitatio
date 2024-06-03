import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/person.dart';
import 'package:test/test.dart';

void main() {
  group('Person', () {
    test('returns name', () {
      expect(Person.name(), isNotEmpty);

      final locale = Locale.ru;
      final male = Person.name(gender: Gender.male, locale: locale);
      final female = Person.name(gender: Gender.female, locale: locale);
      final data = PersonData.locale(locale);
      expect(data.names(Gender.male).contains(male), true);
      expect(data.names(Gender.female).contains(female), true);
    });

    test('returns surname', () {
      expect(Person.surname(), isNotEmpty);

      final locale = Locale.ru;
      final male = Person.surname(gender: Gender.male, locale: locale);
      final female = Person.surname(gender: Gender.female, locale: locale);
      final data = PersonData.locale(locale);
      expect(data.surnames(Gender.male).contains(male), true);
      expect(data.surnames(Gender.female).contains(female), true);
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

      final titleType = TitleType.academic;
      final locale = Locale.ru;
      final male = Person.title(
        gender: Gender.male,
        titleType: titleType,
        locale: locale,
      );
      final female = Person.title(
        gender: Gender.female,
        titleType: titleType,
        locale: locale,
      );
      final data = PersonData.locale(locale);
      final maleData = data.title(
        gender: Gender.male,
        titleType: titleType,
      );
      final femaleData = data.title(
        gender: Gender.female,
        titleType: titleType,
      );
      expect(maleData.contains(male), true);
      expect(femaleData.contains(female), true);
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

      final locale = Locale.ru;
      final result = Person.gender(locale: locale);
      final data = PersonData.locale(locale).gender;
      expect(data.contains(result), true);
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

      final locale = Locale.ru;
      final result = Person.occupation(locale: locale);
      final data = PersonData.locale(locale).occupation;
      expect(data.contains(result), true);
    });

    test('returns political views', () {
      expect(Person.politicalViews(), isNotEmpty);

      final locale = Locale.ru;
      final result = Person.politicalViews(locale: locale);
      final data = PersonData.locale(locale).politicalViews;
      expect(data.contains(result), true);
    });

    test('returns worldview', () {
      expect(Person.worldview(), isNotEmpty);

      final locale = Locale.ru;
      final result = Person.worldview(locale: locale);
      final data = PersonData.locale(locale).worldview;
      expect(data.contains(result), true);
    });

    test('returns views on something', () {
      expect(Person.viewsOn(), isNotEmpty);

      final locale = Locale.ru;
      final result = Person.viewsOn(locale: locale);
      final data = PersonData.locale(locale).viewsOn;
      expect(data.contains(result), true);
    });

    test('returns nationality', () {
      expect(Person.nationality(), isNotEmpty);

      final locale = Locale.ru;
      final male = Person.nationality(
        gender: Gender.male,
        locale: locale,
      );
      final female = Person.nationality(
        gender: Gender.female,
        locale: locale,
      );
      final data = PersonData.locale(locale);
      expect(data.nationality(Gender.male).contains(male), true);
      expect(data.nationality(Gender.female).contains(female), true);
    });

    test('returns university', () {
      expect(Person.university(), isNotEmpty);

      final locale = Locale.ru;
      final result = Person.university(locale: locale);
      final data = PersonData.locale(locale).university;
      expect(data.contains(result), true);
    });

    test('returns academic degree', () {
      expect(Person.academicDegree(), isNotEmpty);

      final locale = Locale.ru;
      final result = Person.academicDegree(locale: locale);
      final data = PersonData.locale(locale).academicDegree;
      expect(data.contains(result), true);
    });

    test('returns language name', () {
      expect(Person.language(), isNotEmpty);

      final locale = Locale.ru;
      final result = Person.language(locale: locale);
      final data = PersonData.locale(locale).language;
      expect(data.contains(result), true);
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

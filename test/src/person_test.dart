import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/person.dart';
import 'package:test/test.dart';

void main() {
  group('Person', () {
    test('returns name', () {
      expect(Person.name(), isNotEmpty);

      final locale = Locale.ru;
      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).names(gender),
          contains(Person.name(gender: gender, locale: locale)),
        );
      }
    });

    test('returns surname', () {
      expect(Person.surname(), isNotEmpty);

      final locale = Locale.ru;
      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).surnames(gender),
          contains(Person.surname(gender: gender, locale: locale)),
        );
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

      final titleType = TitleType.academic;
      final locale = Locale.ru;
      for (final gender in Gender.values) {
        final data = PersonData.locale(locale).titles(
          gender: gender,
          titleType: titleType,
        );
        final result = Person.title(
          gender: gender,
          titleType: titleType,
          locale: locale,
        );
        expect(data, contains(result));
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
        IntPersonData.genderSymbols,
        contains(Person.genderSymbol()),
      );
    });

    test('returns gender code', () {
      expect(
        IntPersonData.genderCodes,
        contains(Person.genderCode()),
      );
    });

    test('returns gender title', () {
      expect(Person.gender(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        PersonData.locale(locale).genders,
        contains(Person.gender(locale: locale)),
      );
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
      expect(
        IntPersonData.bloodGroups,
        contains(Person.bloodType()),
      );
    });

    test('returns occupation', () {
      expect(Person.occupation(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        PersonData.locale(locale).occupations,
        contains(Person.occupation(locale: locale)),
      );
    });

    test('returns political views', () {
      expect(Person.politicalViews(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        PersonData.locale(locale).politicalViews,
        contains(Person.politicalViews(locale: locale)),
      );
    });

    test('returns worldview', () {
      expect(Person.worldview(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        PersonData.locale(locale).worldviews,
        contains(Person.worldview(locale: locale)),
      );
    });

    test('returns views on something', () {
      expect(Person.viewsOn(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        PersonData.locale(locale).viewsOn,
        contains(Person.viewsOn(locale: locale)),
      );
    });

    test('returns nationality', () {
      expect(Person.nationality(), isNotEmpty);

      final locale = Locale.ru;
      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).nationalities(gender),
          contains(Person.nationality(gender: gender, locale: locale)),
        );
      }
    });

    test('returns university', () {
      expect(Person.university(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        PersonData.locale(locale).universities,
        contains(Person.university(locale: locale)),
      );
    });

    test('returns academic degree', () {
      expect(Person.academicDegree(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        PersonData.locale(locale).academicDegrees,
        contains(Person.academicDegree(locale: locale)),
      );
    });

    test('returns language name', () {
      expect(Person.language(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        PersonData.locale(locale).languages,
        contains(Person.language(locale: locale)),
      );
    });

    test('returns phone number', () {
      expect(Person.phoneNumber(), isNotEmpty);

      final result = Person.phoneNumber(mask: "123#");
      expect(result, startsWith("123"));
      expect(result.length, 4);
    });

    test('returns identifier by mask', () {
      expect(Person.identifier().length, 8);

      final result = Person.identifier(mask: "123#");
      expect(result, startsWith("123"));
      expect(result.length, 4);
    });
  });
}

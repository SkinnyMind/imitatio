import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/person.dart';
import 'package:test/test.dart';

void main() {
  group('Person', () {
    const person = Person();
    const locale = Locale.ru;
    const localePerson = Person(locale: locale);

    test('returns name', () {
      expect(person.name(), isNotEmpty);

      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).names(gender),
          contains(localePerson.name(gender: gender)),
        );
      }
    });

    test('returns surname', () {
      expect(person.surname(), isNotEmpty);

      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).surnames(gender),
          contains(localePerson.surname(gender: gender)),
        );
      }
    });

    test('returns full name', () {
      final result = person.fullName().split(' ');
      expect(result.length, 2);
      expect(result[0], isNotEmpty);
      expect(result[1], isNotEmpty);

      final reversed = person.fullName(reverse: true).split(' ');
      expect(reversed.length, 2);
      expect(reversed[0], isNotEmpty);
      expect(reversed[1], isNotEmpty);
    });

    test('returns title', () {
      expect(person.title(), isNotEmpty);

      final titleType = TitleType.academic;
      for (final gender in Gender.values) {
        final data = PersonData.locale(locale).titles(
          gender: gender,
          titleType: titleType,
        );
        final result = localePerson.title(
          gender: gender,
          titleType: titleType,
        );
        expect(data, contains(result));
      }
    });

    test('returns username', () {
      expect(person.username().split('_').length, 2);

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
        final result = person.username(mask: pattern.key);
        expect(RegExp(pattern.value).hasMatch(result), true);
      }

      final digitsRange = int.parse(
        person.username(digitsMin: 10, digitsMax: 20).split('_').last,
      );
      expect(digitsRange >= 10 && digitsRange <= 20, true);
    });

    test('throws when trying to get username with invalid mask', () {
      expect(() => person.username(mask: ''), throwsA(isA<ArgumentError>()));
    });

    test('returns an email', () {
      final emailRegex = RegExp(
        r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)",
      );
      expect(emailRegex.hasMatch(person.email()), true);

      final domains = ['@example.com', 'example.com'];
      final result = person.email(domains: domains);
      expect(emailRegex.hasMatch(result), true);
      expect(result.split('@').last, 'example.com');

      final count = 1000000;
      final generated = <String>{};
      for (var i = 0; i < count; i++) {
        final email = person.email(domains: ['example.com'], unique: true);
        generated.add(email.split('@').first);
      }
      expect(generated.length, count);
    });

    test('returns gender symbol', () {
      expect(
        IntPersonData.genderSymbols,
        contains(person.genderSymbol),
      );
    });

    test('returns gender code', () {
      expect(
        IntPersonData.genderCodes,
        contains(person.genderCode),
      );
    });

    test('returns gender title', () {
      expect(person.gender, isNotEmpty);

      expect(
        PersonData.locale(locale).genders,
        contains(localePerson.gender),
      );
    });

    test('returns random height in meters', () {
      final defaultResult = double.parse(person.height());
      expect((defaultResult >= 1.5) && (defaultResult <= 2.0), true);

      final min = 1.7;
      final max = 1.8;
      final minMaxResult = double.parse(person.height(min: min, max: max));
      expect((minMaxResult >= min) && (minMaxResult <= max), true);
    });

    test('returns random weight in kg', () {
      final defaultResult = person.weight();
      expect((defaultResult >= 38) && (defaultResult <= 90), true);

      final min = 69;
      final max = 69;
      final minMaxResult = person.weight(min: min, max: max);
      expect((minMaxResult >= min) && (minMaxResult <= max), true);
    });

    test('returns random blood type', () {
      expect(
        IntPersonData.bloodGroups,
        contains(person.bloodType),
      );
    });

    test('returns occupation', () {
      expect(person.occupation, isNotEmpty);

      expect(
        PersonData.locale(locale).occupations,
        contains(localePerson.occupation),
      );
    });

    test('returns political views', () {
      expect(person.politicalViews, isNotEmpty);

      expect(
        PersonData.locale(locale).politicalViews,
        contains(localePerson.politicalViews),
      );
    });

    test('returns worldview', () {
      expect(person.worldview, isNotEmpty);

      expect(
        PersonData.locale(locale).worldviews,
        contains(localePerson.worldview),
      );
    });

    test('returns views on something', () {
      expect(person.viewsOn, isNotEmpty);

      expect(
        PersonData.locale(locale).viewsOn,
        contains(localePerson.viewsOn),
      );
    });

    test('returns nationality', () {
      expect(person.nationality(), isNotEmpty);

      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).nationalities(gender),
          contains(localePerson.nationality(gender: gender)),
        );
      }
    });

    test('returns university', () {
      expect(person.university, isNotEmpty);

      expect(
        PersonData.locale(locale).universities,
        contains(localePerson.university),
      );
    });

    test('returns academic degree', () {
      expect(person.academicDegree, isNotEmpty);

      expect(
        PersonData.locale(locale).academicDegrees,
        contains(localePerson.academicDegree),
      );
    });

    test('returns language name', () {
      expect(person.language, isNotEmpty);

      expect(
        PersonData.locale(locale).languages,
        contains(localePerson.language),
      );
    });

    test('returns phone number', () {
      expect(person.phoneNumber(), isNotEmpty);

      final result = person.phoneNumber(mask: "123#");
      expect(result, startsWith("123"));
      expect(result.length, 4);
    });

    test('returns identifier by mask', () {
      expect(person.identifier().length, 8);

      final result = person.identifier(mask: "123#");
      expect(result, startsWith("123"));
      expect(result.length, 4);
    });
  });
}

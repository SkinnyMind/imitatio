import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/country_specific/russia.dart';
import 'package:imitatio/src/datasets/country_specific/ukraine.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/person.dart';
import 'package:test/test.dart';

void main() {
  group('Person', () {
    const person = Person();
    const locale = Locale.ru;
    const localePerson = Person(locale: locale);
    const seededPerson = Person(seed: 1);

    test('returns birthdate', () {
      final currentYear = DateTime.now().year;
      final result = person.birthdate(minYear: currentYear);
      final resultYear = int.parse(result.split('-')[0]);
      expect(resultYear, equals(currentYear));
    });

    test('returns name', () {
      expect(person.name(), isNotEmpty);

      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).names(gender),
          contains(localePerson.name(gender: gender)),
        );
      }

      expect(seededPerson.name(), equals(seededPerson.name()));
    });

    test('returns patronymic name', () {
      for (final gender in Gender.values) {
        expect(
          RussiaSpecificData().patronymics(gender: gender),
          contains(const Person(locale: Locale.ru).patronymic(gender: gender)),
        );
      }

      for (final gender in Gender.values) {
        expect(
          UkraineSpecificData().patronymics(gender: gender),
          contains(const Person(locale: Locale.uk).patronymic(gender: gender)),
        );
      }

      expect(
        const Person(locale: Locale.ru, seed: 1).patronymic(),
        equals(const Person(locale: Locale.ru, seed: 1).patronymic()),
      );

      expect(
        const Person(locale: Locale.uk, seed: 1).patronymic(),
        equals(const Person(locale: Locale.uk, seed: 1).patronymic()),
      );
    });

    test('throws when trying to get patronymic name for wrong locale', () {
      expect(() => person.patronymic(), throwsArgumentError);
    });

    test('returns surname', () {
      expect(person.surname(), isNotEmpty);

      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).surnames(gender),
          contains(localePerson.surname(gender: gender)),
        );
      }

      expect(seededPerson.surname(), equals(seededPerson.surname()));
    });

    test('returns full name', () {
      final result = person.fullName().split(' ');
      expect(result.length, equals(2));
      expect(result[0], isNotEmpty);
      expect(result[1], isNotEmpty);

      final reversed = person.fullName(reverse: true).split(' ');
      expect(reversed.length, equals(2));
      expect(reversed[0], isNotEmpty);
      expect(reversed[1], isNotEmpty);

      expect(seededPerson.fullName(), equals(seededPerson.fullName()));

      final ruResult = const Person(locale: Locale.ru).fullName().split(' ');
      expect(ruResult.length, equals(3));
      expect(ruResult[0], isNotEmpty);
      expect(ruResult[1], isNotEmpty);
      expect(ruResult[2], isNotEmpty);

      final ukResult = const Person(locale: Locale.uk).fullName().split(' ');
      expect(ukResult.length, equals(3));
      expect(ukResult[0], isNotEmpty);
      expect(ukResult[1], isNotEmpty);
      expect(ukResult[2], isNotEmpty);
    });

    test('returns title', () {
      expect(person.title(), isNotEmpty);

      final titleType = TitleType.academic;
      for (final gender in Gender.values) {
        final data = PersonData.locale(
          locale,
        ).titles(gender: gender, titleType: titleType);
        final result = localePerson.title(gender: gender, titleType: titleType);
        expect(data, contains(result));
      }

      expect(seededPerson.title(), equals(seededPerson.title()));
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
      expect(digitsRange, inInclusiveRange(10, 20));

      expect(seededPerson.username(), equals(seededPerson.username()));
    });

    test('throws when trying to get username with invalid mask', () {
      expect(() => person.username(mask: ''), throwsArgumentError);
    });

    test('returns an email', () {
      final emailRegex = RegExp(
        r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)",
      );
      expect(emailRegex.hasMatch(person.email()), true);

      final domains = ['@example.com', 'example.com'];
      final result = person.email(domains: domains);
      expect(emailRegex.hasMatch(result), true);
      expect(result.split('@').last, equals('example.com'));

      final count = 1000000;
      final generated = <String>{};
      for (var i = 0; i < count; i++) {
        final email = person.email(domains: ['example.com'], unique: true);
        generated.add(email.split('@').first);
      }
      expect(generated.length, equals(count));

      expect(seededPerson.email(), equals(seededPerson.email()));
    });

    test('returns password', () {
      expect(person.password().length, equals(8));
      expect(person.password(length: 16).length, equals(16));
      expect(person.password(isHashed: true).length, equals(64));
      expect(seededPerson.password(), equals(seededPerson.password()));
    });

    test('returns gender symbol', () {
      expect(IntPersonData.genderSymbols, contains(person.genderSymbol));
      expect(seededPerson.genderSymbol, equals(seededPerson.genderSymbol));
    });

    test('returns gender code', () {
      expect(IntPersonData.genderCodes, contains(person.genderCode));
      expect(seededPerson.genderCode, equals(seededPerson.genderCode));
    });

    test('returns gender title', () {
      expect(person.gender, isNotEmpty);

      expect(PersonData.locale(locale).genders, contains(localePerson.gender));

      expect(seededPerson.gender, equals(seededPerson.gender));
    });

    test('returns random height in meters', () {
      final defaultResult = double.parse(person.height());
      expect(defaultResult, inInclusiveRange(1.5, 2.0));

      final min = 1.7;
      final max = 1.8;
      final minMaxResult = double.parse(person.height(min: min, max: max));
      expect(minMaxResult, inInclusiveRange(min, max));

      expect(seededPerson.height(), equals(seededPerson.height()));
    });

    test('returns random weight in kg', () {
      final defaultResult = person.weight();
      expect(defaultResult, inInclusiveRange(38, 90));

      final min = 69;
      final max = 69;
      final minMaxResult = person.weight(min: min, max: max);
      expect(minMaxResult, inInclusiveRange(min, max));

      expect(seededPerson.weight(), equals(seededPerson.weight()));
    });

    test('returns random blood type', () {
      expect(IntPersonData.bloodGroups, contains(person.bloodType));
      expect(seededPerson.bloodType, equals(seededPerson.bloodType));
    });

    test('returns occupation', () {
      expect(person.occupation, isNotEmpty);

      expect(
        PersonData.locale(locale).occupations,
        contains(localePerson.occupation),
      );

      expect(seededPerson.occupation, equals(seededPerson.occupation));
    });

    test('returns political views', () {
      expect(person.politicalViews, isNotEmpty);

      expect(
        PersonData.locale(locale).politicalViews,
        contains(localePerson.politicalViews),
      );

      expect(seededPerson.politicalViews, equals(seededPerson.politicalViews));
    });

    test('returns worldview', () {
      expect(person.worldview, isNotEmpty);

      expect(
        PersonData.locale(locale).worldviews,
        contains(localePerson.worldview),
      );

      expect(seededPerson.worldview, equals(seededPerson.worldview));
    });

    test('returns views on something', () {
      expect(person.viewsOn, isNotEmpty);

      expect(PersonData.locale(locale).viewsOn, contains(localePerson.viewsOn));

      expect(seededPerson.viewsOn, equals(seededPerson.viewsOn));
    });

    test('returns nationality', () {
      expect(person.nationality(), isNotEmpty);

      for (final gender in Gender.values) {
        expect(
          PersonData.locale(locale).nationalities(gender),
          contains(localePerson.nationality(gender: gender)),
        );
      }

      expect(seededPerson.nationality(), equals(seededPerson.nationality()));
    });

    test('returns university', () {
      expect(person.university, isNotEmpty);

      expect(
        PersonData.locale(locale).universities,
        contains(localePerson.university),
      );

      expect(seededPerson.university, equals(seededPerson.university));
    });

    test('returns academic degree', () {
      expect(person.academicDegree, isNotEmpty);

      expect(
        PersonData.locale(locale).academicDegrees,
        contains(localePerson.academicDegree),
      );

      expect(seededPerson.academicDegree, equals(seededPerson.academicDegree));
    });

    test('returns language name', () {
      expect(person.language, isNotEmpty);

      expect(
        PersonData.locale(locale).languages,
        contains(localePerson.language),
      );

      expect(seededPerson.language, equals(seededPerson.language));
    });

    test('returns phone number', () {
      expect(person.phoneNumber(), isNotEmpty);

      final result = person.phoneNumber(mask: "123#");
      expect(result, startsWith("123"));
      expect(result.length, equals(4));

      expect(seededPerson.phoneNumber(), equals(seededPerson.phoneNumber()));
    });

    test('returns identifier by mask', () {
      expect(person.identifier().length, equals(8));

      final result = person.identifier(mask: "123#");
      expect(result, startsWith("123"));
      expect(result.length, equals(4));

      expect(seededPerson.identifier(), equals(seededPerson.identifier()));
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/person.dart';
import 'package:test/test.dart';

void main() {
  group('Person', () {
    const person = Person();

    test('returns name', () {
      expect(person.name(), isNotEmpty);

      final maleName = person.name(gender: Gender.male);
      final femaleName = person.name(gender: Gender.female);
      expect(PersonData.namesMale.contains(maleName), true);
      expect(PersonData.namesFemale.contains(femaleName), true);
    });

    test('returns surname', () {
      final result = person.surname();
      expect(PersonData.surnames.contains(result), true);
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
  });
}

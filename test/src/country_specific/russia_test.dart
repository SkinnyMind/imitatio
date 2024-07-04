import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/country_specific/russia.dart';
import 'package:test/test.dart';

void main() {
  group('Russia', () {
    final russia = CountrySpecific.russia();
    final seededRussia = CountrySpecific.russia(seed: 1);

    test('returns passport number', () async {
      final result = russia.passportNumber().split(' ');
      expect(result[0].length, equals(2));
      expect(result[1].length, equals(2));
      expect(result[2].length, equals(6));

      final withYear = russia.passportNumber(year: 99).split(' ');
      expect(withYear[1], equals('99'));

      expect(
        seededRussia.passportNumber(),
        equals(seededRussia.passportNumber()),
      );
    });

    test('throws when provided year for passport is not 2 digits', () async {
      expect(() => russia.passportNumber(year: 1999), throwsArgumentError);
    });

    test('returns SNILS', () async {
      expect(russia.snils.length, equals(11));
      expect(seededRussia.snils, equals(seededRussia.snils));
    });

    test('returns INN', () async {
      expect(russia.inn.length, equals(12));
      expect(seededRussia.inn, equals(seededRussia.inn));
    });

    test('returns OGRN', () async {
      expect(russia.ogrn.length, equals(13));
      expect(seededRussia.ogrn, equals(seededRussia.ogrn));
    });

    test('returns BIC', () async {
      expect(russia.bic.length, equals(9));
      expect(seededRussia.bic, equals(seededRussia.bic));
    });

    test('returns KPP', () async {
      expect(russia.kpp.length, equals(9));
      expect(seededRussia.kpp, equals(seededRussia.kpp));
    });

    test('returns patronymic name', () async {
      expect(russia.patronymic(), isNotEmpty);

      for (final gender in Gender.values) {
        expect(
          RussiaSpecificData().patronymics(gender: gender),
          contains(russia.patronymic(gender: gender)),
        );
      }

      expect(seededRussia.patronymic(), equals(seededRussia.patronymic()));
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/country_specific/ukraine.dart';
import 'package:test/test.dart';

void main() {
  group('Ukraine', () {
    final ukraine = CountrySpecific.ukraine();
    final seededUkraine = CountrySpecific.ukraine(seed: 1);

    test('returns patronymic name', () {
      expect(ukraine.patronymic(), isNotEmpty);

      for (final gender in Gender.values) {
        expect(
          UkraineSpecificData().patronymics(gender: gender),
          contains(ukraine.patronymic(gender: gender)),
        );
      }

      expect(seededUkraine.patronymic(), equals(seededUkraine.patronymic()));
    });
  });
}

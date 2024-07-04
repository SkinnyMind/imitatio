import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/country_specific/ukraine.dart';
import 'package:test/test.dart';

void main() {
  group('Ukraine', () {
    final ukraine = CountrySpecific.ukraine();
    final seededUkraine = CountrySpecific.ukraine(seed: 1);

    test('returns patronymic name', () async {
      expect(ukraine.patronymic(), isNotEmpty);

      final maleResult = ukraine.patronymic(gender: Gender.male);
      expect(
        UkraineSpecificData().patronymics(gender: Gender.male),
        contains(maleResult),
      );

      final femaleResult = ukraine.patronymic(gender: Gender.female);
      expect(
        UkraineSpecificData().patronymics(gender: Gender.female),
        contains(femaleResult),
      );

      expect(seededUkraine.patronymic(), equals(seededUkraine.patronymic()));
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Italy', () {
    final italy = CountrySpecific.italy();
    final seededItaly = CountrySpecific.italy(seed: 1);

    test('returns fiscal code', () {
      final maleResult = italy.fiscalCode(gender: Gender.male);
      expect(
        RegExp(
          r'^[A-Z]{6}\d{2}[A-EHLMPR-T][0123][0-9][A-MZ]\d{3}[A-Z]$',
        ).hasMatch(maleResult),
        true,
      );

      final femaleResult = italy.fiscalCode(gender: Gender.female);
      expect(
        RegExp(
          r'^[A-Z]{6}\d{2}[A-EHLMPR-T][4567][0-9][A-MZ]\d{3}[A-Z]$',
        ).hasMatch(femaleResult),
        true,
      );

      expect(seededItaly.fiscalCode(), equals(seededItaly.fiscalCode()));
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Poland', () {
    final poland = CountrySpecific.poland();
    final seededPoland = CountrySpecific.poland(seed: 1);

    test('returns NIP number', () async {
      final result = poland.nip;
      expect(result.length, equals(10));

      final nipCoefficients = [6, 5, 7, 2, 3, 4, 5, 6, 7];
      var sumV = 0;
      for (var i = 0; i < nipCoefficients.length; i++) {
        sumV += nipCoefficients[i] * int.parse(result[i]);
      }
      final checksumDigit = sumV % 11;
      expect(int.parse(result[9]), equals(checksumDigit));

      expect(seededPoland.nip, equals(seededPoland.nip));
    });

    test('returns PESEL number', () async {
      final result = poland.pesel();
      expect(result.length, equals(11));

      int validatePesel(String pesel) {
        final peselCoefficients = [9, 7, 3, 1, 9, 7, 3, 1, 9, 7];
        var sumV = 0;
        for (var i = 0; i < peselCoefficients.length; i++) {
          sumV += peselCoefficients[i] * int.parse(pesel[i]);
        }
        return sumV % 10;
      }

      expect(int.parse(result[10]), equals(validatePesel(result)));

      final dateResult = poland.pesel(birthDate: DateTime(2001));
      expect(dateResult.length, equals(11));
      expect(int.parse(dateResult[10]), equals(validatePesel(dateResult)));

      final maleResult = poland.pesel(gender: Gender.male);
      expect(maleResult.length, equals(11));
      expect(int.parse(maleResult[10]), equals(validatePesel(maleResult)));

      final femaleResult = poland.pesel(gender: Gender.female);
      expect(femaleResult.length, equals(11));
      expect(int.parse(femaleResult[10]), equals(validatePesel(femaleResult)));

      expect(seededPoland.pesel(), equals(seededPoland.pesel()));
    });

    test('returns REGON number', () async {
      final result = poland.regon;
      expect(result.length, equals(9));

      final regonCoefficients = [8, 9, 2, 3, 4, 5, 6, 7];
      var sumV = 0;
      for (var i = 0; i < regonCoefficients.length; i++) {
        sumV += regonCoefficients[i] * int.parse(result[i]);
      }
      var checksumDigit = sumV % 11;
      if (checksumDigit > 9) checksumDigit = 0;
      expect(int.parse(result[8]), equals(checksumDigit));

      expect(seededPoland.regon, equals(seededPoland.regon));
    });
  });
}

import 'package:imitatio/src/util.dart';
import 'package:test/test.dart';

void main() {
  group('Util', () {
    test('returns list of randomly picked strings', () {
      const list = ['one', 'two', 'three', 'four'];
      final picked = Util.pickN(list: list, n: 2);

      expect(picked.length, 2);
      for (final pick in picked) {
        expect(list, contains(pick));
      }

      expect(
        Util.pickN(list: list, n: 5, seed: 1),
        equals(Util.pickN(list: list, n: 5, seed: 1)),
      );
    });

    test('returns number of days in provided month', () {
      expect(Util.daysInMonth(year: 2020, month: 02), 29);
      expect(Util.daysInMonth(year: 2021, month: 02), 28);
    });

    test('checks if provided year is a leap year', () {
      expect(Util.isLeapYear(year: 2020), true);
      expect(Util.isLeapYear(year: 2021), false);
    });

    test('returns luhn checksum', () {
      expect(Util.luhnChecksum('5563455651'), '2');
      expect(Util.luhnChecksum('7992739871'), '3');
      expect(Util.luhnChecksum('5161675549'), '5');
    });

    test('returns CPR check digit', () {
      final expectedCheckDigits = [0, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0];
      final first9Digits = [
        "060170000",
        "260310579",
        "060558958",
        "210609428",
        "171208281",
        "130208400",
        "020678688",
        "050302471",
        "030670890",
        "100309468",
        "250814378",
      ];

      for (final (i, first9) in first9Digits.indexed) {
        expect(
          Util.calculateCprCheckDigit(first9),
          equals(expectedCheckDigits[i]),
        );
      }
    });
  });
}

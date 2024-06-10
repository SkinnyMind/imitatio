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
  });
}

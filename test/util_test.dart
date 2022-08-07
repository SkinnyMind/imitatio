import 'package:imitatio/src/util.dart';
import 'package:test/test.dart';

void main() {
  group('Util', () {
    test('returns list of randomly picked strings', () {
      const list = ['one', 'two', 'three', 'four'];
      final picked = Util.pickN(list: list, n: 2);

      expect(picked.length, 2);
      for (final pick in picked) {
        expect(list.contains(pick), true);
      }
    });

    test('returns number of days in provided month', () {
      expect(Util.daysInMonth(2020, 02), 29);
      expect(Util.daysInMonth(2021, 02), 28);
    });

    test('checks if provided year is a leap year', () {
      expect(Util.isLeapYear(2020), true);
      expect(Util.isLeapYear(2021), false);
    });
  });
}

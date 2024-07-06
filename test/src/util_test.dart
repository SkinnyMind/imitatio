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

    test('correctly compresses ipv6', () {
      const addresses = [
        '0:0:0:4e6e:0:0:0:500b',
        '0:aa6a:0:4e6e:0:0:0:500b',
        '0:0:5975:4e6e:0:0:0:500b',
        '0:0:0:4e6e:aa6a:0:0:500b',
        '0:9253:aa6a:4e6e:aa6a:0:3a8c:500b',
        '9253:aa6a:5975:cd4:a686:3a8c:ea00:de21',
        '9253:aa6a:5975:cd4:a686:3a8c:ea00:de00',
        'ea00:aa6a:5975:cd4:a686:3a8c:ea00:de00',
        'ea00:aa6a:5975:cd4:a686:3a8c:3a8c:0',
        'ea00:aa6a:5975:cd4:a686:3a8c:0:0',
        '2001:db8:0:0:8:800:200c:417a',
        'ff01:0:0:0:0:0:0:101',
        '0:0:0:0:0:0:0:1',
        '0:0:0:0:0:0:0:0',
      ];

      const expected = [
        '::4e6e:0:0:0:500b',
        '0:aa6a:0:4e6e::500b',
        '0:0:5975:4e6e::500b',
        '::4e6e:aa6a:0:0:500b',
        '0:9253:aa6a:4e6e:aa6a:0:3a8c:500b',
        '9253:aa6a:5975:cd4:a686:3a8c:ea00:de21',
        '9253:aa6a:5975:cd4:a686:3a8c:ea00:de00',
        'ea00:aa6a:5975:cd4:a686:3a8c:ea00:de00',
        'ea00:aa6a:5975:cd4:a686:3a8c:3a8c:0',
        'ea00:aa6a:5975:cd4:a686:3a8c::',
        '2001:db8::8:800:200c:417a',
        'ff01::101',
        '::1',
        '::',
      ];

      for (final (i, address) in addresses.indexed) {
        final result = Util.compressIPv6(address);
        expect(result, equals(expected[i]));
      }
    });
  });
}

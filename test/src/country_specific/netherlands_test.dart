import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Netherlands', () {
    final netherlands = CountrySpecific.netherlands();
    final seededNetherlands = CountrySpecific.netherlands(seed: 1);

    test('returns BSN number', () {
      final result = netherlands.bsn;
      expect(result.length, equals(9));

      final test11 =
          int.parse(result[0]) * 9 +
          int.parse(result[1]) * 8 +
          int.parse(result[2]) * 7 +
          int.parse(result[3]) * 6 +
          int.parse(result[4]) * 5 +
          int.parse(result[5]) * 4 +
          int.parse(result[6]) * 3 +
          int.parse(result[7]) * 2 +
          int.parse(result[8]) * -1;

      expect(test11 % 11, equals(0));

      expect(seededNetherlands.bsn, equals(seededNetherlands.bsn));
    });
  });
}

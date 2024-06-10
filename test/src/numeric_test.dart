import 'package:imitatio/src/numeric.dart';
import 'package:test/test.dart';

void main() {
  group('Numeric', () {
    const numeric = Numeric();
    const seededNumeric = Numeric(seed: 1);

    test('returns float number', () {
      final result = numeric.floatNumber();
      expect((result >= -1000.0) && (result <= 1000.0), true);

      final min = 10.0;
      final max = 15.0;
      final precision = 3;
      final minMaxResult =
          numeric.floatNumber(start: min, end: max, precision: precision);
      expect((minMaxResult >= min) && (minMaxResult <= max), true);

      final precisionDigits = minMaxResult.toString().split('.')[1];
      expect(precisionDigits.length <= precision, true);

      expect(
        seededNumeric.floatNumber(),
        equals(seededNumeric.floatNumber()),
      );
    });

    test('returns list of float numbers', () {
      final result = numeric.floats();
      expect(result.length, 10);
      for (final float in result) {
        expect((float >= 0.0) && (float <= 1.0), true);
      }

      final n = 3;
      final nResult = numeric.floats(n: n, precision: 3);
      expect(nResult.length, 3);

      expect(
        seededNumeric.floats(),
        equals(seededNumeric.floats()),
      );
    });

    test('returns integer number', () {
      final result = numeric.integerNumber();
      expect((result >= -1000) && (result <= 1000), true);

      final min = 10;
      final max = 15;
      final minMaxResult = numeric.integerNumber(start: min, end: max);
      expect((minMaxResult >= min) && (minMaxResult <= max), true);

      expect(
        seededNumeric.integerNumber(),
        equals(seededNumeric.integerNumber()),
      );
    });

    test('returns list of integer numbers', () {
      final result = numeric.integers();
      expect(result.length, 10);
      for (final integer in result) {
        expect((integer >= 0) && (integer <= 10), true);
      }

      final n = 3;
      final nResult = numeric.integers(n: n);
      expect(nResult.length, 3);

      expect(
        seededNumeric.integers(),
        equals(seededNumeric.integers()),
      );
    });
  });
}

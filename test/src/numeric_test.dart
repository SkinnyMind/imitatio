import 'package:imitatio/src/numeric.dart';
import 'package:test/test.dart';

void main() {
  group('Numeric', () {
    test('returns float number', () {
      final result = Numeric.floatNumber();
      expect((result >= -1000.0) && (result <= 1000.0), true);

      final min = 10.0;
      final max = 15.0;
      final precision = 3;
      final minMaxResult =
          Numeric.floatNumber(start: min, end: max, precision: precision);
      expect((minMaxResult >= min) && (minMaxResult <= max), true);

      final precisionDigits = minMaxResult.toString().split('.')[1];
      expect(precisionDigits.length, precision);
    });

    test('returns list of float numbers', () {
      final result = Numeric.floats();
      expect(result.length, 10);
      for (final float in result) {
        expect((float >= 0.0) && (float <= 1.0), true);
      }

      final n = 3;
      final nResult = Numeric.floats(n: n, precision: 3);
      expect(nResult.length, 3);
    });
  });

  test('returns integer number', () {
    final result = Numeric.integerNumber();
    expect((result >= -1000) && (result <= 1000), true);

    final min = 10;
    final max = 15;
    final minMaxResult = Numeric.integerNumber(start: min, end: max);
    expect((minMaxResult >= min) && (minMaxResult <= max), true);
  });

  test('returns list of integer numbers', () {
    final result = Numeric.integers();
    expect(result.length, 10);
    for (final integer in result) {
      expect((integer >= 0) && (integer <= 10), true);
    }

    final n = 3;
    final nResult = Numeric.integers(n: n);
    expect(nResult.length, 3);
  });
}

import 'package:imitatio/src/numeric.dart';
import 'package:test/test.dart';

void main() {
  group('Numeric', () {
    const numeric = Numeric();
    const seededNumeric = Numeric(seed: 1);

    test('returns float number', () {
      final result = numeric.floatNumber();
      expect(result, inInclusiveRange(-1000.0, 1000.0));

      final min = 10.0;
      final max = 15.0;
      final precision = 3;
      final minMaxResult =
          numeric.floatNumber(start: min, end: max, precision: precision);
      expect(minMaxResult, inInclusiveRange(min, max));

      final precisionDigits = minMaxResult.toString().split('.')[1];
      expect(precisionDigits.length, lessThanOrEqualTo(precision));

      expect(
        seededNumeric.floatNumber(),
        equals(seededNumeric.floatNumber()),
      );
    });

    test('throws when trying to return float number in wrong range', () {
      expect(() => numeric.floatNumber(start: 10, end: 1), throwsRangeError);
    });

    test('returns list of float numbers', () {
      final result = numeric.floats();
      expect(result.length, 10);
      for (final float in result) {
        expect(float, inInclusiveRange(0.0, 1.0));
      }

      final n = 3;
      final nResult = numeric.floats(n: n, precision: 3);
      expect(nResult.length, equals(3));

      expect(
        seededNumeric.floats(),
        equals(seededNumeric.floats()),
      );
    });

    test('throws when trying to return floats in wrong range', () {
      expect(() => numeric.floats(start: 10, end: 2), throwsRangeError);
    });

    test('returns integer number', () {
      final result = numeric.integerNumber();
      expect(result, inInclusiveRange(-1000, 1000));

      final min = 10;
      final max = 15;
      final minMaxResult = numeric.integerNumber(start: min, end: max);
      expect(minMaxResult, inInclusiveRange(min, max));

      expect(
        seededNumeric.integerNumber(),
        equals(seededNumeric.integerNumber()),
      );
    });

    test('throws when trying to return integer in wrong range', () {
      expect(() => numeric.integerNumber(start: 10, end: 1), throwsRangeError);
    });

    test('returns list of integer numbers', () {
      final result = numeric.integers();
      expect(result.length, 10);
      for (final integer in result) {
        expect(integer, inInclusiveRange(0, 10));
      }

      final n = 3;
      final nResult = numeric.integers(n: n);
      expect(nResult.length, equals(3));

      expect(
        seededNumeric.integers(),
        equals(seededNumeric.integers()),
      );
    });

    test('throws when trying to return integers in wrong range', () {
      expect(() => numeric.integers(start: 10, end: 1), throwsRangeError);
    });

    test('returns complex number', () {
      expect(numeric.complexNumber(), isA<Record>());

      const realPrecision = 10;
      const imaginaryPrecision = 10;
      final result = numeric.complexNumber(
        realStart: 1.2,
        realEnd: 10,
        realPrecision: realPrecision,
        imaginaryStart: 1,
        imaginaryEnd: 2.4,
        imaginaryPrecision: imaginaryPrecision,
      );
      expect(
        result.real.toString().split('.').last.length,
        lessThanOrEqualTo(realPrecision),
      );
      expect(
        result.imaginary.toString().split('.').last.length,
        lessThanOrEqualTo(imaginaryPrecision),
      );

      expect(
        seededNumeric.complexNumber(),
        equals(seededNumeric.complexNumber()),
      );
    });

    test('returns complex number', () {
      expect(numeric.complexes().length, equals(10));

      const realPrecision = 10;
      const imaginaryPrecision = 10;
      const n = 3;
      final result = numeric.complexes(
        realStart: 1.2,
        realEnd: 10,
        realPrecision: realPrecision,
        imaginaryStart: 1,
        imaginaryEnd: 2.4,
        imaginaryPrecision: imaginaryPrecision,
        n: n,
      );
      expect(result.length, equals(n));

      expect(
        seededNumeric.complexes(n: 3),
        equals(seededNumeric.complexes(n: 3)),
      );
    });
  });
}

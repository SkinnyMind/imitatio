import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/science.dart';
import 'package:test/test.dart';

void main() {
  group('Science', () {
    const science = Science();
    const seededScience = Science(seed: 1);

    test('returns dna sequence', () {
      expect(science.dnaSequence().length, equals(10));
      expect(science.dnaSequence(lenght: 3).length, equals(3));
      expect(seededScience.dnaSequence(), equals(seededScience.dnaSequence()));
    });

    test('returns measure unit', () {
      expect(science.measureUnit(), isNotEmpty);

      expect(science.measureUnit(name: .mass), equals(MeasureUnit.mass.name));

      expect(
        science.measureUnit(name: .mass, asSymbol: true),
        equals(MeasureUnit.mass.symbol),
      );

      expect(seededScience.measureUnit(), equals(seededScience.measureUnit()));
    });

    test('returns metric prefix', () {
      expect(science.metricPrefix(), isNotEmpty);

      final sign = MetricPrefixSign.positive;
      expect(
        IntScienceData.prefixes(sign),
        contains(science.metricPrefix(sign: sign)),
      );

      expect(
        IntScienceData.prefixesSymbols(sign),
        contains(science.metricPrefix(sign: sign, asSymbol: true)),
      );

      expect(
        seededScience.metricPrefix(),
        equals(seededScience.metricPrefix()),
      );
    });
  });
}

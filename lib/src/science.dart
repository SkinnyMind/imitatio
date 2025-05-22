import 'dart:math';

import 'package:imitatio/src/datasets/international/science.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to science.
class Science {
  /// Provides data related to food.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Science({this.seed});

  final int? seed;

  /// Returns a random DNA sequence.
  ///
  /// [length] is optional length of block (default is 10).
  ///
  /// Example:
  /// ```dart
  /// Science().dnaSequence(); // "TCTCATCCCG"
  /// Science().dnaSequence(lenght: 3); // "AAG"
  /// ```
  String dnaSequence({int lenght = 10}) {
    return Util.pickN(list: ['T', 'C', 'G', 'A'], n: lenght, seed: seed).join();
  }

  /// Returns unit name from the International System of Units.
  ///
  /// [name] is optional [MeasureUnit].
  ///
  /// [asSymbol] determines whether to return only symbol (default is false).
  ///
  /// Example:
  /// ```dart
  /// Science().measureUnit(); // "steradian"
  /// Science().measureUnit(name: MeasureUnit.mass); // "gram"
  /// Science().measureUnit(name: MeasureUnit.mass, asSymbol: true); // "gr"
  /// ```
  String measureUnit({MeasureUnit? name, bool asSymbol = false}) {
    final data = MeasureUnit.values;
    final unit = name ?? data[Random(seed).integer(max: data.length - 1)];
    return asSymbol ? unit.symbol : unit.name;
  }

  /// Returns a random prefix for the International System of Units.
  ///
  /// [sign] is optional [MetricPrefixSign] sign of prefix.
  ///
  /// [asSymbol] determines whether to return only symbol (default is false).
  ///
  /// Example:
  /// ```dart
  /// Science().metricPrefix(); // "hecto"
  /// Science().metricPrefix(sign: MetricPrefixSign.positive, asSymbol: true); // "k"
  /// ```
  String metricPrefix({MetricPrefixSign? sign, bool asSymbol = false}) {
    final random = Random(seed);
    final signs = MetricPrefixSign.values;
    final prefixSign = sign ?? signs[random.integer(max: signs.length - 1)];

    final data = asSymbol
        ? IntScienceData.prefixesSymbols(prefixSign)
        : IntScienceData.prefixes(prefixSign);

    return data[random.integer(max: data.length - 1)];
  }
}

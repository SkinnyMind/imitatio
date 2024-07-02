import 'package:imitatio/src/country_specific/da.dart';
import 'package:imitatio/src/country_specific/italy.dart';
import 'package:imitatio/src/country_specific/usa.dart';

class CountrySpecific {
  const CountrySpecific._();

  /// Provides special data for Denmark.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  static Denmark denmark({int? seed}) => Denmark(seed: seed);

  /// Provides special data for USA.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  static USA usa({int? seed}) => USA(seed: seed);

  /// Provides special data for Italy.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  static Italy italy({int? seed}) => Italy(seed: seed);
}

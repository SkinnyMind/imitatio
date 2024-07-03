import 'package:imitatio/src/country_specific/denmark.dart';
import 'package:imitatio/src/country_specific/italy.dart';
import 'package:imitatio/src/country_specific/netherlands.dart';
import 'package:imitatio/src/country_specific/poland.dart';
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

  /// Provides special data for Netherlands.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  static Netherlands netherlands({int? seed}) => Netherlands(seed: seed);

  /// Provides special data for Poland.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  static Poland poland({int? seed}) => Poland(seed: seed);
}

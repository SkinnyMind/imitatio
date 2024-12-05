import 'package:imitatio/src/country_specific/brazil.dart';
import 'package:imitatio/src/country_specific/denmark.dart';
import 'package:imitatio/src/country_specific/italy.dart';
import 'package:imitatio/src/country_specific/netherlands.dart';
import 'package:imitatio/src/country_specific/poland.dart';
import 'package:imitatio/src/country_specific/russia.dart';
import 'package:imitatio/src/country_specific/ukraine.dart';
import 'package:imitatio/src/country_specific/usa.dart';

/// Provides special data related to specific country.
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

  /// Provides special data for Brazil.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  static Brazil brazil({int? seed}) => Brazil(seed: seed);

  /// Provides special data for Russia.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  static Russia russia({int? seed}) => Russia(seed: seed);

  /// Provides special data for Ukraine.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  static Ukraine ukraine({int? seed}) => Ukraine(seed: seed);
}

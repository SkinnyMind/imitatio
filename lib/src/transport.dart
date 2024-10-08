import 'dart:math';

import 'package:imitatio/src/datasets/international/transport.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';

/// Provides data related to transports.
class Transport {
  /// Provides data related to transports.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Transport({this.seed});

  final int? seed;

  /// Returns a random vehicle manufacturer.
  ///
  /// Example:
  /// ```dart
  /// Transport().manufacturer; // "McLaren"
  /// ```
  String get manufacturer {
    final data = IntTransportData.manufacturers;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random vehicle.
  ///
  /// Example:
  /// ```dart
  /// Transport().car; // "Jeep Cherokee (XJ)"
  /// ```
  String get car {
    final data = IntTransportData.cars;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns an airplane model.
  ///
  /// Example:
  /// ```dart
  /// Transport().airplane; // "Airbus 721"
  /// ```
  String get airplane {
    final data = IntTransportData.airplanes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns vehicle registration code.
  ///
  /// [locale] is optional [Locale].
  ///
  /// Example:
  /// ```dart
  /// Transport().vehicleRegistrationCode(); // "TO"
  /// Transport().vehicleRegistrationCode(locale: Locale.en); // "USA"
  /// ```
  String vehicleRegistrationCode({Locale? locale}) {
    if (locale == null) {
      final data = IntTransportData.vrCodes;
      return data[Random(seed).integer(max: data.length - 1)];
    } else {
      return IntTransportData.vrcByLocale(locale: locale);
    }
  }
}

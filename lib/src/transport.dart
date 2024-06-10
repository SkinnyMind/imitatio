import 'dart:math';

import 'package:imitatio/src/datasets/international/transport.dart';

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
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random vehicle.
  ///
  /// Example:
  /// ```dart
  /// Transport().car; // "Jeep Cherokee (XJ)"
  /// ```
  String get car {
    final data = IntTransportData.cars;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns an airplane model.
  ///
  /// Example:
  /// ```dart
  /// Transport().airplane; // "Airbus 721"
  /// ```
  String get airplane {
    final data = IntTransportData.airplanes;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns vehicle registration code.
  ///
  /// Example:
  /// ```dart
  /// Transport().vehicleRegistrationCode; // "TO"
  /// ```
  String get vehicleRegistrationCode {
    final data = IntTransportData.vrCodes;
    return data[Random(seed).nextInt(data.length)];
  }
}

import 'dart:math';

import 'package:imitatio/src/datasets/international/transport.dart';

/// Provides data related to transports.
class Transport {
  const Transport._();

  /// Returns a random vehicle manufacturer.
  ///
  /// Example:
  /// ```dart
  /// Transport.manufacturer(); // "McLaren"
  /// ```
  static String manufacturer() {
    final data = TransportData.manufacturers;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random vehicle.
  ///
  /// Example:
  /// ```dart
  /// Transport.car(); // "Jeep Cherokee (XJ)"
  /// ```
  static String car() {
    final data = TransportData.cars;
    return data[Random().nextInt(data.length)];
  }

  /// Returns an airplane model.
  ///
  /// Example:
  /// ```dart
  /// Transport.airplane(); // "Airbus 721"
  /// ```
  static String airplane() {
    final data = TransportData.airplanes;
    return data[Random().nextInt(data.length)];
  }

  /// Returns vehicle registration code.
  ///
  /// Example:
  /// ```dart
  /// Transport.vehicleRegistrationCode(); // "TO"
  /// ```
  static String vehicleRegistrationCode() {
    final data = TransportData.vrCodes;
    return data[Random().nextInt(data.length)];
  }
}

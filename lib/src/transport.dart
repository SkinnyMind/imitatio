import 'dart:math';

import 'package:imitatio/src/datasets/international/transport.dart';
import 'package:imitatio/src/rng.dart';

/// Provides data related to transports.
class Transport {
  const Transport._();

  /// Returns a truck model.
  ///
  /// [modelMask] is optional mask of pin code. "#" will be changed to digit
  /// and "@" will be changed to ascii character (default is 4 digits followed
  /// by space followed by 2 characters).
  ///
  /// Example:
  /// ```dart
  /// Transport.truck(); // "Carmichael-4951 EM"
  /// Transport.truck(modelMask: '####'); // "Albion-1212"
  /// ```
  static String truck({String modelMask = '#### @@'}) {
    final model = Rng.customCode(mask: modelMask);
    final truck =
        TransportData.trucks[Random().nextInt(TransportData.trucks.length)];
    return '$truck-$model';
  }

  /// Returns a random vehicle manufacturer.
  ///
  /// Example:
  /// ```dart
  /// Transport.manufacturer(); // "McLaren"
  /// ```
  static String manufacturer() => TransportData
      .manufacturers[Random().nextInt(TransportData.manufacturers.length)];

  /// Returns a random vehicle.
  ///
  /// Example:
  /// ```dart
  /// Transport.car(); // "Jeep Cherokee (XJ)"
  /// ```
  static String car() =>
      TransportData.cars[Random().nextInt(TransportData.cars.length)];

  /// Returns an airplane model.
  ///
  /// [modelMask] is optional mask of pin code. "#" will be changed to digit
  /// and "@" will be changed to ascii character (default is 3 digits).
  ///
  /// Example:
  /// ```dart
  /// Transport.airplane(); // "Airbus 721"
  /// Transport.airplane(modelMask: '@###'); // "Tu M578"
  /// ```
  static String airplane({String modelMask = '###'}) {
    final model = Rng.customCode(mask: modelMask);
    final plane = TransportData
        .airplanes[Random().nextInt(TransportData.airplanes.length)];
    return '$plane $model';
  }

  /// Returns vehicle registration code.
  ///
  /// Example:
  /// ```dart
  /// Transport.vehicleRegistrationCode(); // "TO"
  /// ```
  static String vehicleRegistrationCode() =>
      TransportData.vrCodes[Random().nextInt(TransportData.vrCodes.length)];
}

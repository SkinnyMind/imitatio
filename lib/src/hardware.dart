import 'dart:math';

import 'package:imitatio/src/datasets/international/hardware.dart';

/// Provides data related to hardware.
class Hardware {
  const Hardware._();

  /// Returns a random screen resolution.
  ///
  /// Example:
  /// ```dart
  /// Hardware.resolution(); // "1280x800"
  /// ```
  static String resolution() => IntHardwareData
      .resolutions[Random().nextInt(IntHardwareData.resolutions.length)];

  /// Returns a random size of screen in inches.
  ///
  /// Example:
  /// ```dart
  /// Hardware.screenSize(); // "13.3″"
  /// ```
  static String screenSize() => IntHardwareData
      .screenSizes[Random().nextInt(IntHardwareData.screenSizes.length)];

  /// Returns a random CPU name.
  ///
  /// Example:
  /// ```dart
  /// Hardware.cpu(); // "AMD Ryzen™ Threadripper™"
  /// ```
  static String cpu() =>
      IntHardwareData.cpus[Random().nextInt(IntHardwareData.cpus.length)];

  /// Returns a random frequency of CPU.
  ///
  /// Example:
  /// ```dart
  /// Hardware.cpuFrequency(); // "3.7GHz"
  /// ```
  static String cpuFrequency() {
    final random = Random();
    final frequency =
        (random.nextInt(4) + 1 + random.nextDouble()).toStringAsFixed(1);
    return '${frequency}GHz';
  }

  /// Returns a random generation.
  ///
  /// Example:
  /// ```dart
  /// Hardware.generation(); // "4th Generation"
  /// ```
  static String generation() => IntHardwareData
      .generations[Random().nextInt(IntHardwareData.generations.length)];

  /// Returns a random CPU code name.
  ///
  /// Example:
  /// ```dart
  /// Hardware.cpuCodeName(); // "Devil's Canyon"
  /// ```
  static String cpuCodeName() => IntHardwareData
      .cpuCodeNames[Random().nextInt(IntHardwareData.cpuCodeNames.length)];

  /// Returns a random RAM type.
  ///
  /// Example:
  /// ```dart
  /// Hardware.ramType(); // "DDR2"
  /// ```
  static String ramType() => IntHardwareData
      .ramTypes[Random().nextInt(IntHardwareData.ramTypes.length)];

  /// Returns a random RAM size.
  ///
  /// Example:
  /// ```dart
  /// Hardware.ramSize(); // "64GB"
  /// ```
  static String ramSize() => IntHardwareData
      .ramSizes[Random().nextInt(IntHardwareData.ramSizes.length)];

  /// Returns a random type of disk.
  ///
  /// Example:
  /// ```dart
  /// Hardware.ssdOrHdd(); // "Seagate 256GB HDD"
  /// ```
  static String ssdOrHdd() {
    final random = Random();
    final manufacturer = IntHardwareData.hddSsdManufacturers[
        random.nextInt(IntHardwareData.hddSsdManufacturers.length)];
    final capacity = IntHardwareData
        .capacities[random.nextInt(IntHardwareData.capacities.length)];
    return "$manufacturer $capacity";
  }

  /// Returns a random graphics.
  ///
  /// Example:
  /// ```dart
  /// Hardware.graphics(); // "Intel® HD Graphics 620"
  /// ```
  static String graphics() => IntHardwareData
      .graphics[Random().nextInt(IntHardwareData.graphics.length)];

  /// Returns a random manufacturer.
  ///
  /// Example:
  /// ```dart
  /// Hardware.manufacturer(); // "Samsung"
  /// ```
  static String manufacturer() => IntHardwareData
      .manufacturers[Random().nextInt(IntHardwareData.manufacturers.length)];

  /// Returns a random phone model.
  ///
  /// Example:
  /// ```dart
  /// Hardware.phoneModel(); // "iPhone SE"
  /// ```
  static String phoneModel() => IntHardwareData
      .phoneModels[Random().nextInt(IntHardwareData.phoneModels.length)];
}

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
  static String resolution() => HardwareData
      .resolutions[Random().nextInt(HardwareData.resolutions.length)];

  /// Returns a random size of screen in inches.
  ///
  /// Example:
  /// ```dart
  /// Hardware.screenSize(); // "13.3″"
  /// ```
  static String screenSize() => HardwareData
      .screenSizes[Random().nextInt(HardwareData.screenSizes.length)];

  /// Returns a random CPU name.
  ///
  /// Example:
  /// ```dart
  /// Hardware.cpu(); // "AMD Ryzen™ Threadripper™"
  /// ```
  static String cpu() =>
      HardwareData.cpus[Random().nextInt(HardwareData.cpus.length)];

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
  static String generation() => HardwareData
      .generations[Random().nextInt(HardwareData.generations.length)];

  /// Returns a random CPU code name.
  ///
  /// Example:
  /// ```dart
  /// Hardware.cpuCodeName(); // "Devil's Canyon"
  /// ```
  static String cpuCodeName() => HardwareData
      .cpuCodeNames[Random().nextInt(HardwareData.cpuCodeNames.length)];

  /// Returns a random RAM type.
  ///
  /// Example:
  /// ```dart
  /// Hardware.ramType(); // "DDR2"
  /// ```
  static String ramType() =>
      HardwareData.ramTypes[Random().nextInt(HardwareData.ramTypes.length)];

  /// Returns a random RAM size.
  ///
  /// Example:
  /// ```dart
  /// Hardware.ramSize(); // "64GB"
  /// ```
  static String ramSize() =>
      HardwareData.ramSizes[Random().nextInt(HardwareData.ramSizes.length)];

  /// Returns a random type of disk.
  ///
  /// Example:
  /// ```dart
  /// Hardware.ssdOrHdd(); // "Seagate 256GB HDD"
  /// ```
  static String ssdOrHdd() {
    final random = Random();
    final manufacturer = HardwareData.hddSsdManufacturers[
        random.nextInt(HardwareData.hddSsdManufacturers.length)];
    final capacity =
        HardwareData.capacities[random.nextInt(HardwareData.capacities.length)];
    return "$manufacturer $capacity";
  }

  /// Returns a random graphics.
  ///
  /// Example:
  /// ```dart
  /// Hardware.graphics(); // "Intel® HD Graphics 620"
  /// ```
  static String graphics() =>
      HardwareData.graphics[Random().nextInt(HardwareData.graphics.length)];

  /// Returns a random manufacturer.
  ///
  /// Example:
  /// ```dart
  /// Hardware.manufacturer(); // "Samsung"
  /// ```
  static String manufacturer() => HardwareData
      .manufacturers[Random().nextInt(HardwareData.manufacturers.length)];

  /// Returns a random phone model.
  ///
  /// Example:
  /// ```dart
  /// Hardware.phoneModel(); // "iPhone SE"
  /// ```
  static String phoneModel() => HardwareData
      .phoneModels[Random().nextInt(HardwareData.phoneModels.length)];
}

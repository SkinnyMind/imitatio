import 'dart:math';

import 'package:imitatio/src/datasets/international/hardware.dart';

/// Provides data related to hardware.
class Hardware {
  /// Creates data related to hardware.
  const Hardware();

  /// Returns a random screen resolution.
  ///
  /// Example:
  /// ```dart
  /// Hardware().resolution(); // "1280x800"
  /// ```
  String resolution() => HardwareData
      .resolutions[Random().nextInt(HardwareData.resolutions.length)];

  /// Returns a random size of screen in inches.
  ///
  /// Example:
  /// ```dart
  /// Hardware().screenSize(); // "13.3″"
  /// ```
  String screenSize() => HardwareData
      .screenSizes[Random().nextInt(HardwareData.screenSizes.length)];

  /// Returns a random CPU name.
  ///
  /// Example:
  /// ```dart
  /// Hardware().cpu(); // "AMD Ryzen™ Threadripper™"
  /// ```
  String cpu() => HardwareData.cpu[Random().nextInt(HardwareData.cpu.length)];

  /// Returns a random frequency of CPU.
  ///
  /// Example:
  /// ```dart
  /// Hardware().cpuFrequency(); // "3.7GHz"
  /// ```
  String cpuFrequency() {
    final random = Random();
    final frequency =
        (random.nextInt(4) + 1 + random.nextDouble()).toStringAsFixed(1);
    return '${frequency}GHz';
  }

  /// Returns a random generation.
  ///
  /// Example:
  /// ```dart
  /// Hardware().generation(); // "4th Generation"
  /// ```
  String generation() => HardwareData
      .generations[Random().nextInt(HardwareData.generations.length)];

  /// Returns a random CPU model code.
  ///
  /// Example:
  /// ```dart
  /// Hardware().cpuModelCode(); // "6820HK"
  /// ```
  String cpuModelCode() => HardwareData
      .cpuModelCodes[Random().nextInt(HardwareData.cpuModelCodes.length)];

  /// Returns a random CPU code name.
  ///
  /// Example:
  /// ```dart
  /// Hardware().cpuCodeName(); // "Devil's Canyon"
  /// ```
  String cpuCodeName() => HardwareData
      .cpuCodeNames[Random().nextInt(HardwareData.cpuCodeNames.length)];

  /// Returns a random RAM type.
  ///
  /// Example:
  /// ```dart
  /// Hardware().ramType(); // "DDR2"
  /// ```
  String ramType() =>
      HardwareData.ramTypes[Random().nextInt(HardwareData.ramTypes.length)];

  /// Returns a random RAM size.
  ///
  /// Example:
  /// ```dart
  /// Hardware().ramSize(); // "64GB"
  /// ```
  String ramSize() =>
      HardwareData.ramSizes[Random().nextInt(HardwareData.ramSizes.length)];

  /// Returns a random size and type of disk drive (e.g. "512GB SSD").
  ///
  /// Example:
  /// ```dart
  /// Hardware().drive(); // "1024GB SSD"
  /// ```
  String drive() =>
      HardwareData.drives[Random().nextInt(HardwareData.drives.length)];

  /// Returns a random graphics.
  ///
  /// Example:
  /// ```dart
  /// Hardware().graphics(); // "Intel® HD Graphics 620"
  /// ```
  String graphics() =>
      HardwareData.graphics[Random().nextInt(HardwareData.graphics.length)];

  /// Returns a random manufacturer.
  ///
  /// Example:
  /// ```dart
  /// Hardware().manufacturer(); // "Samsung"
  /// ```
  String manufacturer() => HardwareData
      .manufacturers[Random().nextInt(HardwareData.manufacturers.length)];

  /// Returns a random phone model.
  ///
  /// Example:
  /// ```dart
  /// Hardware().phoneModel(); // "Nokia Lumia 810"
  /// ```
  String phoneModel() => HardwareData
      .phoneModels[Random().nextInt(HardwareData.phoneModels.length)];
}

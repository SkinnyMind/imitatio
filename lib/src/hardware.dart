import 'dart:math';

import 'package:imitatio/src/data/int/hardware.dart';

/// Provides data related to hardware.
class Hardware {
  /// Creates data related to hardware.
  const Hardware();

  /// Returns a random screen resolution.
  String resolution() => HardwareData
      .resolutions[Random().nextInt(HardwareData.resolutions.length)];

  /// Returns a random size of screen in inches.
  String screenSize() => HardwareData
      .screenSizes[Random().nextInt(HardwareData.screenSizes.length)];

  /// Returns a random CPU name.
  String cpu() => HardwareData.cpu[Random().nextInt(HardwareData.cpu.length)];

  /// Returns a random frequency of CPU.
  String cpuFrequency() {
    final random = Random();
    final frequency =
        (random.nextInt(4) + 1 + random.nextDouble()).toStringAsFixed(1);
    return '${frequency}GHz';
  }

  /// Returns a random generation.
  String generation() => HardwareData
      .generations[Random().nextInt(HardwareData.generations.length)];

  /// Returns a random CPU model code.
  String cpuModelCode() => HardwareData
      .cpuModelCodes[Random().nextInt(HardwareData.cpuModelCodes.length)];

  /// Returns a random CPU code name.
  String cpuCodeName() => HardwareData
      .cpuCodeNames[Random().nextInt(HardwareData.cpuCodeNames.length)];

  /// Returns a random RAM type.
  String ramType() =>
      HardwareData.ramTypes[Random().nextInt(HardwareData.ramTypes.length)];

  /// Returns a random RAM size.
  String ramSize() =>
      HardwareData.ramSizes[Random().nextInt(HardwareData.ramSizes.length)];

  /// Returns a random size and type of disk drive (e.g. "512GB SSD").
  String drive() =>
      HardwareData.drives[Random().nextInt(HardwareData.drives.length)];

  /// Returns a random graphics.
  String graphics() =>
      HardwareData.graphics[Random().nextInt(HardwareData.graphics.length)];

  /// Returns a random manufacturer.
  String manufacturer() => HardwareData
      .manufacturers[Random().nextInt(HardwareData.manufacturers.length)];

  /// Returns a random phone model.
  String phoneModel() => HardwareData
      .phoneModels[Random().nextInt(HardwareData.phoneModels.length)];
}

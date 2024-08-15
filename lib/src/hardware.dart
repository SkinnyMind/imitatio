import 'dart:math';

import 'package:imitatio/src/datasets/international/hardware.dart';
import 'package:imitatio/src/extensions.dart';

/// Provides data related to hardware.
class Hardware {
  /// Provides data related to hardware.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Hardware({this.seed});

  final int? seed;

  /// Returns a random screen resolution.
  ///
  /// Example:
  /// ```dart
  /// Hardware().resolution; // "1280x800"
  /// ```
  String get resolution {
    final data = IntHardwareData.resolutions;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random size of screen in inches.
  ///
  /// Example:
  /// ```dart
  /// Hardware().screenSize; // "13.3″"
  /// ```
  String get screenSize {
    final data = IntHardwareData.screenSizes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random CPU name.
  ///
  /// Example:
  /// ```dart
  /// Hardware().cpu; // "AMD Ryzen™ Threadripper™"
  /// ```
  String get cpu {
    final data = IntHardwareData.cpus;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random frequency of CPU.
  ///
  /// Example:
  /// ```dart
  /// Hardware().cpuFrequency; // "3.7GHz"
  /// ```
  String get cpuFrequency {
    final random = Random(seed);
    final frequency = (random.integer(min: 1, max: 4) + random.nextDouble())
        .toStringAsFixed(1);
    return '${frequency}GHz';
  }

  /// Returns a random generation.
  ///
  /// Example:
  /// ```dart
  /// Hardware().generation; // "4th Generation"
  /// ```
  String get generation {
    final data = IntHardwareData.generations;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random CPU code name.
  ///
  /// Example:
  /// ```dart
  /// Hardware().cpuCodeName; // "Devil's Canyon"
  /// ```
  String get cpuCodeName {
    final data = IntHardwareData.cpuCodeNames;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random RAM type.
  ///
  /// Example:
  /// ```dart
  /// Hardware().ramType; // "DDR2"
  /// ```
  String get ramType {
    final data = IntHardwareData.ramTypes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random RAM size.
  ///
  /// Example:
  /// ```dart
  /// Hardware().ramSize; // "64GB"
  /// ```
  String get ramSize {
    final data = IntHardwareData.ramSizes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random type of disk.
  ///
  /// Example:
  /// ```dart
  /// Hardware().ssdOrHdd; // "Seagate 256GB HDD"
  /// ```
  String get ssdOrHdd {
    final random = Random(seed);
    final manData = IntHardwareData.hddSsdManufacturers;
    final manufacturer = manData[random.integer(max: manData.length - 1)];
    final capData = IntHardwareData.capacities;
    final capacity = capData[random.integer(max: capData.length - 1)];
    return "$manufacturer $capacity";
  }

  /// Returns a random graphics.
  ///
  /// Example:
  /// ```dart
  /// Hardware().graphics; // "Intel® HD Graphics 620"
  /// ```
  String get graphics {
    final data = IntHardwareData.graphics;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random manufacturer.
  ///
  /// Example:
  /// ```dart
  /// Hardware().manufacturer; // "Samsung"
  /// ```
  String get manufacturer {
    final data = IntHardwareData.manufacturers;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random phone model.
  ///
  /// Example:
  /// ```dart
  /// Hardware().phoneModel; // "iPhone SE"
  /// ```
  String get phoneModel {
    final data = IntHardwareData.phoneModels;
    return data[Random(seed).integer(max: data.length - 1)];
  }
}

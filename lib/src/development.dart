import 'dart:math';

import 'package:imitatio/src/datasets/international/development.dart';
import 'package:imitatio/src/extensions.dart';

/// Provides data related to the development.
class Development {
  /// Provides data related to the development.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Development({this.seed});

  final int? seed;

  /// Returns a random software license.
  ///
  /// Example:
  /// ```dart
  /// Development().softwareLicense; // "MIT License (MIT)"
  /// ```
  String get softwareLicense {
    final data = IntDevelopmentData.licenses;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns version number.
  ///
  /// [calVer] is optional Calendar Versioning format (default is false).
  ///
  /// [preRelease] is optional pre-release suffix (default is false).
  ///
  /// Example:
  /// ```dart
  /// Development().version(); // "7.11.0"
  /// Development().version(calVer: true); // "2021.5.1"
  /// Development().version(preRelease: true); // "9.7.11-rc.8"
  /// ```
  String version({bool calVer = false, bool preRelease = false}) {
    late final String major;
    late final String minor;
    late final String patch;

    final random = Random(seed);

    if (calVer) {
      major = random.integer(min: 2016, max: DateTime.now().year).toString();
      minor = random.integer(min: 1, max: 12).toString().padLeft(2, '0');
      patch = random.integer(min: 1, max: 29).toString().padLeft(2, '0');
    } else {
      major = random.integer(max: 11).toString();
      minor = random.integer(max: 11).toString();
      patch = random.integer(max: 11).toString();
    }

    var version = '$major.$minor.$patch';

    if (preRelease) {
      const suffixes = ['alpha', 'beta', 'rc'];
      final suffix = suffixes[random.integer(max: suffixes.length - 1)];
      final number = random.integer(min: 1, max: 12);
      version = '$version-$suffix.$number';
    }

    return version;
  }

  /// Returns a random programming language from the list.
  ///
  /// Example:
  /// ```dart
  /// Development().programmingLanguage; // "Dart"
  /// ```
  String get programmingLanguage {
    final data = IntDevelopmentData.programmingLanguages;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random operating system or distributive name.
  ///
  /// Example:
  /// ```dart
  /// Development().os; // "Fedora"
  /// ```
  String get os {
    final data = IntDevelopmentData.oses;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random boolean value.
  ///
  /// Example:
  /// ```dart
  /// Development().boolean; // true
  /// ```
  bool get boolean => Random(seed).nextBool();

  /// Returns a random system quality attribute.
  ///
  /// Within systems engineering, quality attributes are realized
  /// non-functional requirements used to evaluate the performance
  /// of a system. These are sometimes named "ilities" after the
  /// suffix many of the words share.
  ///
  /// Example:
  /// ```dart
  /// Development().systemQualityAttribute; // "configurability"
  /// ```
  String get systemQualityAttribute {
    final data = IntDevelopmentData.systemQualityAttributes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random system quality attribute.
  ///
  /// An alias for [Development().systemQualityAttribute].
  String get ility => systemQualityAttribute;
}

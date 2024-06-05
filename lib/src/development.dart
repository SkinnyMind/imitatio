import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/development.dart';

/// Data related to the development.
class Development {
  const Development._();

  /// Returns a random software license.
  ///
  /// Example:
  /// ```dart
  /// Development.softwareLicense(); // "MIT License (MIT)"
  /// ```
  static String softwareLicense() {
    return DevelopmentData
        .licenses[Random().nextInt(DevelopmentData.licenses.length)];
  }

  /// Returns version number.
  ///
  /// [calVer] is optional Calendar Versioning format (default is false).
  ///
  /// [preRelease] is optional pre-release suffix (default is false).
  ///
  /// Example:
  /// ```dart
  /// Development.version(); // "7.11.0"
  /// Development.version(calVer: true); // "2021.5.1"
  /// Development.version(preRelease: true); // "9.7.11-rc.8"
  /// ```
  static String version({bool calVer = false, bool preRelease = false}) {
    late final int major;
    late final int minor;
    late final int patch;

    final random = Random();

    if (calVer) {
      major = random.nextInt(3) + 2020;
      minor = random.nextInt(12) + 1;
      patch = random.nextInt(12) + 1;
    } else {
      major = random.nextInt(12);
      minor = random.nextInt(12);
      patch = random.nextInt(12);
    }

    var version = '$major.$minor.$patch';

    if (preRelease) {
      const suffixes = ['alpha', 'beta', 'rc'];
      final suffix = suffixes[Random().nextInt(suffixes.length)];
      final number = Random().nextInt(11) + 1;
      version = '$version-$suffix.$number';
    }

    return version;
  }

  /// Returns a random programming language from the list.
  ///
  /// Example:
  /// ```dart
  /// Development.programmingLanguage(); // "Dart"
  /// ```
  static String programmingLanguage() {
    return DevelopmentData.programmingLanguages[
        Random().nextInt(DevelopmentData.programmingLanguages.length)];
  }

  /// Returns a random operating system or distributive name.
  ///
  /// Example:
  /// ```dart
  /// Development.os(); // "Fedora"
  /// ```
  static String os() {
    final data = DevelopmentData.oses;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random boolean value.
  ///
  /// Example:
  /// ```dart
  /// Development.boolean(); // true
  /// ```
  static bool boolean() => Random().nextBool();

  /// Returns a random DSN (Data Source Name).
  ///
  /// [dsnType] is optional [DSNType] group.
  ///
  /// [tldType] is optional [TLDType] group.
  ///
  /// [subdomains] is optional list of subdomains.
  ///
  /// Example:
  /// ```dart
  /// Development.dsn(); // "mysql://kitchen.vn:3306"
  /// Development.dsn(dsnType: DSNType.redis); // "redis://losing.gl:6379"
  /// Development.dsn(tldType: TLDType.geotld); // "rabbitmq://identifies.moscow:5672"
  /// Development.dsn(subdomains: ['app', 'api', 'admin']); // "postgres://api.concentrate.io:5432"
  /// ```
  static String dsn({
    DSNType? dsnType,
    TLDType? tldType,
    List<String>? subdomains,
  }) {
    final hostname = Internet.hostname(
      tldType: tldType,
      subdomains: subdomains,
    );
    final dsn =
        dsnType ?? DSNType.values[Random().nextInt(DSNType.values.length)];

    return '${dsn.scheme}://$hostname:${dsn.port}';
  }

  /// Returns a random system quality attribute.
  ///
  /// Within systems engineering, quality attributes are realized
  /// non-functional requirements used to evaluate the performance
  /// of a system. These are sometimes named "ilities" after the
  /// suffix many of the words share.
  ///
  /// Example:
  /// ```dart
  /// Development.systemQualityAttribute() // "configurability"
  /// ```
  static String systemQualityAttribute() =>
      DevelopmentData.systemQualityAttributes[
          Random().nextInt(DevelopmentData.systemQualityAttributes.length)];

  /// Returns a random system quality attribute.
  ///
  /// An alias for [Development.systemQualityAttribute()].
  static String ility() => Development.systemQualityAttribute();
}

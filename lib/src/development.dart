import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/development.dart';
import 'package:imitatio/src/rng.dart';

/// Data related to the development.
class Development {
  /// Class for getting fake data for Developers.
  const Development();

  /// Get a random software license.
  String softwareLicense() {
    return DevelopmentData
        .licenses[Random().nextInt(DevelopmentData.licenses.length)];
  }

  /// Generate version number.
  ///
  /// [calVer] whether should be in Calendar Versioning format.
  ///
  /// [preRelease] whether should be pre-release.
  String version({bool calVer = false, bool preRelease = false}) {
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

  /// Get a random programming language from the list.
  String programmingLanguage() {
    return DevelopmentData.programmingLanguages[
        Random().nextInt(DevelopmentData.programmingLanguages.length)];
  }

  /// Get a random operating system or distributive name.
  String os() {
    return DevelopmentData.os[Random().nextInt(DevelopmentData.os.length)];
  }

  /// Get a random boolean value.
  bool boolean() => Random().nextBool();

  /// Get a random PostgreSQL DSN (postgres://user:password@host:port).
  String postgresDSN() {
    final schemeDesignator =
        Random().nextBool() ? 'postgres://' : 'postgresql://';
    final hostname = const Internet().hostname();
    final password = Rng.randomString(length: 8);
    final username = DevelopmentData
        .projectNames[Random().nextInt(DevelopmentData.projectNames.length)];

    return '$schemeDesignator$username:$password@$hostname:5432';
  }
}

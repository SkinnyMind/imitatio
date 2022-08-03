import 'dart:math';

import 'package:imitatio/src/data/development.dart';

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
}

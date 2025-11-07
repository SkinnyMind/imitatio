import 'dart:math';

import 'package:imitatio/src/datasets/international/development.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/extensions.dart';
import 'package:os_detect/os_detect.dart';

/// Provides data related to paths.
class Path {
  /// Provides data related to paths.
  ///
  /// [platform] is optional platform (operating system). Possible values
  /// are: `linux`, `macos`, `windows`, etc.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  Path({String? platform, this.seed})
    : platform = platform ?? operatingSystem,
      _platformHome = _getPlatformHome(platform ?? operatingSystem),
      _pathSeparator = platform == 'windows' ? r'\' : '/';

  final String platform;
  final String _platformHome;
  final String _pathSeparator;
  final int? seed;

  static String _getPlatformHome(String platform) {
    return switch (platform) {
      'linux' => '/home/',
      'macos' => '/home/',
      'windows' => r'C:\Users\',
      _ => '/home/',
    };
  }

  /// Returns a root dir path.
  ///
  /// Example:
  /// ```dart
  /// Path().root; // "/"
  /// Path(platform: 'windows').root; // "C:\"
  /// ```
  String get root => platform == 'windows' ? r'C:\' : '/';

  /// Returns a home path.
  ///
  /// Example:
  /// ```dart
  /// Path().home; // "/home/"
  /// Path(platform: 'windows').home; // "C:\Users\"
  /// ```
  String get home => _platformHome;

  /// Returns a path to random user.
  ///
  /// Example:
  /// ```dart
  /// Path().user; // "/home/himself"
  /// Path(platform: 'windows').user; // "C:\Users\Gordon"
  /// ```
  String get user {
    final data = IntPersonData.usernames;
    final user = data[Random(seed).integer(max: data.length - 1)];
    return platform == 'windows'
        ? '$home${user[0].toUpperCase()}${user.substring(1)}'
        : '$home$user';
  }

  /// Returns a random path to user's folders.
  ///
  /// Example:
  /// ```dart
  /// Path().usersFolder; // "/home/society/Work"
  /// Path(platform: 'windows').usersFolder; // "C:\Users\Practitioners\Documents"
  /// ```
  String get usersFolder {
    final data = IntDevelopmentData.folders;
    final folder = data[Random(seed).integer(max: data.length - 1)];
    return '$user$_pathSeparator$folder';
  }

  /// Returns a random path to development directory.
  ///
  /// Example:
  /// ```dart
  /// Path().devDir; // "/home/lexmark/Dev/Go"
  /// Path(platform: 'windows').devDir; // "C:\Users\Badge\Dev\Falcon"
  /// ```
  String get devDir {
    final random = Random(seed);
    final folder = random.nextBool() ? 'Development' : 'Dev';
    final data = IntDevelopmentData.programmingLanguages;
    final stack = data[random.integer(max: data.length - 1)];
    return '$user$_pathSeparator$folder$_pathSeparator$stack';
  }

  /// Returns a random path to project directory.
  ///
  /// Example:
  /// ```dart
  /// Path().projectDir; // "/home/pvc/Dev/Rust/gryposaurus"
  /// Path(platform: 'windows').projectDir; // "C:\Users\Anderson\Development\C\antarctosaurus"
  /// ```
  String get projectDir {
    final data = IntDevelopmentData.projectNames;
    final project = data[Random(seed).integer(max: data.length - 1)];
    return '$devDir$_pathSeparator$project';
  }
}

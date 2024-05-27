import 'dart:io';
import 'dart:math';

import 'package:imitatio/src/datasets/international/development.dart';
import 'package:imitatio/src/datasets/international/person.dart';

/// Provides data related to paths.
class Path {
  const Path._();

  static String _getPlatformHome(String platform) {
    return switch (platform) {
      'linux' => '/home/',
      'macos' => '/home/',
      'windows' => r'C:\Users\',
      _ => throw Exception('$platform is not supported'),
    };
  }

  /// Returns a root dir path.
  ///
  /// [platform] is optional platform (operating system). Possible values
  /// are: "linux", "macos" or "windows".
  static String root({String? platform}) {
    final os = platform ?? Platform.operatingSystem;
    final home = _getPlatformHome(os);
    return os == 'windows' ? r'C:\' : Directory(home).parent.path;
  }

  /// Returns a home path.
  ///
  /// [platform] is optional platform (operating system). Possible values
  /// are: "linux", "macos" or "windows".
  static String home({String? platform}) {
    final os = platform ?? Platform.operatingSystem;
    return _getPlatformHome(os);
  }

  /// Returns a path to random user.
  ///
  /// [platform] is optional platform (operating system). Possible values
  /// are: "linux", "macos" or "windows".
  static String user({String? platform}) {
    final os = platform ?? Platform.operatingSystem;
    final home = _getPlatformHome(os);
    final user =
        PersonData.usernames[Random().nextInt(PersonData.usernames.length)];
    return os == 'windows'
        ? '$home${user[0].toUpperCase()}${user.substring(1)}'
        : '$home$user';
  }

  /// Returns a random path to user's folders.
  ///
  /// [platform] is optional platform (operating system). Possible values
  /// are: "linux", "macos" or "windows".
  static String usersFolder({String? platform}) {
    final os = platform ?? Platform.operatingSystem;
    final user = Path.user(platform: os);
    final pathSeparator = os == 'windows' ? r'\' : '/';
    final folder = DevelopmentData
        .folders[Random().nextInt(DevelopmentData.folders.length)];
    return '$user$pathSeparator$folder';
  }

  /// Returns a random path to development directory.
  ///
  /// [platform] is optional platform (operating system). Possible values
  /// are: "linux", "macos" or "windows".
  static String devDir({String? platform}) {
    final random = Random();
    final os = platform ?? Platform.operatingSystem;
    final user = Path.user(platform: os);
    final pathSeparator = os == 'windows' ? r'\' : '/';
    final folder = random.nextBool() ? 'Development' : 'Dev';
    final stack = DevelopmentData.programmingLanguages[
        random.nextInt(DevelopmentData.programmingLanguages.length)];
    return '$user$pathSeparator$folder$pathSeparator$stack';
  }

  /// Returns a random path to project directory.
  ///
  /// [platform] is optional platform (operating system). Possible values
  /// are: "linux", "macos" or "windows".
  static String projectDir({String? platform}) {
    final os = platform ?? Platform.operatingSystem;
    final pathSeparator = os == 'windows' ? r'\' : '/';
    final devDir = Path.devDir(platform: os);
    final project = DevelopmentData
        .projectNames[Random().nextInt(DevelopmentData.projectNames.length)];
    return '$devDir$pathSeparator$project';
  }
}

import 'dart:io';
import 'dart:math';

import 'package:imitatio/src/datasets/international/development.dart';
import 'package:imitatio/src/datasets/international/person.dart';

/// Provides data related to paths.
class Path {
  /// Creates data related to paths.
  ///
  /// [platform] is optional platform (operating system). Possible values
  /// are: "linux", "macos" or "windows".
  Path({String? platform})
      : platform = platform ?? Platform.operatingSystem,
        _platformHome = _getPlatformHome(platform ?? Platform.operatingSystem),
        _pathSeparator = platform == 'windows' ? r'\' : '/';

  final String platform;
  final String _platformHome;
  final String _pathSeparator;

  static String _getPlatformHome(String platform) {
    return switch (platform) {
      'linux' => '/home/',
      'macos' => '/home/',
      'windows' => r'C:\Users\',
      _ => throw Exception('$platform is not supported'),
    };
  }

  /// Returns a root dir path.
  String root() {
    return platform == 'windows'
        ? r'C:\'
        : Directory(_platformHome).parent.path;
  }

  /// Returns a home path.
  String home() => _platformHome;

  /// Returns a path to random user.
  String user() {
    final user =
        PersonData.usernames[Random().nextInt(PersonData.usernames.length)];
    return platform == 'windows'
        ? '$_platformHome${user[0].toUpperCase()}${user.substring(1)}'
        : '$_platformHome$user';
  }

  /// Returns a random path to user's folders.
  String usersFolder() {
    final user = this.user();
    final folder = DevelopmentData
        .folders[Random().nextInt(DevelopmentData.folders.length)];
    return '$user$_pathSeparator$folder';
  }

  /// Returns a random path to development directory.
  String devDir() {
    final random = Random();
    final user = this.user();
    final folder = random.nextBool() ? 'Development' : 'Dev';
    final stack = DevelopmentData.programmingLanguages[
        random.nextInt(DevelopmentData.programmingLanguages.length)];
    return '$user$_pathSeparator$folder$_pathSeparator$stack';
  }

  /// Returns a random path to project directory.
  String projectDir() {
    final devDir = this.devDir();
    final project = DevelopmentData
        .projectNames[Random().nextInt(DevelopmentData.projectNames.length)];
    return '$devDir$_pathSeparator$project';
  }
}

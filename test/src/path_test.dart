import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/development.dart';
import 'package:test/test.dart';

void main() {
  group('Path', () {
    final path = Path();
    final linuxPath = Path(platform: 'linux');
    final macosPath = Path(platform: 'macos');
    final windowsPath = Path(platform: 'windows');

    test('returns root path', () {
      expect(path.root, '/');
      expect(linuxPath.root, '/');
      expect(macosPath.root, '/');
      expect(windowsPath.root, r'C:\');
      expect(() => Path(platform: 'ios').root, throwsA(isA<Exception>()));
    });

    test('returns home path', () {
      expect(path.home, '/home/');
      expect(linuxPath.home, '/home/');
      expect(macosPath.home, '/home/');
      expect(windowsPath.home, r'C:\Users\');
    });

    test('returns path to random user', () {
      final unixPath = path.user.split('/');
      expect(unixPath.length, 3);
      expect(unixPath.last, isNotEmpty);
      expect(unixPath.last[0], unixPath.last[0].toLowerCase());

      final winPath = windowsPath.user.split(r'\');
      expect(winPath.length, 3);
      expect(winPath.last, isNotEmpty);
      expect(winPath.last[0], winPath.last[0].toUpperCase());
    });

    test("returns path to user's folders", () {
      final unixPath = path.usersFolder.split('/');
      expect(unixPath.length, 4);
      expect(
        IntDevelopmentData.folders,
        contains(unixPath.last),
      );

      final winPath = windowsPath.usersFolder.split(r'\');
      expect(winPath.length, 4);
      expect(
        IntDevelopmentData.folders,
        contains(winPath.last),
      );
    });

    test("returns path to development directory", () {
      final unixPath = path.devDir.split('/');
      expect(unixPath.length, 5);
      expect(
        IntDevelopmentData.programmingLanguages,
        contains(unixPath.last),
      );

      final winPath = windowsPath.devDir.split(r'\');
      expect(winPath.length, 5);
      expect(
        IntDevelopmentData.programmingLanguages,
        contains(winPath.last),
      );
    });

    test("returns path to project directory", () {
      final unixPath = path.projectDir.split('/');
      expect(unixPath.length, 6);
      expect(
        IntDevelopmentData.projectNames,
        contains(unixPath.last),
      );

      final winPath = windowsPath.projectDir.split(r'\');
      expect(winPath.length, 6);
      expect(
        IntDevelopmentData.projectNames,
        contains(winPath.last),
      );
    });
  });
}

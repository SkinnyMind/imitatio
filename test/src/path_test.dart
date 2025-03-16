import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/development.dart';
import 'package:test/test.dart';

void main() {
  group('Path', () {
    final path = Path();
    final linuxPath = Path(platform: 'linux');
    final macosPath = Path(platform: 'macos');
    final windowsPath = Path(platform: 'windows');
    final seededPath = Path(seed: 1);

    test('returns root path', () {
      expect(path.root, equals('/'));
      expect(linuxPath.root, equals('/'));
      expect(macosPath.root, equals('/'));
      expect(windowsPath.root, equals(r'C:\'));
      expect(() => Path(platform: 'ios').root, throwsException);
    });

    test('returns home path', () {
      expect(path.home, equals('/home/'));
      expect(linuxPath.home, equals('/home/'));
      expect(macosPath.home, equals('/home/'));
      expect(windowsPath.home, equals(r'C:\Users\'));
    });

    test('returns path to random user', () {
      final unixPath = path.user.split('/');
      expect(unixPath.length, equals(3));
      expect(unixPath.last, isNotEmpty);
      expect(unixPath.last[0], equals(unixPath.last[0].toLowerCase()));

      final winPath = windowsPath.user.split(r'\');
      expect(winPath.length, equals(3));
      expect(winPath.last, isNotEmpty);
      expect(winPath.last[0], equals(winPath.last[0].toUpperCase()));

      expect(seededPath.user, equals(seededPath.user));
    });

    test("returns path to user's folders", () {
      final unixPath = path.usersFolder.split('/');
      expect(unixPath.length, equals(4));
      expect(IntDevelopmentData.folders, contains(unixPath.last));

      final winPath = windowsPath.usersFolder.split(r'\');
      expect(winPath.length, equals(4));
      expect(IntDevelopmentData.folders, contains(winPath.last));

      expect(seededPath.usersFolder, equals(seededPath.usersFolder));
    });

    test("returns path to development directory", () {
      final unixPath = path.devDir.split('/');
      expect(unixPath.length, equals(5));
      expect(IntDevelopmentData.programmingLanguages, contains(unixPath.last));

      final winPath = windowsPath.devDir.split(r'\');
      expect(winPath.length, equals(5));
      expect(IntDevelopmentData.programmingLanguages, contains(winPath.last));

      expect(seededPath.devDir, equals(seededPath.devDir));
    });

    test("returns path to project directory", () {
      final unixPath = path.projectDir.split('/');
      expect(unixPath.length, equals(6));
      expect(IntDevelopmentData.projectNames, contains(unixPath.last));

      final winPath = windowsPath.projectDir.split(r'\');
      expect(winPath.length, equals(6));
      expect(IntDevelopmentData.projectNames, contains(winPath.last));

      expect(seededPath.projectDir, equals(seededPath.projectDir));
    });
  });
}

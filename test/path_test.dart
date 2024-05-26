import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/development.dart';
import 'package:test/test.dart';

void main() {
  group('Path', () {
    final path = Path();

    test('returns root path', () {
      expect(path.root(), '/');

      final linuxPath = Path(platform: 'linux');
      expect(linuxPath.root(), '/');

      final macPath = Path(platform: 'macos');
      expect(macPath.root(), '/');

      final winPath = Path(platform: 'windows');
      expect(winPath.root(), r'C:\');

      expect(() => Path(platform: 'ios').root(), throwsA(isA<Exception>()));
    });

    test('returns home path', () {
      expect(path.home(), '/home/');
    });

    test('returns path to random user', () {
      final unixUser = path.user();
      final unixPaths = unixUser.split('/');
      expect(unixPaths.length, 3);
      expect(unixPaths.last, isNotEmpty);
      expect(unixPaths.last[0], unixPaths.last[0].toLowerCase());

      final winUser = Path(platform: 'windows').user();
      final winPaths = winUser.split(r'\');
      expect(winPaths.length, 3);
      expect(winPaths.last, isNotEmpty);
      expect(winPaths.last[0], winPaths.last[0].toUpperCase());
    });

    test("returns path to user's folders", () {
      final unixUser = path.usersFolder();
      final unixPaths = unixUser.split('/');
      expect(unixPaths.length, 4);
      expect(DevelopmentData.folders.contains(unixPaths.last), true);

      final winUser = Path(platform: 'windows').usersFolder();
      final winPaths = winUser.split(r'\');
      expect(winPaths.length, 4);
      expect(DevelopmentData.folders.contains(winPaths.last), true);
    });

    test("returns path to development directory", () {
      final unixUser = path.devDir();
      final unixPaths = unixUser.split('/');
      expect(unixPaths.length, 5);
      expect(
        DevelopmentData.programmingLanguages.contains(unixPaths.last),
        true,
      );

      final winUser = Path(platform: 'windows').devDir();
      final winPaths = winUser.split(r'\');
      expect(winPaths.length, 5);
      expect(
        DevelopmentData.programmingLanguages.contains(winPaths.last),
        true,
      );
    });

    test("returns path to project directory", () {
      final unixUser = path.projectDir();
      final unixPaths = unixUser.split('/');
      expect(unixPaths.length, 6);
      expect(DevelopmentData.projectNames.contains(unixPaths.last), true);

      final winUser = Path(platform: 'windows').projectDir();
      final winPaths = winUser.split(r'\');
      expect(winPaths.length, 6);
      expect(DevelopmentData.projectNames.contains(winPaths.last), true);
    });
  });
}

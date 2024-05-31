import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/development.dart';
import 'package:test/test.dart';

void main() {
  group('Path', () {
    test('returns root path', () {
      expect(Path.root(), '/');
      expect(Path.root(platform: 'linux'), '/');
      expect(Path.root(platform: 'macos'), '/');
      expect(Path.root(platform: 'windows'), r'C:\');
      expect(() => Path.root(platform: 'ios'), throwsA(isA<Exception>()));
    });

    test('returns home path', () {
      expect(Path.home(), '/home/');
      expect(Path.home(platform: 'linux'), '/home/');
      expect(Path.home(platform: 'macos'), '/home/');
      expect(Path.home(platform: 'windows'), r'C:\Users\');
    });

    test('returns path to random user', () {
      final unixPath = Path.user().split('/');
      expect(unixPath.length, 3);
      expect(unixPath.last, isNotEmpty);
      expect(unixPath.last[0], unixPath.last[0].toLowerCase());

      final winPath = Path.user(platform: 'windows').split(r'\');
      expect(winPath.length, 3);
      expect(winPath.last, isNotEmpty);
      expect(winPath.last[0], winPath.last[0].toUpperCase());
    });

    test("returns path to user's folders", () {
      final unixPath = Path.usersFolder().split('/');
      expect(unixPath.length, 4);
      expect(DevelopmentData.folders.contains(unixPath.last), true);

      final winPath = Path.usersFolder(platform: 'windows').split(r'\');
      expect(winPath.length, 4);
      expect(DevelopmentData.folders.contains(winPath.last), true);
    });

    test("returns path to development directory", () {
      final unixPath = Path.devDir().split('/');
      expect(unixPath.length, 5);
      expect(
        DevelopmentData.programmingLanguages.contains(unixPath.last),
        true,
      );

      final winPath = Path.devDir(platform: 'windows').split(r'\');
      expect(winPath.length, 5);
      expect(
        DevelopmentData.programmingLanguages.contains(winPath.last),
        true,
      );
    });

    test("returns path to project directory", () {
      final unixPath = Path.projectDir().split('/');
      expect(unixPath.length, 6);
      expect(DevelopmentData.projectNames.contains(unixPath.last), true);

      final winPath = Path.projectDir(platform: 'windows').split(r'\');
      expect(winPath.length, 6);
      expect(DevelopmentData.projectNames.contains(winPath.last), true);
    });
  });
}

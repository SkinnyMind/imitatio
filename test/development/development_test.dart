import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/development.dart';
import 'package:test/test.dart';

void main() {
  group('Development', () {
    const dev = Development();

    test('returns random software licence', () {
      expect(DevelopmentData.licenses.contains(dev.softwareLicense()), true);
    });

    test('returns version number', () {
      final version = dev.version().split('.');
      expect(version.length, 3);

      final major = int.parse(version[0]);
      final minor = int.parse(version[1]);
      final patch = int.parse(version[2]);
      expect(major >= 0 && major <= 11, true);
      expect(minor >= 0 && minor <= 11, true);
      expect(patch >= 0 && patch <= 11, true);
    });

    test('returns version number with pre-release', () {
      final version = dev.version(preRelease: true).split('.');
      expect(version.length, 4);
    });

    test('returns version number in Calendar Versioning format', () {
      final version = dev.version(calVer: true).split('.');
      expect(version.length, 3);

      final major = int.parse(version[0]);
      final minor = int.parse(version[1]);
      final patch = int.parse(version[2]);
      expect(major >= 2020 && major <= 2022, true);
      expect(minor >= 0 && minor <= 12, true);
      expect(patch >= 0 && patch <= 12, true);
    });

    test(
      'returns version number in Calendar Versioning format with pre-release',
      () {
        final version = dev.version(calVer: true, preRelease: true).split('.');
        expect(version.length, 4);

        final major = int.parse(version[0]);
        expect(major >= 2020 && major <= 2022, true);
      },
    );

    test('returns programming language', () {
      expect(
        DevelopmentData.programmingLanguages
            .contains(dev.programmingLanguage()),
        true,
      );
    });

    test('returns os', () {
      expect(DevelopmentData.os.contains(dev.os()), true);
    });

    test('returns boolean value', () {
      expect(dev.boolean(), isA<bool>());
    });
  });
}

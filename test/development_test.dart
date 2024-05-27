import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/development.dart';
import 'package:test/test.dart';

void main() {
  group('Development', () {
    test('returns random software licence', () {
      expect(
        DevelopmentData.licenses.contains(Development.softwareLicense()),
        true,
      );
    });

    test('returns version number', () {
      final version = Development.version().split('.');
      expect(version.length, 3);

      final major = int.parse(version[0]);
      final minor = int.parse(version[1]);
      final patch = int.parse(version[2]);
      expect(major >= 0 && major <= 11, true);
      expect(minor >= 0 && minor <= 11, true);
      expect(patch >= 0 && patch <= 11, true);
    });

    test('returns version number with pre-release', () {
      final version = Development.version(preRelease: true).split('.');
      expect(version.length, 4);
    });

    test('returns version number in Calendar Versioning format', () {
      final version = Development.version(calVer: true).split('.');
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
        final version =
            Development.version(calVer: true, preRelease: true).split('.');
        expect(version.length, 4);

        final major = int.parse(version[0]);
        expect(major >= 2020 && major <= 2022, true);
      },
    );

    test('returns programming language', () {
      expect(
        DevelopmentData.programmingLanguages
            .contains(Development.programmingLanguage()),
        true,
      );
    });

    test('returns os', () {
      expect(DevelopmentData.os.contains(Development.os()), true);
    });

    test('returns boolean value', () {
      expect(Development.boolean(), isA<bool>());
    });

    test('returns DSN', () {
      final result = Development.dsn();
      final schemes = DSNType.values.map((e) => e.scheme);
      final ports = DSNType.values.map((e) => e.port);
      expect(schemes.contains(result.split('://').first), true);
      expect(ports.contains(int.parse(result.split(':').last)), true);

      for (final type in DSNType.values) {
        final result = Development.dsn(dsnType: type);
        expect(result.startsWith('${type.scheme}://'), true);
        expect(result.endsWith(':${type.port}'), true);
      }
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/development.dart';
import 'package:test/test.dart';

void main() {
  group('Development', () {
    const development = Development();

    test('returns random software licence', () {
      expect(
        IntDevelopmentData.licenses,
        contains(development.softwareLicense),
      );
    });

    test('returns version number', () {
      final version = development.version().split('.');
      expect(version.length, 3);

      final major = int.parse(version[0]);
      final minor = int.parse(version[1]);
      final patch = int.parse(version[2]);
      expect(major >= 0 && major <= 11, true);
      expect(minor >= 0 && minor <= 11, true);
      expect(patch >= 0 && patch <= 11, true);
    });

    test('returns version number with pre-release', () {
      final version = development.version(preRelease: true).split('.');
      expect(version.length, 4);
    });

    test('returns version number in Calendar Versioning format', () {
      final version = development.version(calVer: true).split('.');
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
            development.version(calVer: true, preRelease: true).split('.');
        expect(version.length, 4);

        final major = int.parse(version[0]);
        expect(major >= 2020 && major <= 2022, true);
      },
    );

    test('returns programming language', () {
      expect(
        IntDevelopmentData.programmingLanguages,
        contains(development.programmingLanguage),
      );
    });

    test('returns os', () {
      expect(
        IntDevelopmentData.oses,
        contains(development.os),
      );
    });

    test('returns boolean value', () {
      expect(development.boolean, isA<bool>());
    });

    test('returns DSN', () {
      final result = development.dsn();
      final schemes = DSNType.values.map((e) => e.scheme);
      final ports = DSNType.values.map((e) => e.port);
      expect(schemes, contains(result.split('://').first));
      expect(ports, contains(int.parse(result.split(':').last)));

      final type = DSNType.postgres;
      final withType = development.dsn(dsnType: type);
      expect(withType.startsWith('${type.scheme}://'), true);
      expect(withType.endsWith(':${type.port}'), true);
    });

    test('returns system quality attribute', () {
      expect(
        IntDevelopmentData.systemQualityAttributes,
        contains(development.systemQualityAttribute),
      );
    });
  });
}

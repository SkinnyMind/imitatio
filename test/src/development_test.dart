import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/development.dart';
import 'package:test/test.dart';

void main() {
  group('Development', () {
    const development = Development();
    const seededDevelopment = Development(seed: 1);

    test('returns random software licence', () {
      expect(
        IntDevelopmentData.licenses,
        contains(development.softwareLicense),
      );

      expect(
        seededDevelopment.softwareLicense,
        equals(seededDevelopment.softwareLicense),
      );
    });

    test('returns version number', () {
      final version = development.version().split('.');
      expect(version.length, equals(3));

      final major = int.parse(version[0]);
      final minor = int.parse(version[1]);
      final patch = int.parse(version[2]);
      expect(major, inInclusiveRange(0, 11));
      expect(minor, inInclusiveRange(0, 11));
      expect(patch, inInclusiveRange(0, 11));

      expect(seededDevelopment.version(), equals(seededDevelopment.version()));
    });

    test('returns version number with pre-release', () {
      final version = development.version(preRelease: true).split('.');
      expect(version.length, equals(4));
    });

    test('returns version number in Calendar Versioning format', () {
      final version = development.version(calVer: true).split('.');
      expect(version.length, equals(3));

      final major = int.parse(version[0]);
      final minor = int.parse(version[1]);
      final patch = int.parse(version[2]);
      expect(major, inInclusiveRange(2016, DateTime.now().year));
      expect(minor, inInclusiveRange(0, 12));
      expect(patch, inInclusiveRange(0, 29));
    });

    test(
      'returns version number in Calendar Versioning format with pre-release',
      () {
        final version = development
            .version(calVer: true, preRelease: true)
            .split('.');
        expect(version.length, equals(4));

        final major = int.parse(version[0]);
        expect(major, inInclusiveRange(2016, DateTime.now().year));
      },
    );

    test('returns programming language', () {
      expect(
        IntDevelopmentData.programmingLanguages,
        contains(development.programmingLanguage),
      );
      expect(
        seededDevelopment.programmingLanguage,
        equals(seededDevelopment.programmingLanguage),
      );
    });

    test('returns os', () {
      expect(IntDevelopmentData.oses, contains(development.os));
      expect(seededDevelopment.os, equals(seededDevelopment.os));
    });

    test('returns boolean value', () {
      expect(development.boolean, isA<bool>());
      expect(seededDevelopment.boolean, equals(seededDevelopment.boolean));
    });

    test('returns system quality attribute', () {
      expect(
        IntDevelopmentData.systemQualityAttributes,
        contains(development.systemQualityAttribute),
      );
      expect(
        seededDevelopment.systemQualityAttribute,
        equals(seededDevelopment.systemQualityAttribute),
      );
    });
  });
}

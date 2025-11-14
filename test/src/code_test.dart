import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/code.dart';
import 'package:test/test.dart';

void main() {
  group('Code', () {
    const code = Code();
    const seededCode = Code(seed: 1);

    test('returns locale code', () {
      expect(IntCodeData.localeCodes, contains(code.localeCode));
      expect(seededCode.localeCode, equals(seededCode.localeCode));
    });

    test('returns imei', () {
      expect(code.imei.length, lessThanOrEqualTo(15));
      expect(seededCode.imei, equals(seededCode.imei));
    });

    test('returns pin', () {
      expect(code.pin().length, equals(4));
      expect(code.pin(mask: "##").length, equals(2));
      expect(seededCode.pin(), equals(seededCode.pin()));
    });

    test('returns ISSN', () {
      expect(code.issn().length, equals(9));
      expect(code.issn(mask: "##").length, equals(2));
      expect(seededCode.issn(), equals(seededCode.issn()));
    });

    test('returns ISBN', () {
      expect(code.isbn(), isNotEmpty);

      expect(code.isbn(format: .isbn10).length, greaterThanOrEqualTo(10));
      expect(code.isbn(format: .isbn13).length, greaterThanOrEqualTo(13));

      final enCode = code.isbn(locale: .en, format: .isbn10);
      expect(enCode.split('-')[0], equals('1'));

      expect(seededCode.isbn(), equals(seededCode.isbn()));
    });

    test('returns EAN', () {
      expect(code.ean(), isNotEmpty);
      expect(code.ean(format: .ean8).length, equals(8));
      expect(code.ean(format: .ean13).length, equals(13));
      expect(seededCode.ean(), equals(seededCode.ean()));
    });
  });
}

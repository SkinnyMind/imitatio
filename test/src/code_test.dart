import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/code.dart';
import 'package:test/test.dart';

void main() {
  group('Code', () {
    const code = Code();
    const seededCode = Code(seed: 1);

    test('returns locale code', () {
      expect(
        IntCodeData.localeCodes,
        contains(code.localeCode),
      );

      expect(
        seededCode.localeCode,
        equals(seededCode.localeCode),
      );
    });

    test('returns imei', () {
      expect(code.imei.length <= 15, true);
      expect(
        seededCode.imei,
        equals(seededCode.imei),
      );
    });

    test('returns pin', () {
      expect(code.pin().length, 4);
      expect(code.pin(mask: "##").length, 2);
      expect(seededCode.pin(), equals(seededCode.pin()));
    });

    test('returns ISSN', () {
      expect(code.issn().length, 9);
      expect(code.issn(mask: "##").length, 2);
      expect(seededCode.issn(), equals(seededCode.issn()));
    });

    test('returns ISBN', () {
      expect(code.isbn(), isNotEmpty);
      expect(code.isbn(format: ISBNFormat.isbn10).length >= 10, true);
      expect(code.isbn(format: ISBNFormat.isbn13).length >= 13, true);
      expect(seededCode.isbn(), equals(seededCode.isbn()));
    });

    test('returns EAN', () {
      expect(code.ean(), isNotEmpty);
      expect(code.ean(format: EANFormat.ean8).length, 8);
      expect(code.ean(format: EANFormat.ean13).length, 13);
      expect(seededCode.ean(), equals(seededCode.ean()));
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/code.dart';
import 'package:test/test.dart';

void main() {
  group('Code', () {
    test('returns locale code', () {
      expect(
        CodeData.localeCodes,
        contains(Code.localeCode()),
      );
    });

    test('returns imei', () {
      expect(Code.imei().length <= 15, true);
    });

    test('returns pin', () {
      expect(Code.pin().length, 4);
      expect(Code.pin(mask: "##").length, 2);
    });

    test('returns ISSN', () {
      expect(Code.issn().length, 9);
      expect(Code.issn(mask: "##").length, 2);
    });

    test('returns ISBN', () {
      expect(Code.isbn(), isNotEmpty);
      expect(Code.isbn(format: ISBNFormat.isbn10).length >= 10, true);
      expect(Code.isbn(format: ISBNFormat.isbn13).length >= 13, true);
    });

    test('returns EAN', () {
      expect(Code.ean(), isNotEmpty);
      expect(Code.ean(format: EANFormat.ean8).length, 8);
      expect(Code.ean(format: EANFormat.ean13).length, 13);
    });
  });
}

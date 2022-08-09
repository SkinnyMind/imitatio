import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/code.dart';
import 'package:test/test.dart';

void main() {
  group('Code', () {
    const code = Code();

    test('returns locale code', () {
      expect(CodeData.localeCodes.contains(code.localeCode()), true);
    });

    test('returns imei', () {
      expect(code.imei().length <= 15, true);
    });

    test('returns pin', () {
      expect(code.pin().length, 4);
      expect(code.pin(mask: "##").length, 2);
    });

    test('returns ISSN', () {
      expect(code.issn().length, 9);
      expect(code.issn(mask: "##").length, 2);
    });

    test('returns ISBN', () {
      expect(code.isbn(), isNotEmpty);
      expect(code.isbn(format: ISBNFormat.isbn10).length >= 10, true);
      expect(code.isbn(format: ISBNFormat.isbn13).length >= 13, true);
    });

    test('returns EAN', () {
      expect(code.ean(), isNotEmpty);
      expect(code.ean(format: EANFormat.ean8).length, 8);
      expect(code.ean(format: EANFormat.ean13).length, 13);
    });
  });
}

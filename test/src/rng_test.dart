import 'package:imitatio/src/rng.dart';
import 'package:test/test.dart';

void main() {
  group('Rng', () {
    test('returns random string', () {
      final string = Rng.randomString();
      expect(string.length >= 16 && string.length <= 128, true);
    });

    test('returns random string with provided length', () {
      final result1 = Rng.randomString(length: 8);
      final result2 = Rng.randomString(length: 8);

      expect(result1 != result2, true);
      expect(result1.length, 8);
    });

    test('returns unique random string', () {
      final result = [
        for (var i = 0; i < 1000; i++) Rng.randomString(unique: true),
      ];
      expect(result.length, result.toSet().length);
    });

    test('returns custom code', () {
      expect(Rng.customCode().length, 4);

      final mask = r'**-š好-$$';
      final result = Rng.customCode(mask: mask, char: '*', digit: r'$');
      expect(result.length, 8);

      final splitResult = result.split('-');
      expect(splitResult[1], mask.split('-')[1]);
      expect(int.parse(splitResult.last), isA<int>());

      expect(
        () => Rng.customCode(char: '*', digit: '*'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
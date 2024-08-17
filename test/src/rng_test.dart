import 'package:imitatio/src/rng.dart';
import 'package:test/test.dart';

void main() {
  group('Rng', () {
    test('returns random string', () {
      final string = Rng.randomString();
      expect(string.length, inInclusiveRange(16, 128));
      expect(
        Rng.randomString(length: 10, seed: 2),
        equals(Rng.randomString(length: 10, seed: 2)),
      );
    });

    test('returns random string with provided length', () {
      final result1 = Rng.randomString(length: 8);
      final result2 = Rng.randomString(length: 8);

      expect(result1 != result2, true);
      expect(result1.length, equals(8));
    });

    test('returns unique random string', () {
      final result = [
        for (var i = 0; i < 1000; i++) Rng.randomString(unique: true),
      ];
      expect(result.length, equals(result.toSet().length));
    });

    test('returns custom code', () {
      expect(Rng.customCode().length, equals(4));

      final mask = r'**-š好-$$';
      final result = Rng.customCode(mask: mask, char: '*', digit: r'$');
      expect(result.length, equals(8));

      final splitResult = result.split('-');
      expect(splitResult[1], mask.split('-')[1]);
      expect(int.parse(splitResult.last), isA<int>());

      expect(() => Rng.customCode(char: '*', digit: '*'), throwsArgumentError);
    });
  });
}

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
  });
}

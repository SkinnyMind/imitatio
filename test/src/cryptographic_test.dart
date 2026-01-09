import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Cryptographic', () {
    const crypto = Cryptographic();
    const seededCrypto = Cryptographic(seed: 1);

    test('returns uuid string', () {
      final uuidRegex = RegExp(
        '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}',
      );
      expect(crypto.uuid, matches(uuidRegex));
      expect(seededCrypto.uuid, equals(seededCrypto.uuid));
    });

    test('returns hash string', () {
      final expectedLength = {
        Algorithm.md5: 32,
        Algorithm.sha1: 40,
        Algorithm.sha224: 56,
        Algorithm.sha256: 64,
        Algorithm.sha384: 96,
        Algorithm.sha512: 128,
      };

      for (final alg in expectedLength.entries) {
        final result = crypto.hash(algorithm: alg.key);
        expect(result.length, equals(alg.value));
        expect(
          seededCrypto.hash(algorithm: alg.key),
          equals(seededCrypto.hash(algorithm: alg.key)),
        );
      }
    });
  });
}

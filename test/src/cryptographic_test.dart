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
  });
}

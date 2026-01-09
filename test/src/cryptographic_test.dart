import 'dart:convert';

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

    test('returns list with token bytes', () {
      final result = crypto.tokenBytes();
      expect(result.length, equals(32));
      expect(seededCrypto.tokenBytes(), equals(seededCrypto.tokenBytes()));

      for (final entropy in [64, 128]) {
        final result = crypto.tokenBytes(entropy: entropy);
        expect(result.length, equals(entropy));
        expect(
          seededCrypto.tokenBytes(entropy: entropy),
          equals(seededCrypto.tokenBytes(entropy: entropy)),
        );
      }
    });

    test('returns hex string', () {
      final result = crypto.tokenHex();
      expect(result.length, equals(32 * 2));
      expect(seededCrypto.tokenHex(), equals(seededCrypto.tokenHex()));

      for (final entropy in [64, 128]) {
        final result = crypto.tokenHex(entropy: entropy);
        expect(result.length, equals(entropy * 2));
        expect(
          seededCrypto.tokenHex(entropy: entropy),
          equals(seededCrypto.tokenHex(entropy: entropy)),
        );
      }
    });

    test('returns url-safe base64 padded string', () {
      final result = crypto.tokenUrlSafe();
      expect(result.length, greaterThan(32));
      expect(seededCrypto.tokenUrlSafe(), equals(seededCrypto.tokenUrlSafe()));

      for (final entropy in [64, 128]) {
        final result = crypto.tokenUrlSafe(entropy: entropy);
        expect(result.length, greaterThan(entropy));
        expect(
          seededCrypto.tokenUrlSafe(entropy: entropy),
          equals(seededCrypto.tokenUrlSafe(entropy: entropy)),
        );
      }
    });

    test('returns mnemonic phrase', () {
      final result = crypto.mnemonicPhrase;
      expect(result.split(' ').length, inInclusiveRange(12, 24));
      expect(seededCrypto.mnemonicPhrase, equals(seededCrypto.mnemonicPhrase));
    });

    test('returns JWT with default params', () {
      final result = crypto.jwt();
      final parts = result.split('.');
      expect(parts.length, equals(3));

      final headerJson = base64.decode(base64Url.normalize(parts[0]));
      final header =
          jsonDecode(utf8.decode(headerJson)) as Map<String, dynamic>;
      expect(header['alg'], equals('HS256'));
      expect(header['typ'], equals('JWT'));

      final payloadJson = base64.decode(base64Url.normalize(parts[1]));
      final payload =
          jsonDecode(utf8.decode(payloadJson)) as Map<String, dynamic>;
      expect(payload['sub'], isNotEmpty);
      expect(payload['name'], equals('Test User'));
      expect(payload['iat'], isA<int>());
      expect(payload['exp'], isA<int>());

      expect(seededCrypto.jwt(), equals(seededCrypto.jwt()));
    });

    test('returns JWT with provided algorithm', () {
      const algorithm = 'HS512';

      final result = crypto.jwt(algorithm: algorithm);
      final parts = result.split('.');
      expect(parts.length, equals(3));

      final headerJson = base64.decode(base64Url.normalize(parts[0]));
      final header =
          jsonDecode(utf8.decode(headerJson)) as Map<String, dynamic>;
      expect(header['alg'], equals(algorithm));

      expect(
        seededCrypto.jwt(algorithm: algorithm),
        equals(seededCrypto.jwt(algorithm: algorithm)),
      );
    });

    test('returns JWT with provided payload', () {
      const payloads = [
        {'user_id': 123, 'role': 'admin'},
        {
          'sub': 'user@example.com',
          'permissions': ['read', 'write'],
        },
        {
          'custom_field': 'value',
          'nested': {'key': 'value'},
        },
        {'empty': null, 'bool': true, "number": 42},
      ];

      for (final p in payloads) {
        final result = crypto.jwt(payload: p);
        final parts = result.split('.');
        expect(parts.length, equals(3));

        final payloadJson = base64.decode(base64Url.normalize(parts[1]));
        final payload =
            jsonDecode(utf8.decode(payloadJson)) as Map<String, dynamic>;
        expect(payload, equals(p));
        expect(
          seededCrypto.jwt(payload: p),
          equals(seededCrypto.jwt(payload: p)),
        );
      }
    });
  });
}

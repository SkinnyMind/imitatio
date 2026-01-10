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

    test('returns api key with default params', () {
      final result = crypto.apiKey();
      expect(result.length, equals(32));
      expect(seededCrypto.apiKey(), equals(seededCrypto.apiKey()));
    });

    test('returns api key with provided params', () {
      const params = [
        // [prefix, length, asHex, expectedMinLength]
        ('', 32, true, 32),
        ('sk_', 32, true, 35),
        ('pk_', 32, true, 35),
        ('api_', 32, true, 36),
        ('', 64, true, 64),
        ('test_', 16, true, 21),
        ('', 32, false, 32),
        ('sk_', 32, false, 35),
        ('pk_', 48, false, 51),
      ];

      for (final (prefix, length, asHex, expectedMinLength) in params) {
        final result = crypto.apiKey(
          prefix: prefix,
          length: length,
          asHex: asHex,
        );
        expect(result.length, equals(expectedMinLength));
        expect(
          seededCrypto.apiKey(prefix: prefix, length: length, asHex: asHex),
          equals(
            seededCrypto.apiKey(prefix: prefix, length: length, asHex: asHex),
          ),
        );
      }
    });

    test('returns certificate fingerprint with default params', () {
      final result = crypto.certificateFingerprint();
      expect(result.length, equals(95)); // 32 bytes * 2 hex chars + 31 colons
      expect(":".allMatches(result).length, 31);
      expect(result.contains(RegExp('[A-Z]')), isTrue);
      expect(
        seededCrypto.certificateFingerprint(),
        equals(seededCrypto.certificateFingerprint()),
      );
    });

    test('returns ertificate fingerprint with provided params', () {
      const params = [
        // [asSha256, expectedLength, expectedColons]
        (true, 95, 31), // 32 bytes = 64 hex chars + 31 colons = 95 total
        (false, 59, 19), // 20 bytes = 40 hex chars + 19 colons = 59 total
      ];

      for (final (asSha256, expectedLength, expectedColons) in params) {
        final result = crypto.certificateFingerprint(asSha256: asSha256);
        expect(result.length, equals(expectedLength));
        expect(":".allMatches(result).length, expectedColons);
        expect(result.contains(RegExp('[A-Z]')), isTrue);
        expect(
          seededCrypto.certificateFingerprint(asSha256: asSha256),
          equals(seededCrypto.certificateFingerprint(asSha256: asSha256)),
        );
      }
    });
  });
}

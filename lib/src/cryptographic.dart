import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:imitatio/src/datasets/international/cryptographic.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';
import 'package:imitatio/src/util.dart';

/// Provides pseudo-cryptographic data.
class Cryptographic {
  /// Provides pseudo-cryptographic data.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Cryptographic({this.seed});

  final int? seed;

  /// Returns UUIDv4 string.
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().uuid; // "a462502a-73af-4e41-bfc4-05957b7030dd"
  /// ```
  String get uuid => Util.uuidV4(seed: seed);

  /// Returns random hash.
  ///
  /// [algorithm] is one of [Algorithm].
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().hash(algorithm: Algorithm.md5); // "74d85e475b3d23ce0618f5b6763a1143"
  /// ```
  String hash({required Algorithm algorithm}) {
    final bytes = utf8.encode(uuid);
    return switch (algorithm) {
      .md5 => md5.convert(bytes).toString(),
      .sha1 => sha1.convert(bytes).toString(),
      .sha224 => sha224.convert(bytes).toString(),
      .sha256 => sha256.convert(bytes).toString(),
      .sha384 => sha384.convert(bytes).toString(),
      .sha512 => sha512.convert(bytes).toString(),
    };
  }

  /// Returns list of bytes with [entropy] length.
  ///
  /// [entropy] is optional number of bytes (default is 32).
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().tokenBytes(); // "[254, 81, 131, 131, 13, 58, 16, 194, 130, 176, 115, 27, 161, 15, 36, 244, 146, 3, 189, 115, 119, 10, 49, 26, 9, 40, 16, 219, 94, 146, 2, 227]"
  /// ```
  List<int> tokenBytes({int entropy = 32}) {
    final random = Random(seed);
    return List<int>.generate(
      entropy,
      (i) => random.nextInt(256),
      growable: false,
    );
  }

  /// Returns a random hex string list.
  ///
  /// [entropy] is optional number of bytes (default is 32), each byte is
  /// converted to two hex digits.
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().tokenHex(); // "3d69585754a350a66ceed077a875dc740d402b75d8b2c748ad7226f7b6ee7140"
  /// ```
  String tokenHex({int entropy = 32}) {
    final bytes = tokenBytes(entropy: entropy);
    final result = StringBuffer();
    for (final byte in bytes) {
      result.write(byte.toRadixString(16).padLeft(2, '0'));
    }
    return result.toString();
  }

  /// Returns a random URL-safe Base64-encoded string (padded).
  ///
  /// [entropy] is optional number of bytes (default is 32).
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().tokenUrlSafe(); // "ti3YgkBb5xftxifepAgtKSWNM6uDEgr0R_OZV6XpfRs="
  /// Cryptographic().tokenUrlSafe(entropy: 64); // "HgudGr6yXgulDTK23x49-WPv3PqB7mn-D7n4fgNWMDGGCaffLD_0eXj4KpnAfPWImV5FzZiGFL4t3irb8FH29A=="
  /// ```
  String tokenUrlSafe({int entropy = 32}) {
    final bytes = tokenBytes(entropy: entropy);
    return base64UrlEncode(bytes);
  }

  /// Returns BIP-39 looking mnemonic phrase.
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().mnemonicPhrase; // "fee unveil paper author island often weekend basket beef meadow wool draft nut ecology"
  /// ```
  String get mnemonicPhrase {
    final random = Random(seed);
    final length = random.integer(min: 12, max: 24);
    final words = Util.pickN(
      list: IntCryptographicData.wordlist,
      n: length,
      seed: seed,
    );
    return words.join(' ');
  }

  /// Returns JWT-like token structure.
  ///
  /// [payload] is optional JWT payload (claims). If none provided default
  /// payload is used.
  ///
  /// [algorithm] is optional JWT algorithm (default is "HS256").
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().jwt(); // "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI3NjZmZGFjNi0yNjU3LTQ1NTQtYTNiMy01MGI2ODIyOTRmNmUiLCJuYW1lIjoiVGVzdCBVc2VyIiwiaWF0IjoxNzY3OTY5NDM2LCJleHAiOjE3Njc5NzMwMzZ9.OLkALspgIX982pMKceErTpSOwNLSv-Uhtyu-ZO7yi5U"
  /// ```
  String jwt({Map<String, dynamic>? payload, String algorithm = 'HS256'}) {
    final header = {'alg': algorithm, 'typ': 'JWT'};

    final now = DateTime.now();
    final iat = now.millisecondsSinceEpoch ~/ 1000;
    final exp = iat + 3600;

    payload ??= {'sub': uuid, 'name': 'Test User', 'iat': iat, 'exp': exp};

    final headerJson = jsonEncode(header);
    final payloadJson = jsonEncode(payload);

    final base64UrlEncoder = utf8.fuse(base64Url);
    final header64 = base64UrlEncoder.encode(headerJson).replaceAll('=', '');
    final payload64 = base64UrlEncoder.encode(payloadJson).replaceAll('=', '');
    final signature = base64UrlEncode(tokenBytes()).replaceAll('=', '');

    return '$header64.$payload64.$signature';
  }

  /// Returns API key.
  ///
  /// [prefix] is optional prefix string (e.g. `sk_`, `pk_`, `api_`).
  /// Default is no prefix.
  ///
  /// [length] is optiontal legnth of the random part (default is 32).
  ///
  /// [asHex] determines whether returned string should be in hex or base64
  /// (default is hex).
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().apiKey(); // "f59e6e027fd23b6721cfa79eb28f58ae"
  /// Cryptographic().apiKey(prefix: 'sk_'); // "sk_e95cabd07b0ac9222799ecd4937e6137"
  /// Cryptographic().apiKey(prefix: 'pk_', length: 48, asHex: false); // "pk_F7gwa47ywr3yi6UDG-El4sqNUCN_maLAcjZY5omAONoa2WBR"
  /// ```
  String apiKey({String prefix = '', int length = 32, bool asHex = true}) {
    final key = asHex
        ? tokenHex(entropy: length ~/ 2)
        : tokenUrlSafe(
            entropy: length,
          ).replaceAll('=', '').substring(0, length);
    return '$prefix$key';
  }

  /// Returns certificate fingerprint.
  ///
  /// [asSha256] determines whether returned string looks like sha256 or sha1
  /// (default is true).
  ///
  /// Example:
  /// ```dart
  /// Cryptographic().certificateFingerprint(); // "74:67:A0:9C:B6:49:9B:B1:51:74:C2:9F:6C:42:81:52:5C:7A:31:F5:72:75:09:A0:41:08:1F:53:31:E7:D7:41"
  /// Cryptographic().certificateFingerprint(asSha256: false); // "93:5E:AE:6E:89:6B:CF:C4:76:DD:6D:23:50:10:80:6C:22:9D:55:90"
  /// ```
  String certificateFingerprint({bool asSha256 = true}) {
    final hexString = asSha256 ? tokenHex() : tokenHex(entropy: 20);
    return [
      for (var i = 0; i < hexString.length; i += 2)
        hexString.substring(i, i + 2),
    ].join(':').toUpperCase();
  }
}

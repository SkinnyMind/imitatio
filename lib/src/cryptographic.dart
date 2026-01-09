import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:imitatio/src/enums.dart';
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
}

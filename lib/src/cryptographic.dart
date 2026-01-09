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
}

import 'dart:math';

import 'package:imitatio/src/util.dart';
import 'package:uuid/uuid.dart';

/// Implements various helpers.
class Rng {
  const Rng._(); // coverage:ignore-line

  /// Returns a random string value.
  ///
  /// [unique] is optional flag to generate only unique values.
  ///
  /// [length] is optional length of the resulting string (default is between
  /// 16 and 128).
  static String randomString({bool unique = false, int? length}) {
    if (unique) return const Uuid().v4();
    final chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
            .split('');

    return Util.pickN(
      list: chars,
      n: length ?? Random().nextInt(113) + 16,
    ).join();
  }
}

import 'dart:math';

import 'package:imitatio/src/util.dart';

/// Implements various helpers.
class Rng {
  const Rng._();

  /// Returns a random string value.
  ///
  /// [length] is optional length of the resulting string (default is between
  /// 16 and 128).
  static String randomString({int? length}) {
    final chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
            .split('');

    return Util.pickN(
      list: chars,
      n: length ?? Random().nextInt(113) + 16,
    ).join();
  }
}

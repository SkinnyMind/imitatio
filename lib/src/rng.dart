import 'dart:math';

import 'package:imitatio/src/util.dart';

/// Implements various helpers which are used in the various data providers.
class Rng {
  const Rng._();

  /// Generate random string value.
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

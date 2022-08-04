import 'dart:math';

/// Implements various helpers which are used in the various data providers.
class Rng {
  const Rng._();

  /// Generate random string value.
  static String randomString({int? length}) {
    final chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
            .split('');

    List<String> choose({required List<String> list, required int length}) {
      return [
        for (var i = 0; i < length; i++) list[Random().nextInt(list.length)]
      ];
    }

    return choose(list: chars, length: length ?? Random().nextInt(113) + 16)
        .join();
  }
}

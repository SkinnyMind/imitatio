import 'dart:math';

extension RandomInteger on Random {
  /// Returns random integer from range (start and end inclusive).
  ///
  /// [min] is optional value for range start (default is 0).
  ///
  /// [max] is value for range end.
  int integer({required int max, int min = 0}) {
    return nextInt(max - min + 1) + min;
  }
}

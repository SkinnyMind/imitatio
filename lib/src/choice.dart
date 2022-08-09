import 'dart:math';

class Choice {
  const Choice();

  /// Returns a randomly-chosen list of elements from provided [items].
  ///
  /// [length] is optional number of elements to return (default is 1).
  ///
  /// [unique] is optional check to return only unique elements (default is
  /// false).
  ///
  /// Throws [ArgumentError] if length is not a positive integer or if there
  /// are not enough unique elements in [items] to provide the specified
  /// [length].
  List<T> choose<T>({
    required List<T> items,
    int length = 1,
    bool unique = false,
  }) {
    if (length <= 0) {
      throw ArgumentError.value(
        length,
        'length',
        'Lenght should be a positive integer',
      );
    }

    if (unique && items.toSet().length < length) {
      throw ArgumentError(
        'There are not enough unique elements to provide the specified length',
      );
    }

    final result = <T>[];
    while (result.length < length) {
      final item = items[Random().nextInt(items.length)];
      if (!unique || (unique && !result.contains(item))) {
        result.add(item);
      }
    }
    return result;
  }
}

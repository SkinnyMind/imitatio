import 'dart:math';

class Choice {
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Choice({this.seed});

  final int? seed;

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
  ///
  /// Example:
  /// ```dart
  /// Choice().choose(items: [1, 2, 3]); // [3]
  /// Choice().choose(items: [1, 2, 3], length: 2); // [3, 1]
  /// Choice().choose(
  ///   items: [1, 2, 3, 2, 1],
  ///   length: 3,
  ///   unique: true
  /// ); // [3, 1, 2]
  /// ```
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
      final item = items[Random(seed).nextInt(items.length)];
      if (!unique || (unique && !result.contains(item))) {
        result.add(item);
      }
    }
    return result;
  }
}

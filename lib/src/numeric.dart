import 'dart:math';

/// Provider of data related to generating numeric data.
class Numeric {
  /// Provider of data related to generating numeric data.
  const Numeric();

  /// Returns a random float number in range [`start`, `end`] (inclusive).
  ///
  /// [start] is optional range start value (default is -1000.0).
  ///
  /// [end] is optional range end value (default is 1000.0).
  ///
  /// [precision] is optional number of digits to round a number to
  /// (default is 15).
  ///
  /// Example:
  /// ```dart
  /// Numeric().floatNumber(); // 60.452937498140727
  /// Numeric().floatNumber(start: 10.0, end: 15.0, precision: 3); // 13.929
  /// ```
  double floatNumber({
    double start = -1000.0,
    double end = 1000.0,
    int precision = 15,
  }) {
    return double.parse(
      (Random().nextDouble() * (end - start) + start)
          .toStringAsFixed(precision),
    );
  }

  /// Returns a list of random float numbers.
  ///
  /// [start] is optional range start value (default is 0.0).
  ///
  /// [end] is optional range end value (default is 1.0).
  ///
  /// [n] is length of the list (default is 10).
  ///
  /// [precision] is optional number of digits to round a number to
  /// (default is 15).
  ///
  /// Example:
  /// ```dart
  /// Numeric().floats(n: 3, precision: 3); // [0.896, 0.355, 0.579]
  /// ```
  List<double> floats({
    double start = 0.0,
    double end = 1.0,
    int n = 10,
    int precision = 15,
  }) {
    return [
      for (var i = 0; i < n; i++)
        floatNumber(start: start, end: end, precision: precision),
    ];
  }

  /// Returns  a random integer in range [`start`, `end`] (inclusive).
  ///
  /// [start] is optional range start value (default is -1000).
  ///
  /// [end] is optional range end value (default is 1000).
  ///
  /// Example:
  /// ```dart
  /// Numeric().integerNumber(); // -52
  /// Numeric().integerNumber(start: 10, end: 15); // 13
  /// ```
  int integerNumber({int start = -1000, int end = 1000}) {
    return Random().nextInt(end + 1 - start) + start;
  }

  /// Returns a list of random integers.
  ///
  /// [start] is optional range start value (default is 0).
  ///
  /// [end] is optional range end value (default is 10).
  ///
  /// [n] is length of the list (default is 10).
  ///
  /// Example:
  /// ```dart
  /// Numeric().integers(); // [2, 9, 5, 4, 8, 5, 7, 4, 8, 6]
  /// Numeric().integers(n: 3); // [3, 8, 6]
  /// ```
  List<int> integers({int start = 0, int end = 10, int n = 10}) {
    return [for (var i = 0; i < n; i++) integerNumber(start: start, end: end)];
  }
}

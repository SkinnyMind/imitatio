import 'dart:math';

import 'package:imitatio/src/extensions.dart';

/// Provider of data related to generating numeric data.
class Numeric {
  /// Provider of data related to generating numeric data.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Numeric({this.seed});

  final int? seed;

  /// Returns a random float number in range [`start`, `end`] (inclusive).
  ///
  /// [start] is optional range start value (default is -1000.0).
  ///
  /// [end] is optional range end value (default is 1000.0).
  ///
  /// [precision] is optional number of digits to round a number to
  /// (default is 15).
  ///
  /// Throws a [RangeError] if [start] is greater than [end].
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
    if (start > end) {
      throw RangeError.value(
        start,
        'start',
        'start cannot be greater than end',
      );
    }

    return .parse(
      (Random(seed).nextDouble() * (end - start) + start).toStringAsFixed(
        precision,
      ),
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
  /// Throws a [RangeError] if [start] is greater than [end].
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
    if (start > end) {
      throw RangeError.value(
        start,
        'start',
        'start cannot be greater than end',
      );
    }

    final random = Random(seed);
    return .generate(
      n,
      (_) => .parse(
        (random.nextDouble() * (end - start) + start).toStringAsFixed(
          precision,
        ),
      ),
    );
  }

  /// Returns  a random integer in range `[start, end]` (inclusive).
  ///
  /// [start] is optional range start value (default is -1000).
  ///
  /// [end] is optional range end value (default is 1000).
  ///
  /// Throws a [RangeError] if [start] is greater than [end].
  ///
  /// Example:
  /// ```dart
  /// Numeric().integerNumber(); // -52
  /// Numeric().integerNumber(start: 10, end: 15); // 13
  /// ```
  int integerNumber({int start = -1000, int end = 1000}) {
    if (start > end) {
      throw RangeError.value(
        start,
        'start',
        'start cannot be greater than end',
      );
    }

    return Random(seed).integer(min: start, max: end);
  }

  /// Returns a list of random integers.
  ///
  /// [start] is optional range start value (default is 0).
  ///
  /// [end] is optional range end value (default is 10).
  ///
  /// [n] is length of the list (default is 10).
  ///
  /// Throws a [RangeError] if [start] is greater than [end].
  ///
  /// Example:
  /// ```dart
  /// Numeric().integers(); // [2, 9, 5, 4, 8, 5, 7, 4, 8, 6]
  /// Numeric().integers(n: 3); // [3, 8, 6]
  /// ```
  List<int> integers({int start = 0, int end = 10, int n = 10}) {
    if (start > end) {
      throw RangeError.value(
        start,
        'start',
        'start cannot be greater than end',
      );
    }

    final random = Random(seed);
    return .generate(n, (_) => random.integer(min: start, max: end));
  }

  /// Returns a random complex number.
  ///
  /// [realStart] is optional value for real part range start (default is 0.0).
  ///
  /// [realEnd] is optional value for real part range end (default is 1.0).
  ///
  /// [realPrecision] is optional value for real part precision (default is 15).
  ///
  /// [imaginaryStart] is optional value for imaginary part range start
  /// (default is 0.0).
  ///
  /// [imaginaryEnd] is optional value for imaginary part range end
  /// (default is 1.0).
  ///
  /// [imaginaryPrecision] is optional value for imaginary part precision
  /// (default is 15).
  ///
  /// Example:
  /// ```dart
  /// Numeric().complexNumber(); // (imaginary: 0.784949456188452, real: 0.330969132786893)
  /// ```
  ({double real, double imaginary}) complexNumber({
    double realStart = 0.0,
    double realEnd = 1.0,
    int realPrecision = 15,
    double imaginaryStart = 0.0,
    double imaginaryEnd = 1.0,
    int imaginaryPrecision = 15,
  }) {
    final random = Random(seed);
    final real = ((random.nextDouble() + realStart) * realEnd).toStringAsFixed(
      realPrecision,
    );
    final imaginary = ((random.nextDouble() + imaginaryStart) * imaginaryEnd)
        .toStringAsFixed(imaginaryPrecision);
    return (real: double.parse(real), imaginary: double.parse(imaginary));
  }

  /// Returns a list of random complex numbers.
  ///
  /// [realStart] is optional value for real part range start (default is 0.0).
  ///
  /// [realEnd] is optional value for real part range end (default is 1.0).
  ///
  /// [realPrecision] is optional value for real part precision (default is 15).
  ///
  /// [imaginaryStart] is optional value for imaginary part range start
  /// (default is 0.0).
  ///
  /// [imaginaryEnd] is optional value for imaginary part range end
  /// (default is 1.0).
  ///
  /// [imaginaryPrecision] is optional value for imaginary part precision
  /// (default is 15).
  ///
  /// [n] is optional length of the list (default is 10).
  ///
  /// Example:
  /// ```dart
  /// Numeric().complexes(); // [(imaginary: 0.143755035934411, real: 0.401551611483689), ...]
  /// ```
  List<({double real, double imaginary})> complexes({
    double realStart = 0.0,
    double realEnd = 1.0,
    int realPrecision = 15,
    double imaginaryStart = 0.0,
    double imaginaryEnd = 1.0,
    int imaginaryPrecision = 15,
    int n = 10,
  }) {
    return .generate(
      n,
      (_) => complexNumber(
        realStart: realStart,
        realEnd: realEnd,
        realPrecision: realPrecision,
        imaginaryStart: imaginaryStart,
        imaginaryEnd: imaginaryEnd,
        imaginaryPrecision: imaginaryPrecision,
      ),
    );
  }
}

import 'package:imitatio/src/datasets/international/text.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to text.
class Text {
  const Text._();

  /// Returns a list of random words.
  ///
  /// [quantity] is optional number of words (default is 5).
  ///
  /// Example:
  /// ```dart
  /// Text.words(); // ["athens", "non", "hop", "maximum", "demand"]
  /// Text.words(quantity: 2); // ["awarded", "basically"]
  /// ```
  static List<String> words({int quantity = 5}) {
    return Util.pickN(list: TextData.wordsNormal, n: quantity);
  }

  /// Returns a random word.
  static String word() => words(quantity: 1).first;
}

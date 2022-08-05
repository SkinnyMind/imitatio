import 'package:imitatio/src/data/int/text.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to text.
class Text {
  /// Class for generating text data.
  const Text();

  /// Generate a list of random words.
  ///
  /// [quantity] is optional number of words (default is 5).
  List<String> words({int quantity = 5}) {
    return Util.pickN(list: TextData.wordsNormal, n: quantity);
  }

  /// Get a random word.
  String word() => words(quantity: 1).first;
}

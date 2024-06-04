import 'dart:math';

import 'package:imitatio/src/datasets/text.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to text.
class Text {
  const Text._();

  /// Returns an alphabet for [locale].
  ///
  /// [isLowerCase] determines whether to return alphabet in lower case or not
  /// (default is false).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.alphabet(); // [A, B, C, ..., Z]
  /// Text.alphabet(isLowerCase: true); // [a, b, c, ..., z]
  /// ```
  static List<String> alphabet({
    bool isLowerCase = false,
    Locale locale = Locale.en,
  }) {
    return TextData.locale(locale).alphabet(isLowerCase: isLowerCase);
  }

  /// Returns a word that indicates a level of something.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.level(); // "extreme"
  /// ```
  static String level({Locale locale = Locale.en}) {
    final data = TextData.locale(locale).level;
    return data[Random().nextInt(data.length)];
  }

  /// Returns the text.
  ///
  /// [quantity] is optional number of sentences (default is 5).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.text(); // "I don't even care. Erlang is a general-purpose..."
  /// ```
  static String text({int quantity = 5, Locale locale = Locale.en}) {
    final data = TextData.locale(locale).text;
    return [
      for (var i = 0; i < quantity; i++) data[Random().nextInt(data.length)],
    ].join(" ");
  }

  /// Returns a random sentence from the text.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.sentence(); // "Ports are created with the built-in function open_port."
  /// ```
  static String sentence({Locale locale = Locale.en}) {
    return Text.text(quantity: 1, locale: locale);
  }

  /// Returns a random title.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.title(); // "Type classes first appeared in the Haskell programming language."
  /// ```
  static String title({Locale locale = Locale.en}) {
    return Text.text(quantity: 1, locale: locale);
  }

  /// Returns a list of random words.
  ///
  /// [quantity] is optional number of words (default is 5).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.words(); // ["athens", "non", "hop", "maximum", "demand"]
  /// Text.words(quantity: 2); // ["awarded", "basically"]
  /// ```
  static List<String> words({int quantity = 5, Locale locale = Locale.en}) {
    return Util.pickN(list: TextData.locale(locale).words, n: quantity);
  }

  /// Returns a random word.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.word(); // "named"
  /// ```
  static String word({Locale locale = Locale.en}) {
    return Text.words(quantity: 1, locale: locale).first;
  }

  /// Returns a random quote.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.quote(); // "They call me *Mister* Tibbs!"
  /// ```
  static String quote({Locale locale = Locale.en}) {
    final data = TextData.locale(locale).quotes;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random color name.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.color(); // "White"
  /// ```
  static String color({Locale locale = Locale.en}) {
    final data = TextData.locale(locale).color;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random answer.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Text.answer(); // "No"
  /// ```
  static String answer({Locale locale = Locale.en}) {
    final data = TextData.locale(locale).answers;
    return data[Random().nextInt(data.length)];
  }
}

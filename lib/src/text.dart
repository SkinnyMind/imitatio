import 'dart:math';

import 'package:imitatio/src/datasets/text.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to text.
class Text {
  /// Provides data related to text.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Text({this.locale = Locale.en, this.seed});

  final Locale locale;

  final int? seed;

  /// Returns an alphabet for [locale].
  ///
  /// [isLowerCase] determines whether to return alphabet in lower case or not
  /// (default is false).
  ///
  /// Example:
  /// ```dart
  /// Text().alphabet(); // [A, B, C, ..., Z]
  /// Text().alphabet(isLowerCase: true); // [a, b, c, ..., z]
  /// ```
  List<String> alphabet({bool isLowerCase = false}) {
    return TextData.locale(locale).alphabet(isLowerCase: isLowerCase);
  }

  /// Returns a word that indicates a level of something.
  ///
  /// Example:
  /// ```dart
  /// Text().level; // "extreme"
  /// ```
  String get level {
    final data = TextData.locale(locale).levels;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns the text.
  ///
  /// [quantity] is optional number of sentences (default is 5).
  ///
  /// Example:
  /// ```dart
  /// Text().text(); // "I don't even care. Erlang is a general-purpose..."
  /// ```
  String text({int quantity = 5}) {
    final data = TextData.locale(locale).texts;
    final random = Random(seed);
    return [
      for (var i = 0; i < quantity; i++) data[random.nextInt(data.length)],
    ].join(" ");
  }

  /// Returns a random sentence from the text.
  ///
  /// Example:
  /// ```dart
  /// Text().sentence; // "Ports are created with the built-in function open_port."
  /// ```
  String get sentence => text(quantity: 1);

  /// Returns a random title.
  ///
  /// Example:
  /// ```dart
  /// Text().title; // "Type classes first appeared in the Haskell programming language."
  /// ```
  String get title => text(quantity: 1);

  /// Returns a list of random words.
  ///
  /// [quantity] is optional number of words (default is 5).
  ///
  /// Example:
  /// ```dart
  /// Text().words(); // ["athens", "non", "hop", "maximum", "demand"]
  /// Text().words(quantity: 2); // ["awarded", "basically"]
  /// ```
  List<String> words({int quantity = 5}) {
    return Util.pickN(
      list: TextData.locale(locale).words,
      n: quantity,
      seed: seed,
    );
  }

  /// Returns a random word.
  ///
  /// Example:
  /// ```dart
  /// Text().word; // "named"
  /// ```
  String get word => words(quantity: 1).first;

  /// Returns a random quote.
  ///
  /// Example:
  /// ```dart
  /// Text().quote; // "They call me *Mister* Tibbs!"
  /// ```
  String get quote {
    final data = TextData.locale(locale).quotes;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random color name.
  ///
  /// Example:
  /// ```dart
  /// Text().color; // "White"
  /// ```
  String get color {
    final data = TextData.locale(locale).colors;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random answer.
  ///
  /// Example:
  /// ```dart
  /// Text().answer; // "No"
  /// ```
  String get answer {
    final data = TextData.locale(locale).answers;
    return data[Random(seed).nextInt(data.length)];
  }
}

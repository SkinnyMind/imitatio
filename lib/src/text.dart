import 'dart:math';

import 'package:imitatio/src/datasets/international/text.dart';
import 'package:imitatio/src/datasets/text.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';
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
    return data[Random(seed).integer(max: data.length - 1)];
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
    return List.generate(
      quantity,
      (_) => data[random.integer(max: data.length - 1)],
    ).join(" ");
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
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random color name.
  ///
  /// Example:
  /// ```dart
  /// Text().color; // "White"
  /// ```
  String get color {
    final data = TextData.locale(locale).colors;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random HEX color.
  ///
  /// [asSafe] whether to return safe Flat UI hex color (default is false).
  ///
  /// Example:
  /// ```dart
  /// Text().hexColor(); // "#7c4765"
  /// Text().hexColor(asSafe: true); // "#95a5a6"
  /// ```
  String hexColor({bool asSafe = false}) {
    final random = Random(seed);
    if (asSafe) {
      final data = IntTextData.safeColors;
      return data[random.integer(max: data.length - 1)];
    } else {
      final result = StringBuffer('#');
      for (var i = 0; i < 6; i++) {
        result.write(random.integer(max: 15).toRadixString(16));
      }
      return result.toString();
    }
  }

  /// Returns a random RGB color.
  ///
  /// [asSafe] whether to return safe Flat UI RGB color (default is false).
  ///
  /// Example:
  /// ```dart
  /// Text().rgbColor(); // (b: 92, g: 34, r: 106)
  /// Text().rgbColor(asSafe: true); // (b: 173, g: 68, r: 142)
  /// ```
  ({int r, int g, int b}) rgbColor({bool asSafe = false}) {
    final color = hexColor(asSafe: asSafe);
    return (
      r: int.parse(color.substring(1, 3), radix: 16),
      g: int.parse(color.substring(3, 5), radix: 16),
      b: int.parse(color.substring(5, 7), radix: 16),
    );
  }

  /// Returns a random answer.
  ///
  /// Example:
  /// ```dart
  /// Text().answer; // "No"
  /// ```
  String get answer {
    final data = TextData.locale(locale).answers;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random emoji. If [category] is not specified returns emoji from
  /// random category in [EmojiCategory].
  ///
  /// [category] is optional [EmojiCategory].
  ///
  /// Example:
  /// ```dart
  /// Text().emoji(); // "🐸"
  /// Text().emoji(category: EmojiCategory.activities); // "🥅"
  /// ```
  String emoji({EmojiCategory? category}) {
    final random = Random(seed);
    final categories = EmojiCategory.values;
    final emojiCategory =
        category ?? categories[random.integer(max: categories.length - 1)];
    final data = IntTextData.emojis(category: emojiCategory);
    return data[random.integer(max: data.length - 1)];
  }
}

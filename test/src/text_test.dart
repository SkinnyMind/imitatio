import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/text.dart';
import 'package:imitatio/src/datasets/text.dart';
import 'package:test/test.dart';

void main() {
  group('Text', () {
    const text = Text();
    const locale = Locale.ru;
    const localeText = Text(locale: locale);
    const seededText = Text(seed: 1);

    test('returns list of words', () {
      expect(text.words().length, equals(5));

      final result = localeText.words(quantity: 1);
      expect(result.length, equals(1));
      expect(TextData.locale(locale).words, contains(result.first));

      expect(seededText.words(), equals(seededText.words()));
    });

    test('returns word', () {
      expect(TextData.locale(Locale.en).words, contains(text.word));

      expect(TextData.locale(locale).words, contains(localeText.word));
    });

    test('returns alphabet', () {
      expect(
        TextData.locale(Locale.en).alphabet(isLowerCase: false),
        equals(text.alphabet()),
      );

      expect(
        TextData.locale(locale).alphabet(isLowerCase: true),
        equals(localeText.alphabet(isLowerCase: true)),
      );
    });

    test('returns level of something', () {
      expect(TextData.locale(Locale.en).levels, contains(text.level));

      expect(TextData.locale(locale).levels, contains(localeText.level));

      expect(seededText.level, equals(seededText.level));
    });

    test('returns the text', () {
      expect(text.text(), isNotEmpty);

      expect(
        TextData.locale(locale).texts,
        contains(localeText.text(quantity: 1)),
      );

      expect(seededText.text(), equals(seededText.text()));
    });

    test('returns the sentence', () {
      expect(TextData.locale(Locale.en).texts, contains(text.sentence));

      expect(TextData.locale(locale).texts, contains(localeText.sentence));
    });

    test('returns a title', () {
      expect(TextData.locale(Locale.en).texts, contains(text.title));

      expect(TextData.locale(locale).texts, contains(localeText.title));
    });

    test('returns a quote', () {
      expect(TextData.locale(Locale.en).quotes, contains(text.quote));

      expect(TextData.locale(locale).quotes, contains(localeText.quote));

      expect(seededText.quote, equals(seededText.quote));
    });

    test('returns a color name', () {
      expect(TextData.locale(Locale.en).colors, contains(text.color));

      expect(TextData.locale(locale).colors, contains(localeText.color));

      expect(seededText.color, equals(seededText.color));
    });

    test('returns a HEX color', () {
      expect(text.hexColor().length, equals(7));
      expect(IntTextData.safeColors, contains(text.hexColor(asSafe: true)));
      expect(seededText.hexColor(), equals(seededText.hexColor()));
      expect(
        seededText.hexColor(asSafe: true),
        equals(seededText.hexColor(asSafe: true)),
      );
    });

    test('returns a RGB color', () {
      final result = text.rgbColor();
      expect(result.r, inInclusiveRange(0, 255));
      expect(result.g, inInclusiveRange(0, 255));
      expect(result.b, inInclusiveRange(0, 255));

      final safeResult = text.rgbColor(asSafe: true);
      expect(safeResult.r, inInclusiveRange(0, 255));
      expect(safeResult.g, inInclusiveRange(0, 255));
      expect(safeResult.b, inInclusiveRange(0, 255));

      expect(seededText.rgbColor(), equals(seededText.rgbColor()));

      expect(
        seededText.rgbColor(asSafe: true),
        equals(seededText.rgbColor(asSafe: true)),
      );
    });

    test('returns an answer', () {
      expect(TextData.locale(Locale.en).answers, contains(text.answer));

      expect(TextData.locale(locale).answers, contains(localeText.answer));

      expect(seededText.answer, equals(seededText.answer));
    });

    test('returns an emoji', () {
      expect(text.emoji(), isNotEmpty);

      final category = EmojiCategory.activities;
      expect(
        IntTextData.emojis(category: category),
        contains(text.emoji(category: category)),
      );

      expect(seededText.emoji(), equals(seededText.emoji()));
    });
  });
}

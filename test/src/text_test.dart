import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/text.dart';
import 'package:test/test.dart';

void main() {
  group('Text', () {
    test('returns list of words', () {
      expect(Text.words().length, 5);

      final locale = Locale.ru;
      final result = Text.words(quantity: 1, locale: locale);
      final data = TextData.locale(locale).words;
      expect(result.length, 1);
      expect(data.contains(result.first), true);
    });

    test('returns word', () {
      expect(Text.word(), isNotEmpty);

      final locale = Locale.ru;
      final result = Text.word(locale: locale);
      final data = TextData.locale(locale).words;
      expect(data.contains(result), true);
    });

    test('returns alphabet', () {
      expect(
        TextData.locale(Locale.en).alphabet(isLowerCase: false),
        Text.alphabet(),
      );

      final locale = Locale.ru;
      final result = Text.alphabet(isLowerCase: true, locale: locale);
      final data = TextData.locale(locale).alphabet(isLowerCase: true);
      expect(data, result);
    });

    test('returns level of something', () {
      expect(Text.level(), isNotEmpty);

      final locale = Locale.ru;
      final result = Text.level(locale: locale);
      final data = TextData.locale(locale).levels;
      expect(data.contains(result), true);
    });

    test('returns the text', () {
      expect(Text.text(), isNotEmpty);

      final locale = Locale.ru;
      final data = TextData.locale(locale).texts;
      final result = Text.text(quantity: 1, locale: locale);
      expect(data.contains(result), true);
    });

    test('returns the sentence', () {
      expect(Text.sentence(), isNotEmpty);

      final locale = Locale.ru;
      final data = TextData.locale(locale).texts;
      final result = Text.sentence(locale: locale);
      expect(data.contains(result), true);
    });

    test('returns a title', () {
      expect(Text.title(), isNotEmpty);

      final locale = Locale.ru;
      final data = TextData.locale(locale).texts;
      final result = Text.title(locale: locale);
      expect(data.contains(result), true);
    });

    test('returns a quote', () {
      expect(Text.quote(), isNotEmpty);

      final locale = Locale.ru;
      final data = TextData.locale(locale).quotes;
      final result = Text.quote(locale: locale);
      expect(data.contains(result), true);
    });

    test('returns a color name', () {
      expect(Text.color(), isNotEmpty);

      final locale = Locale.ru;
      final data = TextData.locale(locale).colors;
      final result = Text.color(locale: locale);
      expect(data.contains(result), true);
    });

    test('returns an answer', () {
      expect(Text.answer(), isNotEmpty);

      final locale = Locale.ru;
      final data = TextData.locale(locale).answers;
      final result = Text.answer(locale: locale);
      expect(data.contains(result), true);
    });
  });
}

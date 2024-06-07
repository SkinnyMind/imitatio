import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/text.dart';
import 'package:test/test.dart';

void main() {
  group('Text', () {
    test('returns list of words', () {
      expect(Text.words().length, 5);

      final locale = Locale.ru;
      final result = Text.words(quantity: 1, locale: locale);
      expect(result.length, 1);
      expect(
        TextData.locale(locale).words,
        contains(result.first),
      );
    });

    test('returns word', () {
      expect(
        TextData.locale(Locale.en).words,
        contains(Text.word()),
      );

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).words,
        contains(Text.word(locale: locale)),
      );
    });

    test('returns alphabet', () {
      expect(
        TextData.locale(Locale.en).alphabet(isLowerCase: false),
        Text.alphabet(),
      );

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).alphabet(isLowerCase: true),
        Text.alphabet(isLowerCase: true, locale: locale),
      );
    });

    test('returns level of something', () {
      expect(
        TextData.locale(Locale.en).levels,
        contains(Text.level()),
      );

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).levels,
        contains(Text.level(locale: locale)),
      );
    });

    test('returns the text', () {
      expect(Text.text(), isNotEmpty);

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).texts,
        contains(Text.text(quantity: 1, locale: locale)),
      );
    });

    test('returns the sentence', () {
      expect(
        TextData.locale(Locale.en).texts,
        contains(Text.sentence()),
      );

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).texts,
        contains(Text.sentence(locale: locale)),
      );
    });

    test('returns a title', () {
      expect(
        TextData.locale(Locale.en).texts,
        contains(Text.title()),
      );

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).texts,
        contains(Text.title(locale: locale)),
      );
    });

    test('returns a quote', () {
      expect(
        TextData.locale(Locale.en).quotes,
        contains(Text.quote()),
      );

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).quotes,
        contains(Text.quote(locale: locale)),
      );
    });

    test('returns a color name', () {
      expect(
        TextData.locale(Locale.en).colors,
        contains(Text.color()),
      );

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).colors,
        contains(Text.color(locale: locale)),
      );
    });

    test('returns an answer', () {
      expect(
        TextData.locale(Locale.en).answers,
        contains(Text.answer()),
      );

      final locale = Locale.ru;
      expect(
        TextData.locale(locale).answers,
        contains(Text.answer(locale: locale)),
      );
    });
  });
}

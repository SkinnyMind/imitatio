import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/text.dart';
import 'package:test/test.dart';

void main() {
  group('Text', () {
    const text = Text();
    test('returns list of words', () {
      expect(text.words().length, 5);
      expect(text.words(quantity: 1).length, 1);
    });

    test('returns word', () {
      expect(TextData.wordsNormal.contains(text.word()), true);
    });
  });
}

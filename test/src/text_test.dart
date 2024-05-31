import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/text.dart';
import 'package:test/test.dart';

void main() {
  group('Text', () {
    test('returns list of words', () {
      expect(Text.words().length, 5);
      expect(Text.words(quantity: 1).length, 1);
    });

    test('returns word', () {
      expect(TextData.wordsNormal.contains(Text.word()), true);
    });
  });
}

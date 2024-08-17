import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Choice', () {
    const choice = Choice();
    const seededChoice = Choice(seed: 1);

    test('randomly chooses from provided list', () {
      expect(choice.choose(items: ['a', 'b', 'c']).length, equals(1));
      expect(
        choice.choose(items: ['a', 'b', 'c'], length: 5).length,
        equals(5),
      );
      final uniqueResult = choice.choose(
        items: ['a', 'b', 'c', 'd', 'c', 'b', 'a'],
        length: 4,
        unique: true,
      );
      expect(uniqueResult.length, equals(4));
      expect(uniqueResult, equals(uniqueResult.toSet()));

      expect(
        seededChoice.choose(items: ['a', 'b', 'c'], length: 5),
        equals(seededChoice.choose(items: ['a', 'b', 'c'], length: 5)),
      );
    });

    test('throws when trying to choose with invalid length', () {
      expect(() => choice.choose(items: [], length: -1), throwsArgumentError);
    });

    test(
      'throws when trying to choose unique elements and there is not enough '
      'of them to provide the specified length',
      () {
        expect(
          () => choice.choose(items: ['a', 'b'], length: 3, unique: true),
          throwsArgumentError,
        );
      },
    );
  });
}

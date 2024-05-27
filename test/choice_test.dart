import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Choice', () {
    test('randomly chooses from provided list', () {
      expect(Choice.choose(items: ['a', 'b', 'c']).length, 1);
      expect(Choice.choose(items: ['a', 'b', 'c'], length: 5).length, 5);
      final uniqueResult = Choice.choose(
        items: ['a', 'b', 'c', 'd', 'c', 'b', 'a'],
        length: 4,
        unique: true,
      );
      expect(uniqueResult.length, 4);
      expect(uniqueResult, uniqueResult.toSet());
    });

    test('throws when trying to choose with invalid length', () {
      expect(
        () => Choice.choose(items: [], length: -1),
        throwsA(isA<ArgumentError>()),
      );
    });

    test(
      'throws when trying to choose unique elements and there is not enough '
      'of them to provide the specified length',
      () {
        expect(
          () => Choice.choose(items: ['a', 'b'], length: 3, unique: true),
          throwsA(isA<ArgumentError>()),
        );
      },
    );
  });
}

import 'package:imitatio/src/util.dart';
import 'package:test/test.dart';

void main() {
  group('Util', () {
    test('returns list of randomly picked strings', () {
      const list = ['one', 'two', 'three', 'four'];
      final picked = Util.pickN(list: list, n: 2);

      expect(picked.length, 2);
      for (final pick in picked) {
        expect(list.contains(pick), true);
      }
    });
  });
}

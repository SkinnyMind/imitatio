import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Date', () {
    const date = Date();
    test('returns date', () {
      final currentYear = DateTime.now().year;
      final result = date.date(start: currentYear);
      expect(int.parse(result.split('-')[0]), currentYear);
    });
  });
}

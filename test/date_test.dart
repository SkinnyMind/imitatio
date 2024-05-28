import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/date.dart';
import 'package:test/test.dart';

void main() {
  group('Date', () {
    test('returns date', () {
      final currentYear = DateTime.now().year;
      final result = Date.date(start: currentYear);
      expect(int.parse(result.split('-')[0]), currentYear);
    });

    test('returns day of the week', () {
      final result = Date.dayOfWeek();
      final data = DateData.locale[Locale.en.name]!.day['name']!;
      expect(data.contains(result), true);

      for (final locale in Locale.values) {
        final result = Date.dayOfWeek(locale: locale);
        final data = DateData.locale[locale.name]!.day['name']!;
        expect(data.contains(result), true);
      }
    });

    test('returns abbreviated day of the week', () {
      final result = Date.dayOfWeek(isAbbr: true);
      final data = DateData.locale[Locale.en.name]!.day['abbr']!;
      expect(data.contains(result), true);

      for (final locale in Locale.values) {
        final result = Date.dayOfWeek(isAbbr: true, locale: locale);
        final data = DateData.locale[locale.name]!.day['abbr']!;
        expect(data.contains(result), true);
      }
    });
  });
}

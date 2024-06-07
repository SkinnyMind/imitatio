import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/date.dart';
import 'package:imitatio/src/datasets/international/date.dart';
import 'package:test/test.dart';

void main() {
  group('Date', () {
    test('returns date', () {
      final currentYear = DateTime.now().year;
      final result = Date.date(start: currentYear);
      expect(int.parse(result.split('-')[0]), currentYear);
    });

    test('returns day of the week', () {
      expect(
        DateData.locale(Locale.en).days(isAbbr: false),
        contains(Date.dayOfWeek()),
      );

      final locale = Locale.ru;
      expect(
        DateData.locale(locale).days(isAbbr: false),
        contains(Date.dayOfWeek(locale: locale)),
      );
    });

    test('returns abbreviated day of the week', () {
      expect(
        DateData.locale(Locale.en).days(isAbbr: true),
        contains(Date.dayOfWeek(isAbbr: true)),
      );
    });

    test('returns a year', () {
      final currentYear = DateTime.now().year;
      final defaultResult = Date.year();
      expect((defaultResult >= 1990) && (defaultResult <= currentYear), true);

      final min = 1800;
      final max = 2000;
      final minMaxResult = Date.year(min: min, max: max);
      expect((minMaxResult >= min) && (minMaxResult <= max), true);
    });

    test('returns a week number with year', () {
      final currentYear = DateTime.now().year;
      final defaultResult = Date.weekDate();
      final splitDefault =
          defaultResult.replaceFirst('-', ' ').replaceFirst('W', '').split(' ');
      final (year, week) =
          (int.parse(splitDefault[0]), int.parse(splitDefault[1]));
      expect((year >= 2017) && (year <= currentYear), true);
      expect((week >= 1) && (week <= 52), true);

      final start = 1800;
      final end = 2000;
      final minMaxResult = Date.weekDate(start: start, end: end);
      final splitMinMax =
          minMaxResult.replaceFirst('-', ' ').replaceFirst('W', '').split(' ');
      final (minMaxYear, minMaxWeek) =
          (int.parse(splitMinMax[0]), int.parse(splitMinMax[1]));
      expect((minMaxYear >= start) && (minMaxYear <= end), true);
      expect((minMaxWeek >= 1) && (minMaxWeek <= 52), true);
    });

    test('returns name of the month', () {
      expect(
        DateData.locale(Locale.en).months(isAbbr: false),
        contains(Date.month()),
      );

      final locale = Locale.ru;
      expect(
        DateData.locale(locale).months(isAbbr: false),
        contains(Date.month(locale: locale)),
      );
    });

    test('returns abbreviated name of the month', () {
      expect(
        DateData.locale(Locale.en).months(isAbbr: true),
        contains(Date.month(isAbbr: true)),
      );
    });

    test('returns century', () {
      expect(
        IntDateData.romanNums,
        contains(Date.century()),
      );
    });

    test('returns periodicity', () {
      expect(
        DateData.locale(Locale.en).periodicities,
        contains(Date.periodicity()),
      );

      final locale = Locale.ru;
      expect(
        DateData.locale(locale).periodicities,
        contains(Date.periodicity(locale: locale)),
      );
    });

    test('returns day of month', () {
      final result = Date.dayOfMonth();
      expect((result >= 1) && (result <= 31), true);
    });

    test('returns random timezone', () {
      expect(Date.timezone(), isNotEmpty);
    });

    test('returns random timezone for provided region', () {
      final region = TimezoneRegion.europe;
      expect(
        IntDateData.timezones(region),
        contains(Date.timezone(region: region)),
      );
    });

    test('returns GMT offset value', () {
      expect(
        IntDateData.gmtOffsets,
        contains(Date.gmtOffset()),
      );
    });
  });
}

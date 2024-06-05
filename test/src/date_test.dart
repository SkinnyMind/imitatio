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
      final noarg = Date.dayOfWeek();
      final data = DateData.locale(Locale.en).days(isAbbr: false);
      expect(data.contains(noarg), true);

      final locale = Locale.ru;
      final withLocale = Date.dayOfWeek(locale: locale);
      final localeData = DateData.locale(locale).days(isAbbr: false);
      expect(localeData.contains(withLocale), true);
    });

    test('returns abbreviated day of the week', () {
      final result = Date.dayOfWeek(isAbbr: true);
      final data = DateData.locale(Locale.en).days(isAbbr: true);
      expect(data.contains(result), true);
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
      final noarg = Date.month();
      final data = DateData.locale(Locale.en).months(isAbbr: false);
      expect(data.contains(noarg), true);

      final locale = Locale.ru;
      final withLocale = Date.month(locale: locale);
      final localeData = DateData.locale(locale).months(isAbbr: false);
      expect(localeData.contains(withLocale), true);
    });

    test('returns abbreviated name of the month', () {
      final result = Date.month(isAbbr: true);
      final data = DateData.locale(Locale.en).months(isAbbr: true);
      expect(data.contains(result), true);
    });

    test('returns century', () {
      final result = Date.century();
      expect(IntDateData.romanNums.contains(result), true);
    });

    test('returns periodicity', () {
      final noarg = Date.periodicity();
      final data = DateData.locale(Locale.en).periodicities;
      expect(data.contains(noarg), true);

      final locale = Locale.ru;
      final withLocale = Date.periodicity(locale: locale);
      final localeData = DateData.locale(locale).periodicities;
      expect(localeData.contains(withLocale), true);
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
      final result = Date.timezone(region: region);
      final data = IntDateData.timezones(region);
      expect(data.contains(result), true);
    });

    test('returns GMT offset value', () {
      final result = Date.gmtOffset();
      expect(IntDateData.gmtOffsets.contains(result), true);
    });
  });
}

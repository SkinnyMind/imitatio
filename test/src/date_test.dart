import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/date.dart';
import 'package:imitatio/src/datasets/international/date.dart';
import 'package:test/test.dart';

void main() {
  group('Date', () {
    const date = Date();
    const locale = Locale.ru;
    const localeDate = Date(locale: locale);
    const seededDate = Date(seed: 1);

    test('returns date', () {
      final currentYear = DateTime.now().year;
      final result = date.date(start: currentYear);
      expect(int.parse(result.split('-')[0]), equals(currentYear));
      expect(seededDate.date(), equals(seededDate.date()));
    });

    test('throws when trying to return date in wrong range', () {
      expect(() => date.date(start: 2420, end: 2000), throwsRangeError);
      expect(() => date.date(start: -1, end: -10), throwsRangeError);
    });

    test('returns formatted date', () {
      final currentYear = DateTime.now().year;
      final result = date.formattedDate(start: currentYear);
      final splitResult = result.split('/');
      expect(splitResult.length, equals(3));
      expect(splitResult.last, equals(currentYear.toString()));
      expect(seededDate.formattedDate(), equals(seededDate.formattedDate()));
    });

    test('throws when trying to return formatted date in wrong range', () {
      expect(
        () => date.formattedDate(start: 2420, end: 2000),
        throwsRangeError,
      );
      expect(() => date.formattedDate(start: -1, end: -10), throwsRangeError);
    });

    test('returns time', () {
      final result = date.time;
      expect(result.split(':').length, equals(3));
      expect(result.split(':')[0].length, equals(2));
      expect(seededDate.time, equals(seededDate.time));
    });

    test('returns formatted time', () {
      final result = date.formattedTime;
      expect(result.split(':').length, equals(3));
      expect(result.split(':')[0].length, equals(2));
      expect(seededDate.formattedTime, equals(seededDate.formattedTime));
    });

    test('returns DateTime', () {
      final result = date.dateTime();
      expect(result, isA<DateTime>());
    });

    test('returns day of the week', () {
      expect(
        DateData.locale(Locale.en).days(isAbbr: false),
        contains(date.dayOfWeek()),
      );

      expect(
        DateData.locale(locale).days(isAbbr: false),
        contains(localeDate.dayOfWeek()),
      );

      expect(seededDate.dayOfWeek(), equals(seededDate.dayOfWeek()));
    });

    test('returns abbreviated day of the week', () {
      expect(
        DateData.locale(Locale.en).days(isAbbr: true),
        contains(date.dayOfWeek(isAbbr: true)),
      );
    });

    test('returns a year', () {
      final currentYear = DateTime.now().year;
      final defaultResult = date.year();
      expect(defaultResult, inInclusiveRange(1990, currentYear));

      final min = 1800;
      final max = 2000;
      final minMaxResult = date.year(min: min, max: max);
      expect(minMaxResult, inInclusiveRange(min, max));

      expect(seededDate.year(), equals(seededDate.year()));
    });

    test('throws when trying to return year in wrong range', () {
      expect(() => date.year(min: 2420, max: 2000), throwsRangeError);
      expect(() => date.year(min: -1, max: -10), throwsRangeError);
    });

    test('returns a week number with year', () {
      final currentYear = DateTime.now().year;
      final defaultResult = date.weekDate();
      final splitDefault = defaultResult
          .replaceFirst('-', ' ')
          .replaceFirst('W', '')
          .split(' ');
      final (year, week) = (
        int.parse(splitDefault[0]),
        int.parse(splitDefault[1]),
      );
      expect(year, inInclusiveRange(2017, currentYear));
      expect(week, inInclusiveRange(1, 52));

      final start = 1800;
      final end = 2000;
      final minMaxResult = date.weekDate(start: start, end: end);
      final splitMinMax = minMaxResult
          .replaceFirst('-', ' ')
          .replaceFirst('W', '')
          .split(' ');
      final (minMaxYear, minMaxWeek) = (
        int.parse(splitMinMax[0]),
        int.parse(splitMinMax[1]),
      );
      expect(minMaxYear, inInclusiveRange(start, end));
      expect(minMaxWeek, inInclusiveRange(1, 52));

      expect(seededDate.weekDate(), equals(seededDate.weekDate()));
    });

    test('throws when trying to return weekDate in wrong range', () {
      expect(() => date.weekDate(start: 2420, end: 2000), throwsRangeError);
      expect(() => date.weekDate(start: -1, end: -10), throwsRangeError);
    });

    test('returns name of the month', () {
      expect(
        DateData.locale(Locale.en).months(isAbbr: false),
        contains(date.month()),
      );

      expect(
        DateData.locale(locale).months(isAbbr: false),
        contains(localeDate.month()),
      );

      expect(seededDate.month(), equals(seededDate.month()));
    });

    test('returns abbreviated name of the month', () {
      expect(
        DateData.locale(Locale.en).months(isAbbr: true),
        contains(date.month(isAbbr: true)),
      );
    });

    test('returns century', () {
      expect(IntDateData.romanNums, contains(date.century));
      expect(seededDate.century, equals(seededDate.century));
    });

    test('returns periodicity', () {
      expect(
        DateData.locale(Locale.en).periodicities,
        contains(date.periodicity),
      );

      expect(
        DateData.locale(locale).periodicities,
        contains(localeDate.periodicity),
      );

      expect(seededDate.periodicity, equals(seededDate.periodicity));
    });

    test('returns day of month', () {
      final result = date.dayOfMonth;
      expect(result, inInclusiveRange(1, 31));
      expect(seededDate.dayOfMonth, equals(seededDate.dayOfMonth));
    });

    test('returns random timezone', () {
      expect(date.timezone(), isNotEmpty);
      expect(seededDate.timezone(), equals(seededDate.timezone()));
    });

    test('returns random timezone for provided region', () {
      final region = TimezoneRegion.europe;
      expect(
        IntDateData.timezones(region),
        contains(date.timezone(region: region)),
      );
    });

    test('returns GMT offset value', () {
      expect(IntDateData.gmtOffsets, contains(date.gmtOffset));
      expect(seededDate.gmtOffset, equals(seededDate.gmtOffset));
    });
  });
}

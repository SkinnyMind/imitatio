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
      expect(int.parse(result.split('-')[0]), currentYear);
      expect(seededDate.date(), equals(seededDate.date()));
    });

    test('throws when trying to return date in wrong range', () {
      expect(
        () => date.date(start: 2420, end: 2000),
        throwsA(isA<RangeError>()),
      );

      expect(
        () => date.date(start: -1, end: -10),
        throwsA(isA<RangeError>()),
      );
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

      expect(
        seededDate.dayOfWeek(),
        equals(seededDate.dayOfWeek()),
      );
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
      expect((defaultResult >= 1990) && (defaultResult <= currentYear), true);

      final min = 1800;
      final max = 2000;
      final minMaxResult = date.year(min: min, max: max);
      expect((minMaxResult >= min) && (minMaxResult <= max), true);

      expect(
        seededDate.year(),
        equals(seededDate.year()),
      );
    });

    test('throws when trying to return year in wrong range', () {
      expect(
        () => date.year(min: 2420, max: 2000),
        throwsA(isA<RangeError>()),
      );

      expect(
        () => date.year(min: -1, max: -10),
        throwsA(isA<RangeError>()),
      );
    });

    test('returns a week number with year', () {
      final currentYear = DateTime.now().year;
      final defaultResult = date.weekDate();
      final splitDefault =
          defaultResult.replaceFirst('-', ' ').replaceFirst('W', '').split(' ');
      final (year, week) =
          (int.parse(splitDefault[0]), int.parse(splitDefault[1]));
      expect((year >= 2017) && (year <= currentYear), true);
      expect((week >= 1) && (week <= 52), true);

      final start = 1800;
      final end = 2000;
      final minMaxResult = date.weekDate(start: start, end: end);
      final splitMinMax =
          minMaxResult.replaceFirst('-', ' ').replaceFirst('W', '').split(' ');
      final (minMaxYear, minMaxWeek) =
          (int.parse(splitMinMax[0]), int.parse(splitMinMax[1]));
      expect((minMaxYear >= start) && (minMaxYear <= end), true);
      expect((minMaxWeek >= 1) && (minMaxWeek <= 52), true);

      expect(
        seededDate.weekDate(),
        equals(seededDate.weekDate()),
      );
    });

    test('throws when trying to return weekDate in wrong range', () {
      expect(
        () => date.weekDate(start: 2420, end: 2000),
        throwsA(isA<RangeError>()),
      );

      expect(
        () => date.weekDate(start: -1, end: -10),
        throwsA(isA<RangeError>()),
      );
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

      expect(
        seededDate.month(),
        equals(seededDate.month()),
      );
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

      expect(
        seededDate.periodicity,
        equals(seededDate.periodicity),
      );
    });

    test('returns day of month', () {
      final result = date.dayOfMonth;
      expect((result >= 1) && (result <= 31), true);
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

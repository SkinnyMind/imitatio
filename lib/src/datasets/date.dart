import 'package:imitatio/src/datasets/en/date.dart';
import 'package:imitatio/src/datasets/models/date.dart';
import 'package:imitatio/src/datasets/ru/date.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the date.
class DateData {
  const DateData._();

  static DateDataset locale(Locale locale) {
    return switch (locale) {
      Locale.en => EnDateData(),
      Locale.ru => RuDateData(),
    };
  }
}

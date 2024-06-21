import 'package:imitatio/src/datasets/cs/date.dart';
import 'package:imitatio/src/datasets/da/date.dart';
import 'package:imitatio/src/datasets/de/date.dart';
import 'package:imitatio/src/datasets/de_at/date.dart';
import 'package:imitatio/src/datasets/de_ch/date.dart';
import 'package:imitatio/src/datasets/en/date.dart';
import 'package:imitatio/src/datasets/models/date.dart';
import 'package:imitatio/src/datasets/ru/date.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the date.
class DateData {
  const DateData._();

  static DateDataset locale(Locale locale) {
    return switch (locale) {
      Locale.cs => CsDateData(),
      Locale.da => DaDateData(),
      Locale.de_at => DeAtDateData(),
      Locale.de_ch => DeChDateData(),
      Locale.de => DeDateData(),
      Locale.en => EnDateData(),
      Locale.ru => RuDateData(),
    };
  }
}

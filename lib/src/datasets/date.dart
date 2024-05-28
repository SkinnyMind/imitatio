import 'package:imitatio/src/datasets/en/date.dart';
import 'package:imitatio/src/datasets/models/date.dart';
import 'package:imitatio/src/datasets/ru/date.dart';

/// Provides all data related to the date.
class DateData {
  const DateData._();

  static Map<String, DateDataset> locale = {
    'en': EnDateData(),
    'ru': RuDateData(),
  };
}

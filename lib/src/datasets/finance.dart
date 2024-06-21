import 'package:imitatio/src/datasets/cs/finance.dart';
import 'package:imitatio/src/datasets/da/finance.dart';
import 'package:imitatio/src/datasets/de_at/finance.dart';
import 'package:imitatio/src/datasets/de_ch/finance.dart';
import 'package:imitatio/src/datasets/en/finance.dart';
import 'package:imitatio/src/datasets/models/finance.dart';
import 'package:imitatio/src/datasets/ru/finance.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the finance.
class FinanceData {
  const FinanceData._();

  static FinanceDataset locale(Locale locale) {
    return switch (locale) {
      Locale.cs => CsFinanceData(),
      Locale.da => DaFinanceData(),
      Locale.de_at => DeAtFinanceData(),
      Locale.de_ch => DeChFinanceData(),
      Locale.en => EnFinanceData(),
      Locale.ru => RuFinanceData(),
    };
  }
}

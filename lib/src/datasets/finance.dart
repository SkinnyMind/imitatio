import 'package:imitatio/src/datasets/cs/finance.dart';
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
      Locale.en => EnFinanceData(),
      Locale.ru => RuFinanceData(),
    };
  }
}

import 'package:imitatio/src/datasets/cs/finance.dart';
import 'package:imitatio/src/datasets/da/finance.dart';
import 'package:imitatio/src/datasets/de/finance.dart';
import 'package:imitatio/src/datasets/de_at/finance.dart';
import 'package:imitatio/src/datasets/de_ch/finance.dart';
import 'package:imitatio/src/datasets/el/finance.dart';
import 'package:imitatio/src/datasets/en/finance.dart';
import 'package:imitatio/src/datasets/en_au/finance.dart';
import 'package:imitatio/src/datasets/en_ca/finance.dart';
import 'package:imitatio/src/datasets/en_gb/finance.dart';
import 'package:imitatio/src/datasets/es/finance.dart';
import 'package:imitatio/src/datasets/es_mx/finance.dart';
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
      Locale.de => DeFinanceData(),
      Locale.el => ElFinanceData(),
      Locale.en_au => EnAuFinanceData(),
      Locale.en_ca => EnCaFinanceData(),
      Locale.en_gb => EnGbFinanceData(),
      Locale.en => EnFinanceData(),
      Locale.es_mx => EsMxFinanceData(),
      Locale.es => EsFinanceData(),
      Locale.ru => RuFinanceData(),
    };
  }
}

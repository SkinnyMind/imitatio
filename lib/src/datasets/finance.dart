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
import 'package:imitatio/src/datasets/et/finance.dart';
import 'package:imitatio/src/datasets/fa/finance.dart';
import 'package:imitatio/src/datasets/fi/finance.dart';
import 'package:imitatio/src/datasets/fr/finance.dart';
import 'package:imitatio/src/datasets/hr/finance.dart';
import 'package:imitatio/src/datasets/hu/finance.dart';
import 'package:imitatio/src/datasets/isl/finance.dart';
import 'package:imitatio/src/datasets/it/finance.dart';
import 'package:imitatio/src/datasets/ja/finance.dart';
import 'package:imitatio/src/datasets/kk/finance.dart';
import 'package:imitatio/src/datasets/ko/finance.dart';
import 'package:imitatio/src/datasets/models/finance.dart';
import 'package:imitatio/src/datasets/nl/finance.dart';
import 'package:imitatio/src/datasets/nl_be/finance.dart';
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
      Locale.et => EtFinanceData(),
      Locale.fa => FaFinanceData(),
      Locale.fi => FiFinanceData(),
      Locale.fr => FrFinanceData(),
      Locale.hr => HrFinanceData(),
      Locale.hu => HuFinanceData(),
      Locale.isl => IslFinanceData(),
      Locale.it => ItFinanceData(),
      Locale.ja => JaFinanceData(),
      Locale.kk => KkFinanceData(),
      Locale.ko => KoFinanceData(),
      Locale.nl_be => NlBeFinanceData(),
      Locale.nl => NlFinanceData(),
      Locale.ru => RuFinanceData(),
    };
  }
}

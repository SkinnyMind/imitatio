import 'package:imitatio/src/datasets/ar_ae/finance.dart';
import 'package:imitatio/src/datasets/ar_dz/finance.dart';
import 'package:imitatio/src/datasets/ar_eg/finance.dart';
import 'package:imitatio/src/datasets/ar_jo/finance.dart';
import 'package:imitatio/src/datasets/ar_kw/finance.dart';
import 'package:imitatio/src/datasets/ar_ma/finance.dart';
import 'package:imitatio/src/datasets/ar_om/finance.dart';
import 'package:imitatio/src/datasets/ar_qa/finance.dart';
import 'package:imitatio/src/datasets/ar_sa/finance.dart';
import 'package:imitatio/src/datasets/ar_tn/finance.dart';
import 'package:imitatio/src/datasets/ar_ye/finance.dart';
import 'package:imitatio/src/datasets/at_sy/finance.dart';
import 'package:imitatio/src/datasets/az/finance.dart';
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
import 'package:imitatio/src/datasets/no/finance.dart';
import 'package:imitatio/src/datasets/pl/finance.dart';
import 'package:imitatio/src/datasets/pt/finance.dart';
import 'package:imitatio/src/datasets/pt_br/finance.dart';
import 'package:imitatio/src/datasets/ru/finance.dart';
import 'package:imitatio/src/datasets/sk/finance.dart';
import 'package:imitatio/src/datasets/sv/finance.dart';
import 'package:imitatio/src/datasets/tr/finance.dart';
import 'package:imitatio/src/datasets/uk/finance.dart';
import 'package:imitatio/src/datasets/zh/finance.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the finance.
class FinanceData {
  const FinanceData._();

  static FinanceDataset locale(Locale locale) {
    return switch (locale) {
      Locale.ar_ae => ArAeFinanceData(),
      Locale.ar_dz => ArDzFinanceData(),
      Locale.ar_eg => ArEgFinanceData(),
      Locale.ar_jo => ArJoFinanceData(),
      Locale.ar_kw => ArKwFinanceData(),
      Locale.ar_ma => ArMaFinanceData(),
      Locale.ar_om => ArOmFinanceData(),
      Locale.ar_qa => ArQaFinanceData(),
      Locale.ar_sa => ArSaFinanceData(),
      Locale.ar_sy => ArSyFinanceData(),
      Locale.ar_tn => ArTnFinanceData(),
      Locale.ar_ye => ArYeFinanceData(),
      Locale.az => AzFinanceData(),
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
      Locale.no => NoFinanceData(),
      Locale.pl => PlFinanceData(),
      Locale.pt_br => PtBrFinanceData(),
      Locale.pt => PtFinanceData(),
      Locale.ru => RuFinanceData(),
      Locale.sk => SkFinanceData(),
      Locale.sv => SvFinanceData(),
      Locale.tr => TrFinanceData(),
      Locale.uk => UkFinanceData(),
      Locale.zh => ZhFinanceData(),
    };
  }
}

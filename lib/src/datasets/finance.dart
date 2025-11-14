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
      .ar_ae => ArAeFinanceData(),
      .ar_dz => ArDzFinanceData(),
      .ar_eg => ArEgFinanceData(),
      .ar_jo => ArJoFinanceData(),
      .ar_kw => ArKwFinanceData(),
      .ar_ma => ArMaFinanceData(),
      .ar_om => ArOmFinanceData(),
      .ar_qa => ArQaFinanceData(),
      .ar_sa => ArSaFinanceData(),
      .ar_sy => ArSyFinanceData(),
      .ar_tn => ArTnFinanceData(),
      .ar_ye => ArYeFinanceData(),
      .az => AzFinanceData(),
      .cs => CsFinanceData(),
      .da => DaFinanceData(),
      .de_at => DeAtFinanceData(),
      .de_ch => DeChFinanceData(),
      .de => DeFinanceData(),
      .el => ElFinanceData(),
      .en_au => EnAuFinanceData(),
      .en_ca => EnCaFinanceData(),
      .en_gb => EnGbFinanceData(),
      .en => EnFinanceData(),
      .es_mx => EsMxFinanceData(),
      .es => EsFinanceData(),
      .et => EtFinanceData(),
      .fa => FaFinanceData(),
      .fi => FiFinanceData(),
      .fr => FrFinanceData(),
      .hr => HrFinanceData(),
      .hu => HuFinanceData(),
      .isl => IslFinanceData(),
      .it => ItFinanceData(),
      .ja => JaFinanceData(),
      .kk => KkFinanceData(),
      .ko => KoFinanceData(),
      .nl_be => NlBeFinanceData(),
      .nl => NlFinanceData(),
      .no => NoFinanceData(),
      .pl => PlFinanceData(),
      .pt_br => PtBrFinanceData(),
      .pt => PtFinanceData(),
      .ru => RuFinanceData(),
      .sk => SkFinanceData(),
      .sv => SvFinanceData(),
      .tr => TrFinanceData(),
      .uk => UkFinanceData(),
      .zh => ZhFinanceData(),
    };
  }
}

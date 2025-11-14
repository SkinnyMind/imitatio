import 'package:imitatio/src/datasets/ar_ae/date.dart';
import 'package:imitatio/src/datasets/ar_dz/date.dart';
import 'package:imitatio/src/datasets/ar_eg/date.dart';
import 'package:imitatio/src/datasets/ar_jo/date.dart';
import 'package:imitatio/src/datasets/ar_kw/date.dart';
import 'package:imitatio/src/datasets/ar_ma/date.dart';
import 'package:imitatio/src/datasets/ar_om/date.dart';
import 'package:imitatio/src/datasets/ar_qa/date.dart';
import 'package:imitatio/src/datasets/ar_sa/date.dart';
import 'package:imitatio/src/datasets/ar_tn/date.dart';
import 'package:imitatio/src/datasets/ar_ye/date.dart';
import 'package:imitatio/src/datasets/at_sy/date.dart';
import 'package:imitatio/src/datasets/az/date.dart';
import 'package:imitatio/src/datasets/cs/date.dart';
import 'package:imitatio/src/datasets/da/date.dart';
import 'package:imitatio/src/datasets/de/date.dart';
import 'package:imitatio/src/datasets/de_at/date.dart';
import 'package:imitatio/src/datasets/de_ch/date.dart';
import 'package:imitatio/src/datasets/el/date.dart';
import 'package:imitatio/src/datasets/en/date.dart';
import 'package:imitatio/src/datasets/en_au/date.dart';
import 'package:imitatio/src/datasets/en_ca/date.dart';
import 'package:imitatio/src/datasets/en_gb/date.dart';
import 'package:imitatio/src/datasets/es/date.dart';
import 'package:imitatio/src/datasets/es_mx/date.dart';
import 'package:imitatio/src/datasets/et/date.dart';
import 'package:imitatio/src/datasets/fa/date.dart';
import 'package:imitatio/src/datasets/fi/date.dart';
import 'package:imitatio/src/datasets/fr/date.dart';
import 'package:imitatio/src/datasets/hr/date.dart';
import 'package:imitatio/src/datasets/hu/date.dart';
import 'package:imitatio/src/datasets/isl/date.dart';
import 'package:imitatio/src/datasets/it/date.dart';
import 'package:imitatio/src/datasets/ja/date.dart';
import 'package:imitatio/src/datasets/kk/date.dart';
import 'package:imitatio/src/datasets/ko/date.dart';
import 'package:imitatio/src/datasets/models/date.dart';
import 'package:imitatio/src/datasets/nl/date.dart';
import 'package:imitatio/src/datasets/nl_be/date.dart';
import 'package:imitatio/src/datasets/no/date.dart';
import 'package:imitatio/src/datasets/pl/date.dart';
import 'package:imitatio/src/datasets/pt/date.dart';
import 'package:imitatio/src/datasets/pt_br/date.dart';
import 'package:imitatio/src/datasets/ru/date.dart';
import 'package:imitatio/src/datasets/sk/date.dart';
import 'package:imitatio/src/datasets/sv/date.dart';
import 'package:imitatio/src/datasets/tr/date.dart';
import 'package:imitatio/src/datasets/uk/date.dart';
import 'package:imitatio/src/datasets/zh/date.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the date.
class DateData {
  const DateData._();

  static DateDataset locale(Locale locale) {
    return switch (locale) {
      .ar_ae => ArAeDateData(),
      .ar_dz => ArDzDateData(),
      .ar_eg => ArEgDateData(),
      .ar_jo => ArJoDateData(),
      .ar_kw => ArKwDateData(),
      .ar_ma => ArMaDateData(),
      .ar_om => ArOmDateData(),
      .ar_qa => ArQaDateData(),
      .ar_sa => ArSaDateData(),
      .ar_sy => ArSyDateData(),
      .ar_tn => ArTnDateData(),
      .ar_ye => ArYeDateData(),
      .az => AzDateData(),
      .cs => CsDateData(),
      .da => DaDateData(),
      .de_at => DeAtDateData(),
      .de_ch => DeChDateData(),
      .de => DeDateData(),
      .el => ElDateData(),
      .en_au => EnAuDateData(),
      .en_ca => EnCaDateData(),
      .en_gb => EnGbDateData(),
      .en => EnDateData(),
      .es_mx => EsMxDateData(),
      .es => EsDateData(),
      .et => EtDateData(),
      .fa => FaDateData(),
      .fi => FiDateData(),
      .fr => FrDateData(),
      .hr => HrDateData(),
      .hu => HuDateData(),
      .isl => IslDateData(),
      .it => ItDateData(),
      .ja => JaDateData(),
      .kk => KkDateData(),
      .ko => KoDateData(),
      .nl_be => NlBeDateData(),
      .nl => NlDateData(),
      .no => NoDateData(),
      .pl => PlDateData(),
      .pt_br => PtBrDateData(),
      .pt => PtDateData(),
      .ru => RuDateData(),
      .sk => SkDateData(),
      .sv => SvDateData(),
      .tr => TrDateData(),
      .uk => UkDateData(),
      .zh => ZhDateData(),
    };
  }
}

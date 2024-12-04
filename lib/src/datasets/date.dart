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
      Locale.ar_ae => ArAeDateData(),
      Locale.ar_dz => ArDzDateData(),
      Locale.ar_eg => ArEgDateData(),
      Locale.ar_jo => ArJoDateData(),
      Locale.ar_kw => ArKwDateData(),
      Locale.ar_ma => ArMaDateData(),
      Locale.ar_om => ArOmDateData(),
      Locale.ar_qa => ArQaDateData(),
      Locale.ar_sa => ArSaDateData(),
      Locale.ar_sy => ArSyDateData(),
      Locale.ar_tn => ArTnDateData(),
      Locale.ar_ye => ArYeDateData(),
      Locale.az => AzDateData(),
      Locale.cs => CsDateData(),
      Locale.da => DaDateData(),
      Locale.de_at => DeAtDateData(),
      Locale.de_ch => DeChDateData(),
      Locale.de => DeDateData(),
      Locale.el => ElDateData(),
      Locale.en_au => EnAuDateData(),
      Locale.en_ca => EnCaDateData(),
      Locale.en_gb => EnGbDateData(),
      Locale.en => EnDateData(),
      Locale.es_mx => EsMxDateData(),
      Locale.es => EsDateData(),
      Locale.et => EtDateData(),
      Locale.fa => FaDateData(),
      Locale.fi => FiDateData(),
      Locale.fr => FrDateData(),
      Locale.hr => HrDateData(),
      Locale.hu => HuDateData(),
      Locale.isl => IslDateData(),
      Locale.it => ItDateData(),
      Locale.ja => JaDateData(),
      Locale.kk => KkDateData(),
      Locale.ko => KoDateData(),
      Locale.nl_be => NlBeDateData(),
      Locale.nl => NlDateData(),
      Locale.no => NoDateData(),
      Locale.pl => PlDateData(),
      Locale.pt_br => PtBrDateData(),
      Locale.pt => PtDateData(),
      Locale.ru => RuDateData(),
      Locale.sk => SkDateData(),
      Locale.sv => SvDateData(),
      Locale.tr => TrDateData(),
      Locale.uk => UkDateData(),
      Locale.zh => ZhDateData(),
    };
  }
}

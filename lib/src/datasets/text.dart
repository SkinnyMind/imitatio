import 'package:imitatio/src/datasets/ar_ae/text.dart';
import 'package:imitatio/src/datasets/ar_dz/text.dart';
import 'package:imitatio/src/datasets/ar_eg/text.dart';
import 'package:imitatio/src/datasets/ar_jo/text.dart';
import 'package:imitatio/src/datasets/ar_kw/text.dart';
import 'package:imitatio/src/datasets/ar_ma/text.dart';
import 'package:imitatio/src/datasets/ar_om/text.dart';
import 'package:imitatio/src/datasets/ar_qa/text.dart';
import 'package:imitatio/src/datasets/ar_sa/text.dart';
import 'package:imitatio/src/datasets/ar_tn/text.dart';
import 'package:imitatio/src/datasets/ar_ye/text.dart';
import 'package:imitatio/src/datasets/at_sy/text.dart';
import 'package:imitatio/src/datasets/az/text.dart';
import 'package:imitatio/src/datasets/cs/text.dart';
import 'package:imitatio/src/datasets/da/text.dart';
import 'package:imitatio/src/datasets/de/text.dart';
import 'package:imitatio/src/datasets/de_at/text.dart';
import 'package:imitatio/src/datasets/de_ch/text.dart';
import 'package:imitatio/src/datasets/el/text.dart';
import 'package:imitatio/src/datasets/en/text.dart';
import 'package:imitatio/src/datasets/en_au/text.dart';
import 'package:imitatio/src/datasets/en_ca/text.dart';
import 'package:imitatio/src/datasets/en_gb/text.dart';
import 'package:imitatio/src/datasets/es/text.dart';
import 'package:imitatio/src/datasets/es_mx/text.dart';
import 'package:imitatio/src/datasets/et/text.dart';
import 'package:imitatio/src/datasets/fa/text.dart';
import 'package:imitatio/src/datasets/fi/text.dart';
import 'package:imitatio/src/datasets/fr/text.dart';
import 'package:imitatio/src/datasets/hr/text.dart';
import 'package:imitatio/src/datasets/hu/text.dart';
import 'package:imitatio/src/datasets/isl/text.dart';
import 'package:imitatio/src/datasets/it/text.dart';
import 'package:imitatio/src/datasets/ja/text.dart';
import 'package:imitatio/src/datasets/kk/text.dart';
import 'package:imitatio/src/datasets/ko/text.dart';
import 'package:imitatio/src/datasets/models/text.dart';
import 'package:imitatio/src/datasets/nl/text.dart';
import 'package:imitatio/src/datasets/nl_be/text.dart';
import 'package:imitatio/src/datasets/no/text.dart';
import 'package:imitatio/src/datasets/pl/text.dart';
import 'package:imitatio/src/datasets/pt/text.dart';
import 'package:imitatio/src/datasets/pt_br/text.dart';
import 'package:imitatio/src/datasets/ru/text.dart';
import 'package:imitatio/src/datasets/sk/text.dart';
import 'package:imitatio/src/datasets/sv/text.dart';
import 'package:imitatio/src/datasets/tr/text.dart';
import 'package:imitatio/src/datasets/uk/text.dart';
import 'package:imitatio/src/datasets/zh/text.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the text.
class TextData {
  const TextData._();

  static TextDataset locale(Locale locale) {
    return switch (locale) {
      .ar_ae => ArAeTextData(),
      .ar_dz => ArDzTextData(),
      .ar_eg => ArEgTextData(),
      .ar_jo => ArJoTextData(),
      .ar_kw => ArKwTextData(),
      .ar_ma => ArMaTextData(),
      .ar_om => ArOmTextData(),
      .ar_qa => ArQaTextData(),
      .ar_sa => ArSaTextData(),
      .ar_sy => ArSyTextData(),
      .ar_tn => ArTnTextData(),
      .ar_ye => ArYeTextData(),
      .az => AzTextData(),
      .cs => CsTextData(),
      .da => DaTextData(),
      .de_at => DeAtTextData(),
      .de_ch => DeChTextData(),
      .de => DeTextData(),
      .el => ElTextData(),
      .en_au => EnAuTextData(),
      .en_ca => EnCaTextData(),
      .en_gb => EnGbTextData(),
      .en => EnTextData(),
      .es_mx => EsMxTextData(),
      .es => EsTextData(),
      .et => EtTextData(),
      .fa => FaTextData(),
      .fi => FiTextData(),
      .fr => FrTextData(),
      .hr => HrTextData(),
      .hu => HuTextData(),
      .isl => IslTextData(),
      .it => ItTextData(),
      .ja => JaTextData(),
      .kk => KkTextData(),
      .ko => KoTextData(),
      .nl_be => NlBeTextData(),
      .nl => NlTextData(),
      .no => NoTextData(),
      .pl => PlTextData(),
      .pt_br => PtBrTextData(),
      .pt => PtTextData(),
      .ru => RuTextData(),
      .sk => SkTextData(),
      .sv => SvTextData(),
      .tr => TrTextData(),
      .uk => UkTextData(),
      .zh => ZhTextData(),
    };
  }
}

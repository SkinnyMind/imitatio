import 'package:imitatio/src/datasets/ar_ae/text.dart';
import 'package:imitatio/src/datasets/ar_dz/text.dart';
import 'package:imitatio/src/datasets/ar_eg/text.dart';
import 'package:imitatio/src/datasets/ar_jo/text.dart';
import 'package:imitatio/src/datasets/ar_kw/text.dart';
import 'package:imitatio/src/datasets/ar_ma/text.dart';
import 'package:imitatio/src/datasets/ar_om/text.dart';
import 'package:imitatio/src/datasets/ar_qa/text.dart';
import 'package:imitatio/src/datasets/ar_sa/text.dart';
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
      Locale.ar_ae => ArAeTextData(),
      Locale.ar_dz => ArDzTextData(),
      Locale.ar_eg => ArEgTextData(),
      Locale.ar_jo => ArJoTextData(),
      Locale.ar_kw => ArKwTextData(),
      Locale.ar_ma => ArMaTextData(),
      Locale.ar_om => ArOmTextData(),
      Locale.ar_qa => ArQaTextData(),
      Locale.ar_sa => ArSaTextData(),
      Locale.az => AzTextData(),
      Locale.cs => CsTextData(),
      Locale.da => DaTextData(),
      Locale.de_at => DeAtTextData(),
      Locale.de_ch => DeChTextData(),
      Locale.de => DeTextData(),
      Locale.el => ElTextData(),
      Locale.en_au => EnAuTextData(),
      Locale.en_ca => EnCaTextData(),
      Locale.en_gb => EnGbTextData(),
      Locale.en => EnTextData(),
      Locale.es_mx => EsMxTextData(),
      Locale.es => EsTextData(),
      Locale.et => EtTextData(),
      Locale.fa => FaTextData(),
      Locale.fi => FiTextData(),
      Locale.fr => FrTextData(),
      Locale.hr => HrTextData(),
      Locale.hu => HuTextData(),
      Locale.isl => IslTextData(),
      Locale.it => ItTextData(),
      Locale.ja => JaTextData(),
      Locale.kk => KkTextData(),
      Locale.ko => KoTextData(),
      Locale.nl_be => NlBeTextData(),
      Locale.nl => NlTextData(),
      Locale.no => NoTextData(),
      Locale.pl => PlTextData(),
      Locale.pt_br => PtBrTextData(),
      Locale.pt => PtTextData(),
      Locale.ru => RuTextData(),
      Locale.sk => SkTextData(),
      Locale.sv => SvTextData(),
      Locale.tr => TrTextData(),
      Locale.uk => UkTextData(),
      Locale.zh => ZhTextData(),
    };
  }
}

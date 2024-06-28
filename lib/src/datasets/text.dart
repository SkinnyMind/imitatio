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
import 'package:imitatio/src/datasets/models/text.dart';
import 'package:imitatio/src/datasets/ru/text.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the text.
class TextData {
  const TextData._();

  static TextDataset locale(Locale locale) {
    return switch (locale) {
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
      Locale.ru => RuTextData(),
    };
  }
}

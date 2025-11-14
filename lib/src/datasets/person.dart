import 'package:imitatio/src/datasets/ar_ae/person.dart';
import 'package:imitatio/src/datasets/ar_dz/person.dart';
import 'package:imitatio/src/datasets/ar_eg/person.dart';
import 'package:imitatio/src/datasets/ar_jo/person.dart';
import 'package:imitatio/src/datasets/ar_kw/person.dart';
import 'package:imitatio/src/datasets/ar_ma/person.dart';
import 'package:imitatio/src/datasets/ar_om/person.dart';
import 'package:imitatio/src/datasets/ar_qa/person.dart';
import 'package:imitatio/src/datasets/ar_sa/person.dart';
import 'package:imitatio/src/datasets/ar_tn/person.dart';
import 'package:imitatio/src/datasets/ar_ye/person.dart';
import 'package:imitatio/src/datasets/at_sy/person.dart';
import 'package:imitatio/src/datasets/az/person.dart';
import 'package:imitatio/src/datasets/cs/person.dart';
import 'package:imitatio/src/datasets/da/person.dart';
import 'package:imitatio/src/datasets/de/person.dart';
import 'package:imitatio/src/datasets/de_at/person.dart';
import 'package:imitatio/src/datasets/de_ch/person.dart';
import 'package:imitatio/src/datasets/el/person.dart';
import 'package:imitatio/src/datasets/en/person.dart';
import 'package:imitatio/src/datasets/en_au/person.dart';
import 'package:imitatio/src/datasets/en_ca/person.dart';
import 'package:imitatio/src/datasets/en_gb/person.dart';
import 'package:imitatio/src/datasets/es/person.dart';
import 'package:imitatio/src/datasets/es_mx/person.dart';
import 'package:imitatio/src/datasets/et/person.dart';
import 'package:imitatio/src/datasets/fa/person.dart';
import 'package:imitatio/src/datasets/fi/person.dart';
import 'package:imitatio/src/datasets/fr/person.dart';
import 'package:imitatio/src/datasets/hr/person.dart';
import 'package:imitatio/src/datasets/hu/person.dart';
import 'package:imitatio/src/datasets/isl/person.dart';
import 'package:imitatio/src/datasets/it/person.dart';
import 'package:imitatio/src/datasets/ja/person.dart';
import 'package:imitatio/src/datasets/kk/person.dart';
import 'package:imitatio/src/datasets/ko/person.dart';
import 'package:imitatio/src/datasets/models/person.dart';
import 'package:imitatio/src/datasets/nl/person.dart';
import 'package:imitatio/src/datasets/nl_be/person.dart';
import 'package:imitatio/src/datasets/no/person.dart';
import 'package:imitatio/src/datasets/pl/person.dart';
import 'package:imitatio/src/datasets/pt/person.dart';
import 'package:imitatio/src/datasets/pt_br/person.dart';
import 'package:imitatio/src/datasets/ru/person.dart';
import 'package:imitatio/src/datasets/sk/person.dart';
import 'package:imitatio/src/datasets/sv/person.dart';
import 'package:imitatio/src/datasets/tr/person.dart';
import 'package:imitatio/src/datasets/uk/person.dart';
import 'package:imitatio/src/datasets/zh/person.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the person.
class PersonData {
  const PersonData._();

  static PersonDataset locale(Locale locale) {
    return switch (locale) {
      .ar_ae => ArAePersonData(),
      .ar_dz => ArDzPersonData(),
      .ar_eg => ArEgPersonData(),
      .ar_jo => ArJoPersonData(),
      .ar_kw => ArKwPersonData(),
      .ar_ma => ArMaPersonData(),
      .ar_om => ArOmPersonData(),
      .ar_qa => ArQaPersonData(),
      .ar_sa => ArSaPersonData(),
      .ar_sy => ArSyPersonData(),
      .ar_tn => ArTnPersonData(),
      .ar_ye => ArYePersonData(),
      .az => AzPersonData(),
      .cs => CsPersonData(),
      .da => DaPersonData(),
      .de_at => DeAtPersonData(),
      .de_ch => DeChPersonData(),
      .de => DePersonData(),
      .el => ElPersonData(),
      .en_au => EnAuPersonData(),
      .en_ca => EnCaPersonData(),
      .en_gb => EnGbPersonData(),
      .en => EnPersonData(),
      .es_mx => EsMxPersonData(),
      .es => EsPersonData(),
      .et => EtPersonData(),
      .fa => FaPersonData(),
      .fi => FiPersonData(),
      .fr => FrPersonData(),
      .hr => HrPersonData(),
      .hu => HuPersonData(),
      .isl => IslPersonData(),
      .it => ItPersonData(),
      .ja => JaPersonData(),
      .kk => KkPersonData(),
      .ko => KoPersonData(),
      .nl_be => NlBePersonData(),
      .nl => NlPersonData(),
      .no => NoPersonData(),
      .pl => PlPersonData(),
      .pt_br => PtBrPersonData(),
      .pt => PtPersonData(),
      .ru => RuPersonData(),
      .sk => SkPersonData(),
      .sv => SvPersonData(),
      .tr => TrPersonData(),
      .uk => UkPersonData(),
      .zh => ZhPersonData(),
    };
  }
}

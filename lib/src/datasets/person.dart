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
import 'package:imitatio/src/datasets/models/person.dart';
import 'package:imitatio/src/datasets/ru/person.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the person.
class PersonData {
  const PersonData._();

  static PersonDataset locale(Locale locale) {
    return switch (locale) {
      Locale.cs => CsPersonData(),
      Locale.da => DaPersonData(),
      Locale.de_at => DeAtPersonData(),
      Locale.de_ch => DeChPersonData(),
      Locale.de => DePersonData(),
      Locale.el => ElPersonData(),
      Locale.en_au => EnAuPersonData(),
      Locale.en_ca => EnCaPersonData(),
      Locale.en_gb => EnGbPersonData(),
      Locale.en => EnPersonData(),
      Locale.es_mx => EsMxPersonData(),
      Locale.es => EsPersonData(),
      Locale.et => EtPersonData(),
      Locale.fa => FaPersonData(),
      Locale.fi => FiPersonData(),
      Locale.fr => FrPersonData(),
      Locale.hr => HrPersonData(),
      Locale.hu => HuPersonData(),
      Locale.isl => IslPersonData(),
      Locale.it => ItPersonData(),
      Locale.ja => JaPersonData(),
      Locale.kk => KkPersonData(),
      Locale.ru => RuPersonData(),
    };
  }
}

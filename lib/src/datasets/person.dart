import 'package:imitatio/src/datasets/cs/person.dart';
import 'package:imitatio/src/datasets/da/person.dart';
import 'package:imitatio/src/datasets/de_at/person.dart';
import 'package:imitatio/src/datasets/de_ch/person.dart';
import 'package:imitatio/src/datasets/en/person.dart';
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
      Locale.en => EnPersonData(),
      Locale.ru => RuPersonData(),
    };
  }
}

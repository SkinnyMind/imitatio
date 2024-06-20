import 'package:imitatio/src/datasets/cs/person.dart';
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
      Locale.en => EnPersonData(),
      Locale.ru => RuPersonData(),
    };
  }
}

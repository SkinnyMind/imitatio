import 'package:imitatio/src/datasets/en/person.dart';
import 'package:imitatio/src/datasets/models/person.dart';
import 'package:imitatio/src/datasets/ru/person.dart';

/// Provides all data related to the person.
class PersonData {
  const PersonData._();

  static Map<String, PersonDataset> locale = {
    'en': EnPersonData(),
    'ru': RuPersonData(),
  };
}

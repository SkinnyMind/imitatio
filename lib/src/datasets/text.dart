import 'package:imitatio/src/datasets/en/text.dart';
import 'package:imitatio/src/datasets/models/text.dart';
import 'package:imitatio/src/datasets/ru/text.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the text.
class TextData {
  const TextData._();

  static TextDataset locale(Locale locale) {
    return switch (locale) {
      Locale.en => EnTextData(),
      Locale.ru => RuTextData(),
    };
  }
}

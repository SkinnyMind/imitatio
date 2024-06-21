import 'package:imitatio/src/datasets/cs/text.dart';
import 'package:imitatio/src/datasets/da/text.dart';
import 'package:imitatio/src/datasets/de/text.dart';
import 'package:imitatio/src/datasets/de_at/text.dart';
import 'package:imitatio/src/datasets/de_ch/text.dart';
import 'package:imitatio/src/datasets/en/text.dart';
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
      Locale.en => EnTextData(),
      Locale.ru => RuTextData(),
    };
  }
}

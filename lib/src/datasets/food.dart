import 'package:imitatio/src/datasets/cs/food.dart';
import 'package:imitatio/src/datasets/da/food.dart';
import 'package:imitatio/src/datasets/de/food.dart';
import 'package:imitatio/src/datasets/de_at/food.dart';
import 'package:imitatio/src/datasets/de_ch/food.dart';
import 'package:imitatio/src/datasets/el/food.dart';
import 'package:imitatio/src/datasets/en/food.dart';
import 'package:imitatio/src/datasets/en_au/food.dart';
import 'package:imitatio/src/datasets/en_ca/food.dart';
import 'package:imitatio/src/datasets/en_gb/food.dart';
import 'package:imitatio/src/datasets/es/food.dart';
import 'package:imitatio/src/datasets/es_mx/food.dart';
import 'package:imitatio/src/datasets/et/food.dart';
import 'package:imitatio/src/datasets/fa/food.dart';
import 'package:imitatio/src/datasets/fi/food.dart';
import 'package:imitatio/src/datasets/fr/food.dart';
import 'package:imitatio/src/datasets/hr/food.dart';
import 'package:imitatio/src/datasets/hu/food.dart';
import 'package:imitatio/src/datasets/isl/food.dart';
import 'package:imitatio/src/datasets/it/food.dart';
import 'package:imitatio/src/datasets/ja/food.dart';
import 'package:imitatio/src/datasets/models/food.dart';
import 'package:imitatio/src/datasets/ru/food.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the food.
class FoodData {
  const FoodData._();

  static FoodDataset locale(Locale locale) {
    return switch (locale) {
      Locale.cs => CsFoodData(),
      Locale.da => DaFoodData(),
      Locale.de_at => DeAtFoodData(),
      Locale.de_ch => DeChFoodData(),
      Locale.de => DeFoodData(),
      Locale.el => ElFoodData(),
      Locale.en_au => EnAuFoodData(),
      Locale.en_ca => EnCaFoodData(),
      Locale.en_gb => EnGbFoodData(),
      Locale.en => EnFoodData(),
      Locale.es_mx => EsMxFoodData(),
      Locale.es => EsFoodData(),
      Locale.et => EtFoodData(),
      Locale.fa => FaFoodData(),
      Locale.fi => FiFoodData(),
      Locale.fr => FrFoodData(),
      Locale.hr => HrFoodData(),
      Locale.hu => HuFoodData(),
      Locale.isl => IslFoodData(),
      Locale.it => ItFoodData(),
      Locale.ja => JaFoodData(),
      Locale.ru => RuFoodData(),
    };
  }
}

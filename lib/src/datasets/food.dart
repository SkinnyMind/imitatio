import 'package:imitatio/src/datasets/cs/food.dart';
import 'package:imitatio/src/datasets/da/food.dart';
import 'package:imitatio/src/datasets/de/food.dart';
import 'package:imitatio/src/datasets/de_at/food.dart';
import 'package:imitatio/src/datasets/de_ch/food.dart';
import 'package:imitatio/src/datasets/el/food.dart';
import 'package:imitatio/src/datasets/en/food.dart';
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
      Locale.en => EnFoodData(),
      Locale.ru => RuFoodData(),
    };
  }
}

import 'package:imitatio/src/datasets/cs/food.dart';
import 'package:imitatio/src/datasets/da/food.dart';
import 'package:imitatio/src/datasets/de_at/food.dart';
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
      Locale.en => EnFoodData(),
      Locale.ru => RuFoodData(),
    };
  }
}

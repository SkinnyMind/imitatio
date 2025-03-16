import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/food.dart';
import 'package:test/test.dart';

void main() {
  group('Food', () {
    const food = Food();
    const locale = Locale.ru;
    const localeFood = Food(locale: locale);
    const seededFood = Food(seed: 1);

    test('returns vegetable', () {
      expect(FoodData.locale(Locale.en).vegetables, contains(food.vegetable));

      expect(
        FoodData.locale(locale).vegetables,
        contains(localeFood.vegetable),
      );

      expect(seededFood.vegetable, equals(seededFood.vegetable));
    });

    test('returns fruit', () {
      expect(FoodData.locale(Locale.en).fruits, contains(food.fruit));

      expect(FoodData.locale(locale).fruits, contains(localeFood.fruit));

      expect(seededFood.fruit, equals(seededFood.fruit));
    });

    test('returns dish', () {
      expect(FoodData.locale(Locale.en).dishes, contains(food.dish));

      expect(FoodData.locale(locale).dishes, contains(localeFood.dish));

      expect(seededFood.dish, equals(seededFood.dish));
    });

    test('returns spice', () {
      expect(FoodData.locale(Locale.en).spices, contains(food.spice));

      expect(FoodData.locale(locale).spices, contains(localeFood.spice));

      expect(seededFood.spice, equals(seededFood.spice));
    });

    test('returns drink', () {
      expect(FoodData.locale(Locale.en).drinks, contains(food.drink));

      expect(FoodData.locale(locale).drinks, contains(localeFood.drink));

      expect(seededFood.drink, equals(seededFood.drink));
    });
  });
}

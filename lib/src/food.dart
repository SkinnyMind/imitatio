import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/food.dart';
import 'package:imitatio/src/extensions.dart';

/// Provides data related to food.
class Food {
  /// Provides data related to food.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Food({this.locale = Locale.en, this.seed});

  final Locale locale;
  final int? seed;

  /// Returns a random vegetable name.
  ///
  /// Example:
  /// ```dart
  /// Food().vegetable; // "Parsley"
  /// ```
  String get vegetable {
    final data = FoodData.locale(locale).vegetables;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random fruit or berry name.
  ///
  /// Example:
  /// ```dart
  /// Food().fruit; // "Youngberry"
  /// ```
  String get fruit {
    final data = FoodData.locale(locale).fruits;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random dish name.
  ///
  /// Example:
  /// ```dart
  /// Food().dish; // "Osso Buco"
  /// ```
  String get dish {
    final data = FoodData.locale(locale).dishes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random spice/herb name.
  ///
  /// Example:
  /// ```dart
  /// Food().spice; // "Bay leaf"
  /// ```
  String get spice {
    final data = FoodData.locale(locale).spices;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random drink name.
  ///
  /// Example:
  /// ```dart
  /// Food().drink; // "Hennchata"
  /// ```
  String get drink {
    final data = FoodData.locale(locale).drinks;
    return data[Random(seed).integer(max: data.length - 1)];
  }
}

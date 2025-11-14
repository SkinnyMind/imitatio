import 'package:imitatio/src/datasets/ar_ae/food.dart';
import 'package:imitatio/src/datasets/ar_dz/food.dart';
import 'package:imitatio/src/datasets/ar_eg/food.dart';
import 'package:imitatio/src/datasets/ar_jo/food.dart';
import 'package:imitatio/src/datasets/ar_kw/food.dart';
import 'package:imitatio/src/datasets/ar_ma/food.dart';
import 'package:imitatio/src/datasets/ar_om/food.dart';
import 'package:imitatio/src/datasets/ar_qa/food.dart';
import 'package:imitatio/src/datasets/ar_sa/food.dart';
import 'package:imitatio/src/datasets/ar_tn/food.dart';
import 'package:imitatio/src/datasets/ar_ye/food.dart';
import 'package:imitatio/src/datasets/at_sy/food.dart';
import 'package:imitatio/src/datasets/az/food.dart';
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
import 'package:imitatio/src/datasets/kk/food.dart';
import 'package:imitatio/src/datasets/ko/food.dart';
import 'package:imitatio/src/datasets/models/food.dart';
import 'package:imitatio/src/datasets/nl/food.dart';
import 'package:imitatio/src/datasets/nl_be/food.dart';
import 'package:imitatio/src/datasets/no/food.dart';
import 'package:imitatio/src/datasets/pl/food.dart';
import 'package:imitatio/src/datasets/pt/food.dart';
import 'package:imitatio/src/datasets/pt_br/food.dart';
import 'package:imitatio/src/datasets/ru/food.dart';
import 'package:imitatio/src/datasets/sk/food.dart';
import 'package:imitatio/src/datasets/sv/food.dart';
import 'package:imitatio/src/datasets/tr/food.dart';
import 'package:imitatio/src/datasets/uk/food.dart';
import 'package:imitatio/src/datasets/zh/food.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the food.
class FoodData {
  const FoodData._();

  static FoodDataset locale(Locale locale) {
    return switch (locale) {
      .ar_ae => ArAeFoodData(),
      .ar_dz => ArDzFoodData(),
      .ar_eg => ArEgFoodData(),
      .ar_jo => ArJoFoodData(),
      .ar_kw => ArKwFoodData(),
      .ar_ma => ArMaFoodData(),
      .ar_om => ArOmFoodData(),
      .ar_qa => ArQaFoodData(),
      .ar_sa => ArSaFoodData(),
      .ar_sy => ArSyFoodData(),
      .ar_tn => ArTnFoodData(),
      .ar_ye => ArYeFoodData(),
      .az => AzFoodData(),
      .cs => CsFoodData(),
      .da => DaFoodData(),
      .de_at => DeAtFoodData(),
      .de_ch => DeChFoodData(),
      .de => DeFoodData(),
      .el => ElFoodData(),
      .en_au => EnAuFoodData(),
      .en_ca => EnCaFoodData(),
      .en_gb => EnGbFoodData(),
      .en => EnFoodData(),
      .es_mx => EsMxFoodData(),
      .es => EsFoodData(),
      .et => EtFoodData(),
      .fa => FaFoodData(),
      .fi => FiFoodData(),
      .fr => FrFoodData(),
      .hr => HrFoodData(),
      .hu => HuFoodData(),
      .isl => IslFoodData(),
      .it => ItFoodData(),
      .ja => JaFoodData(),
      .kk => KkFoodData(),
      .ko => KoFoodData(),
      .nl_be => NlBeFoodData(),
      .nl => NlFoodData(),
      .no => NoFoodData(),
      .pl => PlFoodData(),
      .pt_br => PtBrFoodData(),
      .pt => PtFoodData(),
      .ru => RuFoodData(),
      .sk => SkFoodData(),
      .sv => SvFoodData(),
      .tr => TrFoodData(),
      .uk => UkFoodData(),
      .zh => ZhFoodData(),
    };
  }
}

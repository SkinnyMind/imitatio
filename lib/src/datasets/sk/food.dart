import 'package:imitatio/src/datasets/models/food.dart';

class SkFoodData extends FoodDataset {
  @override
  List<String> get dishes {
    return const [
      "bravčový rezeň",
      "bryndzové halušky",
      "pizza",
      "vyprážaný syr",
    ];
  }

  @override
  List<String> get drinks {
    return const [
      "kofola",
      "káva",
      "pivo",
      "slivovica",
      "voda",
      "víno",
      "čaj",
    ];
  }

  @override
  List<String> get fruits {
    return const [
      "banán",
      "broskyňa",
      "hruška",
      "jablko",
      "marhuľa",
      "pomaranč",
      "slivka",
    ];
  }

  @override
  List<String> get spices {
    return const [
      "chili",
    ];
  }

  @override
  List<String> get vegetables {
    return const [
      "mrkva",
      "zemiak",
    ];
  }
}

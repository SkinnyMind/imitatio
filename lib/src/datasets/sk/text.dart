import 'package:imitatio/src/datasets/models/text.dart';

class SkTextData extends TextDataset {
  @override
  List<String> alphabet({required bool isLowerCase}) {
    return switch (isLowerCase) {
      true => const [
        "a",
        "á",
        "ä",
        "b",
        "c",
        "č",
        "d",
        "ď",
        "e",
        "é",
        "f",
        "g",
        "h",
        "ch",
        "i",
        "í",
        "j",
        "k",
        "l",
        "ĺ",
        "ľ",
        "m",
        "n",
        "ň",
        "o",
        "ó",
        "ô",
        "p",
        "q",
        "r",
        "ř",
        "s",
        "š",
        "t",
        "ť",
        "u",
        "ú",
        "v",
        "w",
        "x",
        "y",
        "ý",
        "z",
        "ž",
      ],
      false => const [
        "A",
        "Á",
        "Ä",
        "B",
        "C",
        "Č",
        "D",
        "Ď",
        "E",
        "É",
        "F",
        "G",
        "H",
        "Ch",
        "I",
        "Í",
        "J",
        "K",
        "L",
        "Ĺ",
        "Ľ",
        "M",
        "N",
        "Ň",
        "O",
        "Ó",
        "Ô",
        "P",
        "Q",
        "R",
        "Ř",
        "S",
        "Š",
        "T",
        "Ť",
        "U",
        "Ú",
        "V",
        "W",
        "X",
        "Y",
        "Ý",
        "Z",
        "Ž",
      ],
    };
  }

  @override
  List<String> get answers {
    return const ["možno", "nie", "áno"];
  }

  @override
  List<String> get colors {
    return const [
      "biela",
      "hnedá",
      "modrá",
      "sivá",
      "zelená",
      "červená",
      "čierna",
    ];
  }

  @override
  List<String> get levels {
    return const [
      "extrémny",
      "kritický",
      "nízky",
      "stredný",
      "veľmi vysoký",
      "vysoký",
    ];
  }

  @override
  List<String> get quotes {
    return const ["Učiť sa, učiť sa, učiť sa."];
  }

  @override
  List<String> get texts {
    return const ["Strč prst skrz krk."];
  }

  @override
  List<String> get words {
    return const ["žblnknúť"];
  }
}

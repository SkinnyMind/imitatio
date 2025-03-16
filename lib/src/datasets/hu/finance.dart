import 'package:imitatio/src/datasets/models/finance.dart';

class HuFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "Magyar Nemzeti Bank",
      "OTP Bank Nyrt.",
      "K&H Bank Zrt.",
      "Erste Bank Hungary Zrt.",
      "Raiffeisen Bank Zrt.",
      "UniCredit Bank Hungary Zrt.",
      "Budapest Bank Zrt.",
      "MKB Bank Zrt.",
      "CIB Bank Zrt.",
      "Takarékbank Zrt.",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "Borsod Brewery",
      "Dreher Brewery",
      "Győri Keksz",
      "Hell Energy",
      "Pick Szeged",
      "Pécs Brewery",
      "Traubi",
      "Törley",
      "Zwack",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
        "e.v.",
        "e.c.",
        "bt.",
        "kkt.",
        "kft.",
        "kht.",
        "kv.",
        "rt.",
        "Nyrt.",
        "Zrt.",
      ],
      false => const [
        "Egyéni vállalkozó",
        "Egyéni cég",
        "Betéti társaság",
        "Közkereseti társaság",
        "Korlátolt felelősségű társaság",
        "Közhasznú társaság",
        "Közös vállalat",
        "Részvénytársaság",
        "Nyilvánosan működő részvénytársaság",
        "Zártközűen működő részvénytársaság",
      ],
    };
  }

  @override
  String get currencyCode => "HUF";

  @override
  String get currencySymbol => "Ft";
}

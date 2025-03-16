import 'package:imitatio/src/datasets/models/finance.dart';

class IslFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const ["Arion Banki hf.", "Islandsbanki hf.", "Landsbankinn hf."];
  }

  @override
  List<String> get companies {
    return const [
      "365 - miðlar",
      "Actavis Group",
      "Advania",
      "Arctic Trucks Ísland",
      "Bakkavör Group",
      "BankNordik",
      "Barri",
      "Bifreiðaskoðun Íslands",
      "Búnaðarbanki Íslands",
      "CCP",
      "Carbon Recycling International",
      "Dagsbrún",
      "Eimskipafélag Íslands",
      "Ferðaskrifstofa Íslands",
      "Fjarskipti",
      "Fjárfestingarbanki atvinnulífsins",
      "Flugfélag Íslands",
      "Flugskóli Íslands",
      "Friðrik Skúlason",
      "Gutenberg",
      "HB Grandi",
      "Hagar",
      "Hagkaup",
      "Hólalax",
      "Icelandair",
      "Icelandair Group",
      "Intís",
      "Jarðboranir",
      "Kísiliðjan",
      "Landsbanki Íslands",
      "Landssími Íslands",
      "Lyfjaverslun Íslands",
      "MP Banki",
      "Mannvit",
      "Marel",
      "Marorka",
      "N1",
      "NBI",
      "Nói-Siríus",
      "Nýherji",
      "Promens",
      "Reginn",
      "Ríkisútvarpið",
      "Rýni",
      "SR-mjöl",
      "Sementsverksmiðjan",
      "Siglufirði",
      "Sjóvá-Almennar tryggingar",
      "Skýrr",
      "Sláturfélag Suðurlands",
      "Stofnfiskur",
      "Síminn",
      "Teris",
      "Tryggingamiðstöðin",
      "Vátryggingafélag Íslands",
      "Wow Air.",
      "Áburðarverksmiðjan",
      "Áfengis- og tóbaksverslun ríkisins",
      "Íslandsbanki",
      "Íslandspóstur",
      "Íslensk endurtrygging",
      "Íslensk erfðagreining",
      "Íslenska járnblendifélagið",
      "Íslenska menntanetið",
      "Íslenskir aðalverktakar",
      "Össur",
      "Þormóður rammi",
      "Þróunarfélag Íslands",
      "Þörungaverksmiðjan",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["ehf.", "hf.", "ohf.", "sf."],
      false => const [
        "Einkahlutafélag",
        "Einstaklingsfyrirtæki",
        "Hlutafélag",
        "Opinbert hlutafélag",
        "Sameignarfélag",
        "Samlagsfélag",
        "Samvinnufélag",
        "Sjálfseignarstofnun",
      ],
    };
  }

  @override
  String get currencyCode => "ISK";

  @override
  String get currencySymbol => "kr";
}

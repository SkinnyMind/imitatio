// ignore_for_file: lines_longer_than_80_chars

import 'package:imitatio/src/datasets/models/finance.dart';

class DeFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "Deutsche Bank",
      "Commerzbank",
      "KfW Bankengruppe",
      "DZ Bank",
      "Landesbank Baden-Württemberg",
      "Landesbank Hessen-Thüringe",
      "Bayerische Landesbank",
      "Norddeutsche Landesbank",
      "HypoVereinsbank",
      "Landesbank Berlin",
      "Landesbank Saar",
      "Hamburger Sparkasse",
      "Frankfurter Sparkasse",
      "Berliner Sparkasse",
      "Sparkasse KölnBonn",
      "Sparkasse Hannover",
      "Westdeutsche Landesbank",
      "Nordrhein-Westfalen Bank",
      "Kreissparkasse Köln",
      "Mittelbrandenburgische Sparkasse",
      "Kreissparkasse München Starnberg Ebersberg",
      "Stadtsparkasse München",
      "Sparkasse Bremen",
      "Sparkasse Duisburg",
      "Kreissparkasse Ludwigsburg",
      "Sparkasse Leipzig",
      "Ostsächsische Sparkasse Dresden",
      "Sparkasse Hildesheim Goslar Peine",
      "Kreissparkasse Waiblingen",
      "Hannoversche Volksbank",
      "Sparda-Bank",
      "TARGOBANK",
      "Volksbank Mittelhessen",
      "Raiffeisenbank",
      "Postbank",
      "Volksbank Stuttgart",
      "Volksbank Ulm-Biberach",
      "UniCredit Bank",
      "Volksbank Paderborn-Höxter-Detmold",
      "GLS Bank",
      "Deutsche Kreditbank",
      "Bausparkasse Schwäbisch Hall",
      "Fidor Bank",
      "Raiffeisenlandesbank Oberösterreich",
      "Oldenburgische Landesbank",
      "Raiffeisen-Landesbank Steiermark",
      "Bausparkasse Mainz",
      "Vereinigte Volksbank Münster",
      "Allianz",
      "Deutsche Postbank",
      "LBBW Asset Management",
      "CREDITREFORM",
      "Bausparkasse Wüstenrot",
      "HUK-COBURG",
      "Volksbank Alzey-Worms",
      "GLS Gemeinschaftsbank",
      "Volksbank Raiffeisenbank Nordoberpfalz",
      "Sparda-Bank West",
      "Volksbank Mittweida",
      "Raiffeisenbank Gaimersheim",
      "Berenberg Bank",
      "Sparkasse Rhein-Maas",
      "Deutsche Apotheker- und Ärztebank",
      "Versicherungskammer Bayern",
      "Mainzer Volksbank",
      "Hanseatic Bank",
      "Raiffeisen-Landesbank Tirol AG",
      "Südwestbank",
      "Targobank",
      "Bausparkasse Schwäbisch Hall",
      "Bausparkasse BHW",
      "Sparkasse Allgäu",
      "Ostsächsische Sparkasse Dresden",
      "Raiffeisenbank",
      "Kreissparkasse Ludwigsburg",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "Agfa",
      "Allianz",
      "Axa",
      "Bayer",
      "DHL",
      "DOVO Solingen",
      "Degussa",
      "Delton",
      "Deutsche Bahn",
      "Deutsche Börse",
      "Deutsche Post",
      "Deutsche Telekom",
      "Deutsche Vermögensberatung",
      "Deutz",
      "Dieffenbacher",
      "Diehl Aerospace",
      "Diehl BGT Defence",
      "Diehl Metall",
      "Diezel",
      "Djshop",
      "Douglas Holding",
      "Dräger",
      "Dürr",
      "Fleischmann",
      "Fraport",
      "Freenet.de",
      "Fresenius",
      "Fresenius Medical Care",
      "Freudenberg Group",
      "Fuchs Petrolub",
      "Hama",
      "Hannover Re",
      "Hapag-Lloyd",
      "Haribo",
      "Heckler & Koch",
      "Heidelberg Cement",
      "Heidelberger Druckmaschinen",
      "Hella",
      "Henckels",
      "Henkel",
      "Heraeus",
      "Himmel Digital",
      "KIMO Industrie Elektronik",
      "KSB",
      "KTB mechatronics",
      "KUKA",
      "Kalex",
      "Kasto",
      "Kathrein",
      "Kern",
      "Kirch Group",
      "Kjellberg Finsterwalde",
      "Krauss-Maffei Wegmann",
      "Kreditech",
      "Krones",
      "Kunath",
      "Könitz Porzellan",
      "Körber",
      "Märklin",
      "PTV",
      "PUMA",
      "Phoenix Contact",
      "Putzmeister",
      "Schnellsystem",
      "Signavio",
      "Siku Toys",
      "SindoPower",
      "SinnerSchrader",
      "Sixt",
      "Softpro",
      "Sonor",
      "Sortimo",
      "Stiebel Eltron",
      "Stollwerck",
      "Stratech Informations Systems",
      "Surplex",
      "Suspa",
      "Symrise",
      "T-Mobile",
      "T-Systems",
      "Vaude",
      "Vector Informatik",
      "Viessmann",
      "Villeroy & Boch",
      "Warsteiner Brewery",
      "Wella",
      "Weltraum-System",
      "Wilkhahn",
      "Wittenstein",
      "Wolf and Robert",
      "Wolff & Müller",
      "Wortmann",
      "Würth",
      "Wüsthof Dreizack",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "AG",
          "GEN",
          "GbR",
          "GmbH",
          "GmbH & Co. KG",
          "KGaA",
          "OHG",
          "SE",
          "UG",
        ],
      false => const [
          "Aktiengesellschaft",
          "Europäische Gesellschaft",
          "Genossenschaft",
          "Gesellschaft bürgerlichen Rechts",
          "Gesellschaft mit beschränkter Haftung",
          "Gesellschaft mit beschränkter Haftung & Compagnie Kommanditgesellschaft",
          "Kommanditgesellschaft auf Aktien",
          "Offene Handelsgesellschaft",
          "Unternehmergesellschaft",
        ],
    };
  }

  @override
  String get currencyCode => 'EUR';

  @override
  String get currencySymbol => "€";
}
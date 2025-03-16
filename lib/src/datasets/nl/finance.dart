import 'package:imitatio/src/datasets/models/finance.dart';

class NlFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "ABN AMRO Bank N.V.",
      "Rabobank Nederland",
      "ING Bank N.V.",
      "De Volksbank N.V.",
      "Coöperatieve Rabobank U.A.",
      "F. van Lanschot Bankiers N.V.",
      "Triodos Bank N.V.",
      "BNG Bank N.V.",
      "NIBC Bank N.V.",
      "Deutsche Bank AG Amsterdam Branch",
      "Credit Europe Bank N.V.",
      "Knab",
      "ASR Bank N.V.",
      "SNS Bank N.V.",
      "Banco Santander S.A. Amsterdam Branch",
      "InsingerGilissen Bankiers N.V.",
      "Deutsche Bank Nederland N.V.",
      "Bank of Tokyo-Mitsubishi UFJ N.V.",
      "BNP Paribas S.A. Amsterdam Branch",
      "Bank Mendes Gans N.V.",
      "Theodoor Gilissen Bankiers N.V.",
      "Barclays Bank Ireland PLC Netherlands Branch",
      "J.P. Morgan Bank Luxembourg S.A. Amsterdam Branch",
      "MUFG Bank N.V.",
      "Citibank Europe PLC Netherlands Branch",
      "Van Lanschot Kempen Wealth Management N.V.",
      "Banco Bilbao Vizcaya Argentaria S.A. Amsterdam Branch",
      "HSBC Bank plc Amsterdam Branch",
      "State Street Bank International GmbH Netherlands Branch",
      "The Bank of New York Mellon SA/NV Amsterdam Branch",
      "KAS BANK N.V.",
      "InsingerGilissen Asset Management N.V.",
      "Deutsche Bank Wealth Management N.V.",
      "Bank Insinger de Beaufort N.V.",
      "ABN AMRO Clearing Bank N.V.",
      "The Bank of Nova Scotia N.V.",
      "GarantiBank International N.V.",
      "KBC Bank N.V.",
      "Bank ten Cate & Cie. N.V.",
      "Bank Nederlandse Gemeenten N.V.",
      "Amsterdam Trade Bank N.V.",
      "ING Groep N.V.",
      "Citibank N.A. Amsterdam Branch",
      "FCE Bank plc Netherlands Branch",
      "Korea Development Bank Amsterdam Branch",
      "KBC Bank Deutschland AG Netherlands Branch",
      "Mizuho Bank N.V.",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "Aalberts Industries",
      "Abab",
      "ABN AMRO",
      "Accell Group",
      "AEGON",
      "AFC Ajax",
      "Ahold",
      "Air France-KLM",
      "AkzoNobel",
      "Arcadis",
      "ASM International",
      "ASML",
      "Ballast Nedam",
      "Batenburg Techniek",
      "Koninklijke BAM Groep",
      "Beter Bed",
      "BinckBank",
      "Boskalis",
      "Buhrmann",
      "C&A",
      "Corio",
      "Crucell",
      "CSM",
      "Ctac",
      "DHR",
      "DHV",
      "DSM",
      "Dico",
      "Draka",
      "Fugro",
      "Getronics",
      "Grolsch",
      "Grontmij",
      "Hagemeyer",
      "Havenbedrijf Rotterdam",
      "Heijmans",
      "Heineken",
      "Hippo Zorg",
      "HITT",
      "Hunter Douglas",
      "ING",
      "Laurus",
      "Logica",
      "KAS BANK",
      "Koninklijke Kerckhaert Hoefijzerfabriek",
      "Koninklijke Luchtvaart Maatschappij",
      "Koninklijke KPN",
      "Martinair",
      "De Nederlandsche Bank",
      "Nederlandse Spoorwegen",
      "Neways Electronics",
      "Numico",
      "Nutreco",
      "Océ",
      "OPG Groep",
      "Optiver",
      "Philips",
      "Qurius",
      "Rabobank",
      "Randstad",
      "Reed Elsevier",
      "Rodamco Europe",
      "Royal Dutch Shell",
      "Schiphol",
      "Sligro Food Group",
      "SNS REAAL",
      "Spyker",
      "Stork",
      "Telegraaf Media Group",
      "Koninklijke Ten Cate",
      "TMF Group",
      "Transavia",
      "TNT N.V.",
      "Trust",
      "Unilever",
      "USG People",
      "Van Oord",
      "Vendex KBB",
      "VNU",
      "Koninklijke Vopak",
      "Wavin",
      "Wereldhave",
      "Wessanen",
      "Witte Molen N.V.",
      "Wolters Kluwer",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["VOF", "C.V.", "BV", "N.V."],
      false => const [
        "Vennootschap onder firma",
        "Commanditaire vennootschap",
        "Besloten vennootschap",
        "Naamloze vennootschap",
      ],
    };
  }

  @override
  String get currencyCode => "EUR";

  @override
  String get currencySymbol => "€";
}

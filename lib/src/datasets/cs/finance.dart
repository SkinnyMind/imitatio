import 'package:imitatio/src/datasets/models/finance.dart';

class CsFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "AXA Bank",
      "AXA pojišťovna",
      "Air Bank",
      "Allianz Bank",
      "Allianz pojišťovna",
      "BNP Paribas",
      "BNP Paribas Fortis",
      "BNP Paribas Personal Finance",
      "Banka CREDITAS a.s.",
      "Banka Creditas",
      "Banka HS Credit",
      "Bawag Bank",
      "Citfin",
      "Citi Bank Europe",
      "Citibank",
      "Citibank Europe",
      "Deutsche Bank",
      "Equa bank",
      "Ergo Hestia pojišťovna",
      "Expobank CZ",
      "Fio banka",
      "GE Money Bank",
      "Generali pojišťovna",
      "HSBC Bank",
      "Hypoteční banka",
      "ING Bank",
      "ING pojišťovna",
      "J&T Banka",
      "Komerční banka",
      "Komerční pojišťovna",
      "Mbank",
      "Moneta Money Bank",
      "Poštovní spořitelna",
      "Raiffeisen stavební spořitelna",
      "Raiffeisenbank",
      "Sberbank CZ",
      "Société Générale",
      "UBS",
      "UniCredit Bank",
      "Uniqa pojišťovna",
      "Všeobecná zdravotní pojišťovna",
      "Wüstenrot hypoteční banka",
      "Zuno Bank",
      "mBank",
      "mBank hipotéka",
      "ČSOB",
      "Českomoravská stavební spořitelna",
      "Česká exportní banka",
      "Česká národní banka",
      "Česká pojišťovna",
      "Česká spořitelna",
      "Česká zbrojovka",
    ];
  }

  @override
  List<String> get companies {
    return const ["Building Audit", "DATASCAN"];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
        "a.s.",
        "akc.",
        "k.s.",
        "o.p.s.",
        "s.p.",
        "s.r.o.",
        "spol.",
        "v.o.s.",
        "z.s.",
      ],
      false => const [
        "Akciová společnost",
        "Komanditní společnost",
        "Obecně prospěšná společnost",
        "Společnost s ručením omezeným",
        "Státní podnik",
        "Veřejná obchodní společnost",
        "Zapsaný spolek",
      ],
    };
  }

  @override
  String get currencyCode => "CZK";

  @override
  String get currencySymbol => "Kč";
}

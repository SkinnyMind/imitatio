import 'package:imitatio/src/datasets/models/finance.dart';

class HrFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "Addiko Bank D.D.",
      "Agram Banka D.D.",
      "Banka Kovanica D.D.",
      "Bks Bank Ag, Glavna Podružnica Hrvatska",
      "Croatia Banka D.D.",
      "Erste & Steiermärkische Bank D.D.",
      "Hrvatska Poštanska Banka D.D.",
      "Imex Banka D.D.",
      "Istarska Kreditna Banka Umag D.D.",
      "J&T Banka D.D.",
      "Jadranska Banka D.D.",
      "Karlovačka Banka D.D.",
      "Kentbank D.D.",
      "Otp Banka Hrvatska D.D.",
      "Partner Banka D.D.",
      "Podravska Banka D.D.",
      "Privredna Banka Zagreb D.D.",
      "Raiffeisenbank Austria D.D.",
      "Samoborska Banka  D.D.",
      "Sberbank D.D.",
      "Slatinska Banka D.D.",
      "Zagrebačka Banka D.D.",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "ACI d.d.",
      "Ad Plastik",
      "Adriatic Croatia International Club",
      "Adris grupa",
      "Agrokor",
      "Atlantic grupa",
      "Atlantic trade",
      "Badel 1862",
      "Belje",
      "Croatia osiguranje",
      "Crodux derivati",
      "Crodux",
      "Dukat",
      "Dukat",
      "Elka",
      "Ericsson Nikola Tesla",
      "Franck",
      "HEP Operator distribucijskog sustava",
      "HEP",
      "HT Eronet",
      "Hrvatska pošta",
      "Hrvatski Telekom",
      "INA Industrija nafte",
      "INA",
      "Jadrolinija",
      "Janaf",
      "Konzum",
      "Končar",
      "Kraš esop d.o.o.",
      "Kraš",
      "Marina Frapa",
      "Orbico",
      "PBZ",
      "Petrokemija",
      "Petrol",
      "Pivovara Daruvar",
      "Pliva",
      "Podravka prehrambena industrija",
      "Podravka",
      "Rimac Automobili",
      "Tehnika",
      "Valamar Riviera",
      "Varteks",
      "Vindija",
      "Zagrebačka banka",
      "Zagrebačka pivovara",
      "Đuro Đaković Montaža",
      "Đuro Đaković grupa",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
        "d.d.",
        "d.o.o.",
        "j.d.o.o.",
        "j.u.",
        "k.d.",
        "s.d.d.",
        "s.o.",
      ],
      false => const [
        "dioničko društvo",
        "društvo s ograničenom odgovornošću",
        "javna ustanova",
        "javno dioničko društvo",
        "komanditno društvo",
        "udruga",
        "zadruga",
        "zajedničko društvo",
        "zaklada",
      ],
    };
  }

  @override
  String get currencyCode => "EUR";

  @override
  String get currencySymbol => "€";
}

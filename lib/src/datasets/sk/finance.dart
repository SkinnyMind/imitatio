import 'package:imitatio/src/datasets/models/finance.dart';

class SkFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "Slovenská sporiteľňa, a.s.",
      "Tatra banka, a.s.",
      "Všeobecná úverová banka, a.s.",
      "UniCredit Bank Czech Republic and Slovakia, a.s.",
      "ČSOB, a.s.",
      "Sberbank Slovensko, a.s.",
      "OTP Banka Slovensko, a.s.",
      "Privatbanka, a.s.",
      "Poštová banka, a.s.",
      "J&T Banka, a.s.",
      "Prima banka Slovensko, a.s.",
      "Expobank CZ a.s., pobočka zahraničnej banky",
      "Deutsche Bank AG, pobočka zahraničnej banky",
      "Raiffeisen banka, a.s.",
      "mBank S.A., pobočka zahraničnej banky",
      "ING Bank N.V., pobočka zahraničnej banky",
      "Waldviertler Sparkasse Bank AG, pobočka zahraničnej banky",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "Kvetináreň",
      "Paštikáreň",
      "Záhradkáreň",
      "Šalátičkáreň",
      "Šróbikáreň",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["a.s.", "s.r.o."],
      false => const ["Akciová spoločnosť", "Spoločnosť s ručením obmedzeným"],
    };
  }

  @override
  String get currencyCode => "EUR";

  @override
  String get currencySymbol => "€";
}

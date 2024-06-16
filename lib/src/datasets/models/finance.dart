abstract class FinanceDataset {
  List<String> get banks;
  List<String> get companies;
  List<String> companyTypes({required bool isAbbr});
  String get currencyCode;
  String get currencySymbol;
}

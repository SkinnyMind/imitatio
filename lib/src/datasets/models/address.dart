abstract class AddressDataset {
  String formatAddress({
    required String suffix,
    required String name,
    required int number,
  });
  List<String> get cities;
  List<String> get countries;
  List<String> get continents;
  List<String> states({required bool isAbbr});
  List<String> streets({required bool isSuffix});
  String get postalCodeFormat;
}

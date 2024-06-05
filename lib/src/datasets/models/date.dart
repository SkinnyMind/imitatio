abstract class DateDataset {
  List<String> days({required bool isAbbr});
  Map<String, String> get formats;
  List<String> months({required bool isAbbr});
  List<String> get periodicities;
}

abstract class DateDataset {
  List<String> day({required bool isAbbr});
  Map<String, String> get formats;
  List<String> month({required bool isAbbr});
  List<String> get periodicity;
}

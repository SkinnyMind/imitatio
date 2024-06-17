abstract class DateDataset {
  List<String> days({required bool isAbbr});
  List<String> months({required bool isAbbr});
  List<String> get periodicities;
  String formatDate({
    required String year,
    required String month,
    required String day,
  });
  String formatTime({
    required String hour,
    required String minute,
    required String second,
  });
}

import 'package:imitatio/src/datasets/models/date.dart';

class DeAtDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Mo.",
          "Di.",
          "Mi.",
          "Do.",
          "Fr.",
          "Sa.",
          "So.",
        ],
      false => const [
          "Dienstag",
          "Donnerstag",
          "Freitag",
          "Mittwoch",
          "Montag",
          "Samstag",
          "Sonntag",
        ],
    };
  }

  @override
  String formatDate({
    required String year,
    required String month,
    required String day,
  }) {
    return '$day.$month.$year';
  }

  @override
  String formatTime({
    required String hour,
    required String minute,
    required String second,
  }) {
    return '$hour:$minute:$second';
  }

  @override
  List<String> months({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Apr.",
          "Aug.",
          "Dez.",
          "Feb.",
          "Jan.",
          "Jul.",
          "Jun.",
          "Mai",
          "März",
          "Nov.",
          "Okt.",
          "Sept.",
        ],
      false => const [
          "April",
          "August",
          "Dezember",
          "Februar",
          "Januar",
          "Juli",
          "Juni",
          "Mai",
          "März",
          "November",
          "Oktober",
          "September",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Einmal",
      "Häufig",
      "Jährlich",
      "Monatlich",
      "Nie",
      "Selten",
      "Täglich",
      "Wöchentlich",
    ];
  }
}

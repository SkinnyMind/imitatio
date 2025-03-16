import 'package:imitatio/src/datasets/models/date.dart';

class NoDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Ma.", "Ti.", "On.", "To.", "Fr.", "Lø.", "Sø."],
      false => const [
        "Mandag",
        "Tirsdag",
        "Onsdag",
        "Torsdag",
        "Fredag",
        "Lørdag",
        "Søndag",
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
        "Jan.",
        "Febr.",
        "Mars",
        "April",
        "Mai",
        "Juni",
        "Juli",
        "Aug.",
        "Sept.",
        "Okt.",
        "Nov.",
        "Des.",
      ],
      false => const [
        "Januar",
        "Februar",
        "Mars",
        "April",
        "Mai",
        "Juni",
        "Juli",
        "August",
        "September",
        "Oktober",
        "November",
        "Desember",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "En gang",
      "Aldri",
      "Sjeldent",
      "Ofte",
      "Daglig",
      "Ukentlig",
      "Månedlig",
      "Årlig",
    ];
  }
}

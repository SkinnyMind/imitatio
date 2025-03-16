import 'package:imitatio/src/datasets/models/date.dart';

class SvDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Ma.", "Ti.", "On.", "To.", "Fr.", "Lö.", "Sö."],
      false => const [
        "Måndag",
        "Tisdag",
        "Onsdag",
        "Torsdag",
        "Fredag",
        "Lördag",
        "Söndag",
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
        "Maj",
        "Juni",
        "Juli",
        "Aug.",
        "Sept.",
        "Okt.",
        "Nov.",
        "Dec.",
      ],
      false => const [
        "Januari",
        "Februari",
        "Mars",
        "April",
        "Maj",
        "Juni",
        "Juli",
        "Augusti",
        "September",
        "Oktober",
        "November",
        "December",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "En gång",
      "Aldrig",
      "Sällan",
      "Ofta",
      "Dagligen",
      "Veckovis",
      "Månatlig",
      "Årlig",
    ];
  }
}

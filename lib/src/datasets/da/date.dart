import 'package:imitatio/src/datasets/models/date.dart';

class DaDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Fre.", "Lør.", "Man.", "Ons.", "Søn.", "Tirs.", "Tors."],
      false => const [
        "Fredag",
        "Lørdag",
        "Mandag",
        "Onsdag",
        "Søndag",
        "Tirsdag",
        "Torsdag",
      ],
    };
  }

  @override
  String formatDate({
    required String year,
    required String month,
    required String day,
  }) {
    return '$day-$month-$year';
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
        "Dec.",
        "Feb.",
        "Ja.",
        "Jul.",
        "Jun.",
        "Maj",
        "Mar.",
        "Nov.",
        "Okt.",
        "Sep.",
      ],
      false => const [
        "April",
        "August",
        "December",
        "Februar",
        "Januar",
        "Juli",
        "Juni",
        "Maj",
        "Marts",
        "November",
        "Oktober",
        "September",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Aldrig",
      "Daglige",
      "Månedlige",
      "Sjældent",
      "Ugentlig",
      "Årligt",
    ];
  }
}

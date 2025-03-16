import 'package:imitatio/src/datasets/models/date.dart';

class NlBeDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Ma.", "Di.", "Wo.", "Do.", "Vr.", "Za.", "Zo."],
      false => const [
        "Maandag",
        "Dinsdag",
        "Woensdag",
        "Donderdag",
        "Vrijdag",
        "Zaterdag",
        "Zondag",
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
        "Feb.",
        "Mrt.",
        "Apr.",
        "Mei.",
        "Jun.",
        "Jul.",
        "Aug.",
        "Sep.",
        "Okt.",
        "Nov.",
        "Dec.",
      ],
      false => const [
        "Januari",
        "Februari",
        "Maart",
        "April",
        "Mei",
        "Juni",
        "Juli",
        "Augustus",
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
      "Eenmaal",
      "Nooit",
      "Zelden",
      "Dagelijks",
      "Wekelijks",
      "Maandelijks",
      "Jaarlijks",
    ];
  }
}

import 'package:imitatio/src/datasets/models/date.dart';

class CsDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Ne.",
          "Po.",
          "Pá.",
          "So.",
          "St.",
          "Út.",
          "Čt.",
        ],
      false => const [
          "Neděle",
          "Pondělí",
          "Pátek",
          "Sobota",
          "Středa",
          "Úterý",
          "Čtvrtek",
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
          "Bře.",
          "Dub.",
          "Led.",
          "Lis.",
          "Pro.",
          "Srp.",
          "Zář.",
          "Kvě.",
          "Úno.",
          "Čvc.",
          "Čvn.",
          "Říj.",
        ],
      false => const [
          "Březen",
          "Duben",
          "Květen",
          "Leden",
          "Listopad",
          "Prosinec",
          "Srpen",
          "Září",
          "Únor",
          "Červen",
          "Červenec",
          "Říjen",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Denní",
      "Jednou",
      "Měsíční",
      "Nikdy",
      "Roční",
      "Týdně",
      "Zřídka",
    ];
  }
}

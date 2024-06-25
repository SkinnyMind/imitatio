import 'package:imitatio/src/datasets/models/date.dart';

class IslDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Má.",
          "Þr.",
          "Mi.",
          "Fi.",
          "Fö.",
          "Lau.",
          "Su.",
        ],
      false => const [
          "Mánudagur",
          "Þriðjudagur",
          "Miðvikudagur",
          "Fimmtudagur",
          "Föstudagur",
          "Laugardagur",
          "Sunnudagur",
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
          "Mar.",
          "Apr.",
          "Maí.",
          "Jún.",
          "Júl.",
          "Ágú.",
          "Sep.",
          "Okt.",
          "Nóv.",
          "Des.",
        ],
      false => const [
          "Janúar",
          "Febrúar",
          "Mars",
          "Apríl",
          "Maí",
          "Júní",
          "Júlí",
          "Ágúst",
          "September",
          "Október",
          "Nóvember",
          "Desember",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Einu sinni",
      "Aldrei",
      "Sjaldan",
      "Oft",
      "Vikuleg",
      "Mánaðarleg",
      "Árlega",
    ];
  }
}

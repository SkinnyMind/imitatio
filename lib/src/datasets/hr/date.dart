import 'package:imitatio/src/datasets/models/date.dart';

class HrDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Ned.", "Pet.", "Pon.", "Sri.", "Sub.", "Uto.", "Čet."],
      false => const [
        "Nedjelja",
        "Petak",
        "Ponedjeljak",
        "Srijeda",
        "Subota",
        "Utorak",
        "Četvrtak",
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
        "Kol.",
        "Lip.",
        "Lis.",
        "Ožu.",
        "Pro.",
        "Ruj.",
        "Sij.",
        "Srp.",
        "Stu.",
        "Svi.",
        "Tra.",
        "Velj.",
      ],
      false => const [
        "Kolovoz",
        "Lipanj",
        "Listopad",
        "Ožujak",
        "Prosinac",
        "Rujan",
        "Siječanj",
        "Srpanj",
        "Studeni",
        "Svibanj",
        "Travanj",
        "Veljača",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Dnevno",
      "Godišnje",
      "Jednom",
      "Mjesečno",
      "Nikad",
      "Svakih nekoliko dana",
      "Svakih nekoliko godina",
      "Svakih nekoliko mjeseci",
      "Svakih nekoliko tjedana",
      "Tjedno",
      "Često",
    ];
  }
}

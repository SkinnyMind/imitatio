import 'package:imitatio/src/datasets/models/date.dart';

class EtDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["E", "T", "K", "N", "R", "L", "P"],
      false => const [
        "Esmaspäev",
        "Teisipäev",
        "Kolmapäev",
        "Neljapäev",
        "Reede",
        "Laupäev",
        "Pühapäev",
      ],
    };
  }

  @override
  String formatDate({
    required String year,
    required String month,
    required String day,
  }) {
    return '$day/$month/$year';
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
        "Jaan",
        "Veebr",
        "Märts",
        "Apr",
        "Mai",
        "Juuni",
        "Juuli",
        "Aug",
        "Sept",
        "Okt",
        "Nov",
        "Dets",
      ],
      false => const [
        "Jaanuar",
        "Veebruar",
        "Märts",
        "Aprill",
        "Mai",
        "Juuni",
        "Juuli",
        "August",
        "September",
        "Oktoober",
        "November",
        "Detsember",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Ühel päeval",
      "Mitte kunagi",
      "Harva",
      "Väga sageli",
      "Igapäevaselt",
      "Nädalas",
      "Kuus",
      "Kord aastas",
    ];
  }
}

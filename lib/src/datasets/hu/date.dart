import 'package:imitatio/src/datasets/models/date.dart';

class HuDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Csüt.",
          "H.",
          "K.",
          "P.",
          "Sze.",
          "Szo.",
          "Vas",
        ],
      false => const [
          "Hétfő",
          "Kedd",
          "Szerda",
          "Csütörtök",
          "Péntek",
          "Szombaton",
          "Vasárnap",
        ],
    };
  }

  @override
  String formatDate({
    required String year,
    required String month,
    required String day,
  }) {
    return '$year.$month.$day';
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
          "Márc.",
          "Ápr.",
          "Máj.",
          "Jun.",
          "Jul.",
          "Aug.",
          "Szept.",
          "Okt.",
          "Nov.",
          "Dec.",
        ],
      false => const [
          "Augusztus",
          "December",
          "Február",
          "Január",
          "Július",
          "Június",
          "Május",
          "Március",
          "November",
          "Október",
          "Szeptember",
          "Április",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Egyszer",
      "Havi",
      "Heti",
      "Napi",
      "Ritkán",
      "Soha",
      "Évi",
    ];
  }
}

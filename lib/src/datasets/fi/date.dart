import 'package:imitatio/src/datasets/models/date.dart';

class FiDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Ke.", "La.", "Ma.", "Pe.", "Su.", "Ti.", "To."],
      false => const [
        "Keskiviikko",
        "Lauantai",
        "Maanantai",
        "Perjantai",
        "Sunnuntai",
        "Tiistai",
        "Torstai",
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
        "El.",
        "He.",
        "He.",
        "Hu.",
        "Jo.",
        "Ke.",
        "Lo.",
        "Ma.",
        "Ma.",
        "Sy.",
        "Ta.",
        "To.",
      ],
      false => const [
        "Elokuu",
        "Heinäkuu",
        "Helmikuu",
        "Huhtikuu",
        "Joulukuu",
        "Kesäkuu",
        "Lokakuu",
        "Maaliskuu",
        "Marraskuu",
        "Syyskuu",
        "Tammikuu",
        "Toukokuu",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Ei ikinä",
      "Harvoin",
      "Kerran",
      "Kuukausittain",
      "Päivittäin",
      "Usein",
      "Viikoittain",
      "Vuosittain",
    ];
  }
}

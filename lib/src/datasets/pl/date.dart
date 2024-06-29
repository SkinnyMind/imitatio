import 'package:imitatio/src/datasets/models/date.dart';

class PlDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Pn.",
          "Wt.",
          "Śr.",
          "Czw.",
          "Pt.",
          "Sob.",
          "Niedz.",
        ],
      false => const [
          "Poniedziałek",
          "Wtorek",
          "Środa",
          "Czwartek",
          "Piątek",
          "Sobota",
          "Niedziela",
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
          "Stycz.",
          "Luty",
          "Mar.",
          "Kwiec.",
          "Maj",
          "Czerw.",
          "Lip.",
          "Sierp.",
          "Wrzes.",
          "Paźdz.",
          "Listop.",
          "Grudz.",
        ],
      false => const [
          "Styczeń",
          "Luty",
          "Marzec",
          "Kwiecień",
          "Maj",
          "Czerwiec",
          "Lipiec",
          "Sierpień",
          "Wrzesień",
          "Październik",
          "Listopad",
          "Grudzień",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Codziennie",
      "Miesięcznie",
      "Nigdy",
      "Często",
      "Jednorazowo",
      "Rzadko",
      "Cotygodniowo",
      "Corocznie",
    ];
  }
}

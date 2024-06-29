import 'package:imitatio/src/datasets/models/date.dart';

class SkDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "ne",
          "pi",
          "po",
          "so",
          "st",
          "ut",
          "št",
        ],
      false => const [
          "nedeľa",
          "piatok",
          "pondelok",
          "sobota",
          "streda",
          "utorok",
          "štvrtok",
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
          "apr.",
          "aug.",
          "dec.",
          "feb.",
          "jan.",
          "júl",
          "jún",
          "mar.",
          "máj",
          "nov.",
          "okt.",
          "sep.",
        ],
      false => const [
          "apríl",
          "august",
          "december",
          "február",
          "január",
          "júl",
          "jún",
          "marec",
          "máj",
          "november",
          "október",
          "september",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "denne",
      "mesačne",
      "nikdy",
      "raz",
      "ročne",
      "týždenne",
      "zriedka",
    ];
  }
}

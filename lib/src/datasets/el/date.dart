import 'package:imitatio/src/datasets/models/date.dart';

class ElDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Δε.", "Κυ.", "Παρ.", "Πε.", "Σαβ.", "Τε.", "Τρ."],
      false => const [
        "Δευτέρα",
        "Κυριακή",
        "Πέμπτη",
        "Παρασκευή",
        "Σάββατο",
        "Τετάρτη",
        "Τρίτη",
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
        "Απρ.",
        "Αυγ.",
        "Δεκ.",
        "Ιαν.",
        "Ιούλιος",
        "Ιούνιος",
        "Μάιος",
        "Μαρ.",
        "Νοεμβ.",
        "Οκτ.",
        "Σεπτ.",
        "Φεβ.",
      ],
      false => const [
        "Άυγουστος",
        "Απρίλιος",
        "Δεκέμβριος",
        "Ιανουάριος",
        "Ιούλιους",
        "Ιούνιος",
        "Μάιος",
        "Μάρτιος",
        "Νοέμβριος",
        "Οκτώβριος",
        "Σεπτέμβριος",
        "Φεβρουάριος",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Εβδομαδιαίο",
      "Ετήσιο",
      "Καθημερινά",
      "Μηνιαίο",
      "Μόλις",
      "Πάντα",
      "Σπάνιο",
      "Συχνά",
    ];
  }
}

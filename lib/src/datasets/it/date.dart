import 'package:imitatio/src/datasets/models/date.dart';

class ItDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Do.",
          "Lun.",
          "Mar.",
          "Mer.",
          "Gio.",
          "Ven.",
          "Sab.",
        ],
      false => const [
          "Domenica",
          "Lunedì",
          "Martedì",
          "Mercoledì",
          "Giovedì",
          "Venerdì",
          "Sabato",
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
          "Gen.",
          "Feb.",
          "Mar.",
          "Apr.",
          "Mag.",
          "Giu.",
          "Lug.",
          "Ago.",
          "Sep.",
          "Ott.",
          "Nov.",
          "Dic.",
        ],
      false => const [
          "Gennaio",
          "Febbraio",
          "Marzo",
          "Aprile",
          "Maggio",
          "Giugno",
          "Luglio",
          "Agosto",
          "Settembre",
          "Ottobre",
          "Novembre",
          "Dicembre",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Una volta",
      "Mai",
      "Raramente",
      "Spesso",
      "Quotidiano",
      "Settimanalmente",
      "Mensile",
      "Annuale",
    ];
  }
}

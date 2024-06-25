import 'package:imitatio/src/datasets/models/date.dart';

class FrDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => [
          "Lun.",
          "Mar.",
          "Mer.",
          "Jeu.",
          "Ven.",
          "Sam.",
          "Dim.",
        ],
      false => const [
          "Lundi",
          "Mardi",
          "Mercredi",
          "Jeudi",
          "Vendredi",
          "Samedi",
          "Dimanche",
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
          "Janv.",
          "Févr.",
          "Mars",
          "Avril",
          "Mai",
          "Juin",
          "Juil.",
          "Août",
          "Sept.",
          "Oct.",
          "Nov.",
          "Déc.",
        ],
      false => const [
          "Janvier",
          "Février",
          "Mars",
          "Avril",
          "Mai",
          "Juin",
          "Juillet",
          "Août",
          "Septembre",
          "Octobre",
          "Novembre",
          "Décembre",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Annuel",
      "Hebdomadaire",
      "Jamais",
      "Mensuel",
      "Rarement",
      "Souvent",
      "Tous les jours",
      "Une fois",
    ];
  }
}

import 'package:imitatio/src/datasets/models/date.dart';

class EsDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Lu.", "Ma.", "Mi", "Ju.", "Vi.", "Sá.", "Do."],
      false => const [
        "Lunes",
        "Martes",
        "Miércoles",
        "Jueves",
        "Viernes",
        "Sábado",
        "Domingo",
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
        "Enero",
        "Feb.",
        "Marzo",
        "Abr.",
        "Mayo",
        "Jun.",
        "Jul.",
        "Agosto",
        "Sep.",
        "Oct.",
        "Nov.",
        "Dic",
      ],
      false => const [
        "Enero",
        "Febrero",
        "Marzo",
        "Abril",
        "Mayo",
        "Junio",
        "Julio",
        "Agosto",
        "Septiembre",
        "Octubre",
        "Noviembre",
        "Diciembre",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Una vez",
      "Nunca",
      "Jamás",
      "Raramente",
      "A menudo",
      "Diariamente",
      "Siempre",
      "Frecuentemente",
      "Anualmente",
      "Usualmente",
      "Normalmente",
    ];
  }
}

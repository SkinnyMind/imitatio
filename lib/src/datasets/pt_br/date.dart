import 'package:imitatio/src/datasets/models/date.dart';

class PtBrDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Seg.",
          "Ter.",
          "Qua.",
          "Qui.",
          "Sex.",
          "Sab.",
          "Dom.",
        ],
      false => const [
          "Segunda-Feira",
          "Terça-Feira",
          "Quarta-Feira",
          "Quinta-Feira",
          "Sexta-Feira",
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
          "Jan.",
          "Fev.",
          "Mar.",
          "Abr.",
          "Mai.",
          "Jun.",
          "Jul.",
          "Ago.",
          "Set.",
          "Out.",
          "Nov.",
          "Dez.",
        ],
      false => const [
          "Janeiro",
          "Fevereiro",
          "Março",
          "Abril",
          "Maio",
          "Junho",
          "Julho",
          "Agosto",
          "Setembro",
          "Outubro",
          "Novembro",
          "Dezembro",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Anualmente",
      "Diariamente",
      "Frequentemente",
      "Mensalmente",
      "Nunca",
      "Raramente",
      "Semanalmente",
      "Uma Vez",
    ];
  }
}

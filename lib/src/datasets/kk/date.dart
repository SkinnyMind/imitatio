import 'package:imitatio/src/datasets/models/date.dart';

class KkDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Дс.",
          "Сс.",
          "Ср.",
          "Бс.",
          "Жм.",
          "Сн.",
          "Жк.",
        ],
      false => const [
          "Дүйсенбі",
          "Сейсенбі",
          "Сәрсенбі",
          "Бейсенбі",
          "Жұма",
          "Сенбі",
          "Жексенбі",
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
          "Қаң.",
          "Ақп.",
          "Нау.",
          "Сәу.",
          "Мам.",
          "Мау.",
          "Шіл.",
          "Там.",
          "Қыр.",
          "Қаз.",
          "Қар.",
          "Жел.",
        ],
      false => const [
          "Қаңтар",
          "Ақпан",
          "Наурыз",
          "Сәуір",
          "Мамыр",
          "Маусым",
          "Шілде",
          "Тамыз",
          "Қыркүйек",
          "Қазан",
          "Қараша",
          "Желтоқсан",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Ай сайын",
      "Апта сайын",
      "Бір күні",
      "Ешқашан",
      "Жиі",
      "Жыл сайын",
      "Күн сайын",
      "Сирек",
      "Сирек",
      "Тоқсан сайын",
    ];
  }
}

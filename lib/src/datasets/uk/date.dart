import 'package:imitatio/src/datasets/models/date.dart';

class UkDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Пн.",
          "Вв.",
          "Ср.",
          "Чт.",
          "Пт.",
          "Сб.",
          "Нд.",
        ],
      false => const [
          "Понеділок",
          "Вівторок",
          "Середа",
          "Четвер",
          "П'ятниця",
          "Субота",
          "Неділя",
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
          "Січ.",
          "Лют.",
          "Бер.",
          "Кві.",
          "Тра.",
          "Чер.",
          "Лип.",
          "Сер.",
          "Вер.",
          "Жов.",
          "Лис.",
          "Гру.",
        ],
      false => const [
          "Січень",
          "Лютий",
          "Березень",
          "Квітень",
          "Травень",
          "Червень",
          "Липень",
          "Серпень",
          "Вересень",
          "Жовтень",
          "Листопад",
          "Грудень",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Щорічно",
      "Щоденно",
      "Щоквартально",
      "Щомісячно",
      "Щотижнево",
      "Іноді",
      "Ніколи",
      "Один раз",
      "Рідко",
      "Часто",
    ];
  }
}

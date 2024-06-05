import 'package:imitatio/src/datasets/models/date.dart';

class RuDateData extends DateDataset {
  RuDateData();

  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Пн.",
          "Вт.",
          "Ср.",
          "Чт.",
          "Пт.",
          "Сб.",
          "Вс.",
        ],
      false => const [
          "Понедельник",
          "Вторник",
          "Среда",
          "Четверг",
          "Пятница",
          "Суббота",
          "Воскресенье",
        ]
    };
  }

  @override
  Map<String, String> get formats {
    return const {
      "date": "%d.%m.%Y",
      "time": "%H:%M:%S",
    };
  }

  @override
  List<String> months({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Янв.",
          "Фев.",
          "Мар.",
          "Апр.",
          "Май.",
          "Июн.",
          "Июл.",
          "Авг.",
          "Сен.",
          "Окт.",
          "Ноя.",
          "Дек.",
        ],
      false => const [
          "Январь",
          "Февраль",
          "Март",
          "Апрель",
          "Май",
          "Июнь",
          "Июль",
          "Август",
          "Сентябрь",
          "Октябрь",
          "Ноябрь",
          "Декабрь",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Ежегодно",
      "Ежедневно",
      "Ежеквартально",
      "Ежемесячно",
      "Еженедельно",
      "Иногда",
      "Никогда",
      "Однажды",
      "Редко",
      "Часто",
    ];
  }
}

import 'package:imitatio/src/datasets/models/date.dart';

class RuDateData extends DateDataset {
  RuDateData();

  @override
  Map<String, List<String>> get day {
    return const {
      "abbr": [
        "Пн.",
        "Вт.",
        "Ср.",
        "Чт.",
        "Пт.",
        "Сб.",
        "Вс.",
      ],
      "name": [
        "Понедельник",
        "Вторник",
        "Среда",
        "Четверг",
        "Пятница",
        "Суббота",
        "Воскресенье",
      ],
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
  Map<String, List<String>> get month {
    return const {
      "abbr": [
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
      "name": [
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
  List<String> get periodicity {
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

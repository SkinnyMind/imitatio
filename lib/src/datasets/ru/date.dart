import 'package:imitatio/src/datasets/models/date.dart';

class RuDateData extends DateDataset {
  RuDateData();

  @override
  final Map<String, List<String>> day = const {
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

  @override
  final formats = const <String, String>{
    "date": "%d.%m.%Y",
    "time": "%H:%M:%S",
  };

  @override
  final month = const <String, List<String>>{
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

  @override
  final periodicity = const <String>[
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

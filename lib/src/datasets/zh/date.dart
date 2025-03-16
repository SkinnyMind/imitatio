import 'package:imitatio/src/datasets/models/date.dart';

class ZhDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["一", "二", "三", "四", "五", "六", "日"],
      false => const ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
    };
  }

  @override
  String formatDate({
    required String year,
    required String month,
    required String day,
  }) {
    return '$year-$month-$day';
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
        "一月",
        "二月",
        "三月",
        "四月",
        "五月",
        "六月",
        "七月",
        "八月",
        "九月",
        "十月",
        "十一月",
        "十二月",
      ],
      false => const [
        "一月",
        "二月",
        "三月",
        "四月",
        "五月",
        "六月",
        "七月",
        "八月",
        "九月",
        "十月",
        "十一月",
        "十二月",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const ["一直", "通常", "经常", "有时", "很少", "几乎不", "从不"];
  }
}

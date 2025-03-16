import 'package:imitatio/src/datasets/models/date.dart';

class KoDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["월", "화", "수", "목", "금", "토", "일"],
      false => const ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
    };
  }

  @override
  String formatDate({
    required String year,
    required String month,
    required String day,
  }) {
    return '$year/$month/$day';
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
        "1월",
        "2월",
        "3월",
        "4월",
        "5월",
        "6월",
        "7월",
        "8월",
        "9월",
        "10월",
        "11월",
        "12월",
      ],
      false => const [
        "1월",
        "2월",
        "3월",
        "4월",
        "5월",
        "6월",
        "7월",
        "8월",
        "9월",
        "10월",
        "11월",
        "12월",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const ["한 번", "전혀", "가끔", "자주", "매일", "매주", "매달", "매년"];
  }
}

import 'package:imitatio/src/datasets/models/date.dart';

class ArSyDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "س",
          "ح",
          "ن",
          "ث",
          "ر",
          "خ",
          "ج",
        ],
      false => const [
          "السبت",
          "الأحد",
          "الإثنين",
          "الثلاثاء",
          "الأربعاء",
          "الخميس",
          "الجمعة",
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
          "كانون الثاني",
          "شباط",
          "آذار",
          "نيسان",
          "أيار",
          "حزيران",
          "تموز",
          "آب",
          "أيلول",
          "تشرين الأول",
          "تشرين الثاني",
          "كانون الأول",
        ],
      false => const [
          "كانون الثاني",
          "شباط",
          "آذار",
          "نيسان",
          "أيار",
          "حزيران",
          "تموز",
          "آب",
          "أيلول",
          "تشرين الأول",
          "تشرين الثاني",
          "كانون الأول",
        ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "سنوي",
      "أسبوعي",
      "أبداً",
      "شهري",
      "نادراً",
      "غالباً",
      "يوميًا",
      "مرة واحدة",
    ];
  }
}

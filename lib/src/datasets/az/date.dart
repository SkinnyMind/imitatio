import 'package:imitatio/src/datasets/models/date.dart';

class AzDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["B.e.", "Ç.a.", "Ç.", "C.a.", "C.", "Ş.", "B."],
      false => const [
        "Bazar Ertəsi",
        "Çərşənbə Axşamı",
        "Çərşənbə",
        "Cümə Axşamı",
        "Cümə",
        "Şənbə",
        "Bazar",
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
        "Yan.",
        "Fev.",
        "Mar.",
        "Apr.",
        "May.",
        "İyn.",
        "İyl.",
        "Avq.",
        "Sen.",
        "Okt.",
        "Noy.",
        "Dek.",
      ],
      false => const [
        "Yanvar",
        "Fevral",
        "Mart",
        "Aprel",
        "May",
        "İyun",
        "İyul",
        "Avqust",
        "Sentyabr",
        "Oktyabr",
        "Noyabr",
        "Dekabr",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Bir dəfə",
      "Heç",
      "Tez-tez",
      "Günlük",
      "Həftəlik",
      "Aylıq",
      "İllik",
    ];
  }
}

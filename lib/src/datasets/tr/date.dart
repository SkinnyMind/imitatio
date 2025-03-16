import 'package:imitatio/src/datasets/models/date.dart';

class TrDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Pzt.", "Sal.", "Çrş.", "Prş.", "Cum.", "Cts.", "Paz."],
      false => const [
        "Pazartesi",
        "Salı",
        "Çarşamba",
        "Perşembe",
        "Cuma",
        "Cumartesi",
        "Pazar",
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
        "Ock.",
        "Şbt.",
        "Mar.",
        "Nsn.",
        "May.",
        "Haz.",
        "Tem.",
        "Ağs.",
        "Eyl.",
        "Ekm.",
        "Kas.",
        "Arl.",
      ],
      false => const [
        "Ocak",
        "Şubat",
        "Mart",
        "Nisan",
        "Mayıs",
        "Haziran",
        "Temmuz",
        "Ağustos",
        "Eylül",
        "Ekim",
        "Kasım",
        "Aralık",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Bir kere",
      "Hiç",
      "Sıklıkla",
      "Günlük",
      "Haftalık",
      "Aylık",
      "Yıllık",
    ];
  }
}

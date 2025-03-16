import 'package:imitatio/src/datasets/models/date.dart';

class EnAuDateData extends DateDataset {
  @override
  List<String> days({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["Fri.", "Mon.", "Sat", "Sun.", "Thu.", "Tue.", "Wed."],
      false => const [
        "Friday",
        "Monday",
        "Saturday",
        "Sunday",
        "Thursday",
        "Tuesday",
        "Wednesday",
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
        "Jan.",
        "Feb.",
        "Mar.",
        "Apr.",
        "May.",
        "Jun.",
        "Jul.",
        "Aug.",
        "Sept.",
        "Oct.",
        "Nov.",
        "Dec.",
      ],
      false => [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
      ],
    };
  }

  @override
  List<String> get periodicities {
    return const [
      "Daily",
      "Monthly",
      "Never",
      "Often",
      "Once",
      "Seldom",
      "Weekly",
      "Yearly",
    ];
  }
}

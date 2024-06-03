import 'package:imitatio/src/datasets/models/date.dart';

class EnDateData extends DateDataset {
  EnDateData();

  @override
  List<String> day({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "Fri.",
          "Mon.",
          "Sat",
          "Sun.",
          "Thu.",
          "Tue.",
          "Wed.",
        ],
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
  Map<String, String> get formats {
    return const {
      "date": "%m/%d/%Y",
      "time": "%H:%M:%S",
    };
  }

  @override
  List<String> month({required bool isAbbr}) {
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
  List<String> get periodicity {
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

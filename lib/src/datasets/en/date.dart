import 'package:imitatio/src/datasets/models/date.dart';

class EnDateData extends DateDataset {
  EnDateData();

  @override
  Map<String, List<String>> get day {
    return const {
      "abbr": [
        "Fri.",
        "Mon.",
        "Sat",
        "Sun.",
        "Thu.",
        "Tue.",
        "Wed.",
      ],
      "name": [
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
  Map<String, List<String>> get month {
    return const {
      "abbr": [
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
      "name": [
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

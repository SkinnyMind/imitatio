import 'package:imitatio/src/datasets/models/date.dart';

class EnDateData extends DateDataset {
  EnDateData();

  @override
  final day = const <String, List<String>>{
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

  @override
  final formats = const <String, String>{
    "date": "%m/%d/%Y",
    "time": "%H:%M:%S",
  };

  @override
  final month = const <String, List<String>>{
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

  @override
  final periodicity = const <String>[
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

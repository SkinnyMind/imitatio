import 'package:imitatio/src/enums.dart';

/// Provides all the data related to science.
class IntScienceData {
  const IntScienceData._();

  static List<String> prefixes(MetricPrefixSign sign) {
    return switch (sign) {
      MetricPrefixSign.negative => const [
          "deci",
          "centi",
          "milli",
          "micro",
          "nano",
          "pico",
          "femto",
          "atto",
          "zepto",
          "yocto",
        ],
      MetricPrefixSign.positive => const [
          "yotta",
          "zetta",
          "exa",
          "peta",
          "tera",
          "giga",
          "mega",
          "kilo",
          "hecto",
          "deca",
        ]
    };
  }

  static List<String> prefixesSymbols(MetricPrefixSign sign) {
    return switch (sign) {
      MetricPrefixSign.negative => const [
          "d",
          "c",
          "m",
          "μ",
          "n",
          "p",
          "f",
          "a",
          "z",
          "y",
        ],
      MetricPrefixSign.positive => const [
          "Y",
          "Z",
          "E",
          "P",
          "T",
          "G",
          "M",
          "k",
          "h",
          "da",
        ]
    };
  }
}

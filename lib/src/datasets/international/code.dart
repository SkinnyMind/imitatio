import 'package:imitatio/src/enums.dart';

/// Provides all data related to the codes.
class IntCodeData {
  const IntCodeData._();

  static const localeCodes = <String>[
    "af",
    "ar-ae",
    "ar-bh",
    "ar-dz",
    "ar-eg",
    "ar-iq",
    "ar-jo",
    "ar-kw",
    "ar-lb",
    "ar-ly",
    "ar-ma",
    "ar-om",
    "ar-qa",
    "ar-sa",
    "ar-sy",
    "ar-tn",
    "ar-ye",
    "be",
    "bg",
    "ca",
    "cs",
    "da",
    "de",
    "de-at",
    "de-ch",
    "de-li",
    "de-lu",
    "el",
    "en",
    "en-au",
    "en-bz",
    "en-ca",
    "en-gb",
    "en-ie",
    "en-jm",
    "en-nz",
    "en-tt",
    "en-us",
    "en-za",
    "es",
    "es-ar",
    "es-bo",
    "es-cl",
    "es-co",
    "es-cr",
    "es-do",
    "es-ec",
    "es-gt",
    "es-hn",
    "es-mx",
    "es-ni",
    "es-pa",
    "es-pe",
    "es-pr",
    "es-py",
    "es-sv",
    "es-uy",
    "es-ve",
    "et",
    "eu",
    "fa",
    "fi",
    "fo",
    "fr",
    "fr-be",
    "fr-ca",
    "fr-ch",
    "fr-lu",
    "ga",
    "gd",
    "he",
    "hi",
    "hr",
    "hu",
    "id",
    "is",
    "it",
    "it-ch",
    "ja",
    "ji",
    "ko",
    "ko",
    "lt",
    "lv",
    "mk",
    "ms",
    "mt",
    "nl",
    "nl-be",
    "no",
    "no",
    "pl",
    "pt",
    "pt-br",
    "rm",
    "ro",
    "ro-mo",
    "ru",
    "ru-mo",
    "sb",
    "sk",
    "sl",
    "sq",
    "sr",
    "sr",
    "sv",
    "sv-fi",
    "sx",
    "sz",
    "th",
    "tn",
    "tr",
    "ts",
    "uk",
    "ur",
    "ve",
    "vi",
    "xh",
    "zh-cn",
    "zh-hk",
    "zh-sg",
    "zh-tw",
    "zu",
  ];

  static const imeiTacs = <String>[
    "01124500",
    "01161200",
    "01194800",
    "01233600",
    "01300600",
    "01332700",
    "35875505",
    "35881505",
    "35925406",
    "35325807",
    "35391805",
    "35824005",
    "35896704",
    "35803106",
    "35838706",
    "35929005",
    "35089080",
    "35154900",
    "35920605",
    "35699601",
    "35316004",
    "35909205",
    "35328504",
    "35332705",
    "35316605",
    "35744105",
    "32930400",
    "35171005",
    "35511405",
  ];

  static String isbnGroups({required Locale locale}) {
    return switch (locale) {
      Locale.cs => "80",
      Locale.da => "87",
      Locale.de_at => "3",
      Locale.de_ch => "3",
      Locale.de => "3",
      Locale.el => "618",
      Locale.en_au => "1",
      Locale.en_ca => "1",
      Locale.en_gb => "1",
      Locale.en => "1",
      Locale.es_mx => "607",
      Locale.es => "84",
      Locale.et => "9949",
      Locale.fa => "600",
      Locale.fi => "951",
      Locale.fr => "2",
      Locale.hr => "385",
      Locale.hu => "615",
      Locale.isl => "9935",
      Locale.it => "88",
      Locale.ja => "4",
      Locale.kk => "601",
      Locale.ko => "89",
      Locale.nl_be => "90",
      Locale.nl => "90",
      Locale.no => "82",
      Locale.pl => "83",
      Locale.pt_br => "85",
      Locale.ru => "5",
    };
  }
}

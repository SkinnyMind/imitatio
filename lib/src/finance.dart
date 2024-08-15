import 'dart:math';

import 'package:imitatio/src/datasets/finance.dart';
import 'package:imitatio/src/datasets/international/finance.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';

class Finance {
  /// Provides finance and business related data.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Finance({this.locale = Locale.en, this.seed});

  final Locale locale;
  final int? seed;

  /// Returns a random company name.
  ///
  /// Example:
  /// ```dart
  /// Finance().company; // "Alcoa"
  /// ```
  String get company {
    final data = FinanceData.locale(locale).companies;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random type of business entity.
  ///
  /// [isAbbr] is optional company type abbreviation (default is false).
  ///
  /// Example:
  /// ```dart
  /// Finance().companyType(); // "Limited Liability Partnership"
  /// Finance().companyType(isAbbr: true); // "LLP"
  /// ```
  String companyType({bool isAbbr = false}) {
    final data = FinanceData.locale(locale).companyTypes(isAbbr: isAbbr);
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a currency code for current [locale].
  ///
  /// [allowRandom] determines whether to return random ISO code (default is
  /// false).
  ///
  /// Example:
  /// ```dart
  /// Finance().currencyIsoCode(); // "USD"
  /// Finance().currencyIsoCode(allowRandom: true); // "CLP"
  /// ```
  String currencyIsoCode({bool allowRandom = false}) {
    if (allowRandom) {
      final data = IntFinanceData.currencyIsoCodes;
      return data[Random(seed).integer(max: data.length - 1)];
    } else {
      return FinanceData.locale(locale).currencyCode;
    }
  }

  /// Returns a random bank name.
  ///
  /// Example:
  /// ```dart
  /// Finance().bank; // "Summit Financial Group"
  /// ```
  String get bank {
    final data = FinanceData.locale(locale).banks;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random cryptocurrency ISO code.
  ///
  /// Example:
  /// ```dart
  /// Finance().cryptocurrencyIsoCode; // "DOT"
  /// ```
  String get cryptocurrencyIsoCode {
    final data = IntFinanceData.cryptocurrencyIsoCodes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a currency symbol for current [locale].
  ///
  /// Example:
  /// ```dart
  /// Finance().currencySymbol; // "$"
  /// ```
  String get currencySymbol => FinanceData.locale(locale).currencySymbol;

  /// Returns a cryptocurrency symbol.
  ///
  /// Example:
  /// ```dart
  /// Finance().cryptocurrencySymbol; // "₿"
  /// ```
  String get cryptocurrencySymbol {
    final data = IntFinanceData.cryptocurrencySymbols;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random stock ticker.
  ///
  /// Example:
  /// ```dart
  /// Finance().stockTicker; // "SMMCW"
  /// ```
  String get stockTicker {
    final data = IntFinanceData.stockTickers;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random stock name.
  ///
  /// Example:
  /// ```dart
  /// Finance().stockName; // "Loncar Cancer Immunotherapy ETF"
  /// ```
  String get stockName {
    final data = IntFinanceData.stockNames;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random stock exchange.
  ///
  /// Example:
  /// ```dart
  /// Finance().stockExchange; // "NASDAQ"
  /// ```
  String get stockExchange {
    final data = IntFinanceData.stockExchanges;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random price.
  ///
  /// [min] is optional minimum value of price (default is 500).
  ///
  /// [max] is optional maximum value of price (default is 1500).
  ///
  /// Example:
  /// ```dart
  /// Finance().price(); // 722.37
  /// Finance().price(min: 10.0, max: 15.0); // 13.37
  /// ```
  double price({double min = 500.0, double max = 1500.0}) {
    return double.parse(
      (Random(seed).nextDouble() * (max - min) + min).toStringAsFixed(2),
    );
  }

  /// Returns a random price in BTC.
  ///
  /// [min] is optional minimum value of price (default is 0).
  ///
  /// [max] is optional maximum value of price (default is 2).
  ///
  /// Example:
  /// ```dart
  /// Finance().priceInBTC(); // 0.9743798
  /// Finance().priceInBTC(min: 10.0, max: 15.0); // 14.6666517
  /// ```
  double priceInBTC({double min = 0.0, double max = 2.0}) {
    return double.parse(
      (Random(seed).nextDouble() * (max - min) + min).toStringAsFixed(7),
    );
  }
}

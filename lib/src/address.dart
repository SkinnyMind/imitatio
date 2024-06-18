import 'dart:math';

import 'package:imitatio/src/datasets/address.dart';
import 'package:imitatio/src/datasets/international/address.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/rng.dart';

/// Provides data related to geographical location.
class Address {
  /// Provides data related to geographical location.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Address({this.locale = Locale.en, this.seed});

  final Locale locale;

  final int? seed;

  /// Returns a random street number.
  ///
  /// [max] is optional maximum number (default is 1400).
  ///
  /// Example:
  /// ```dart
  /// Address().streetNumber(); // 420
  /// Address().streetNumber(max: 1); // 1
  /// ```
  int streetNumber({int max = 1400}) {
    return Random(seed).nextInt(max) + 1;
  }

  /// Returns a random street name.
  ///
  /// Example:
  /// ```dart
  /// Address().streetName; // "Stanley"
  /// ```
  String get streetName {
    final data = AddressData.locale(locale).streets(isSuffix: false);
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random street suffix.
  ///
  /// Example:
  /// ```dart
  /// Address().streetSuffix; // "Motorway"
  /// ```
  String get streetSuffix {
    final data = AddressData.locale(locale).streets(isSuffix: true);
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random full address.
  ///
  /// Example:
  /// ```dart
  /// Address().address; // "160 Cayuga Place"
  /// ```
  String get address {
    return AddressData.locale(locale).formatAddress(
      suffix: streetSuffix,
      name: streetName,
      number: streetNumber(),
    );
  }

  /// Returns a random administrative district of the country.
  ///
  /// [isAbbr] determines whether to return ISO 3166-2 code or not
  /// (default is false).
  ///
  /// Example:
  /// ```dart
  /// Address().state(); // "South Dakota"
  /// Address().state(isAbbr: true); // "SC"
  /// ```
  String state({bool isAbbr = false}) {
    final data = AddressData.locale(locale).states(isAbbr: isAbbr);
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a postal code for provided [locale].
  ///
  /// Example:
  /// ```dart
  /// Address().postalCode; // "44601"
  /// ```
  String get postalCode {
    final mask = AddressData.locale(locale).postalCodeFormat;
    return Rng.customCode(mask: mask, seed: seed);
  }

  /// Returns a random country.
  ///
  /// Example:
  /// ```dart
  /// Address().country; // "Portugal"
  /// ```
  String get country {
    final data = AddressData.locale(locale).countries;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random city.
  ///
  /// Example:
  /// ```dart
  /// Address().city; // "Lynwood"
  /// ```
  String get city {
    final data = AddressData.locale(locale).cities;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random continent name or continent code.
  ///
  /// [asCode] determines whether to return continent code (default is false).
  ///
  /// Example:
  /// ```dart
  /// Address().continent(); // "Australia"
  /// Address().continent(asCode: true); // "AN"
  /// ```
  String continent({bool asCode = false}) {
    final data = asCode
        ? IntAddressData.continentCodes
        : AddressData.locale(locale).continents;

    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random calling code of random country.
  ///
  /// Example:
  /// ```dart
  /// Address().callingCode; // "+92"
  /// ```
  String get callingCode {
    final data = IntAddressData.callingCodes;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random a random IATA code.
  ///
  /// Example:
  /// ```dart
  /// Address().iataCode; // "NUW"
  /// ```
  String get iataCode {
    final data = IntAddressData.iataCodes;
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random a random ICAO code.
  ///
  /// Example:
  /// ```dart
  /// Address().icaoCode; // "EGTE"
  /// ```
  String get icaoCode {
    final data = IntAddressData.icaoCodes;
    return data[Random(seed).nextInt(data.length)];
  }
}

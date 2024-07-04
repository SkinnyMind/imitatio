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

  /// Returns a random street suffix if [locale] has any.
  ///
  /// Example:
  /// ```dart
  /// Address().streetSuffix; // "Motorway"
  /// Address(locale: Locale.de_ch).streetSuffix; // ""
  /// ```
  String get streetSuffix {
    final data = AddressData.locale(locale).streets(isSuffix: true);
    return data.isNotEmpty ? data[Random(seed).nextInt(data.length)] : '';
  }

  /// Returns a random full address.
  ///
  /// Example:
  /// ```dart
  /// Address().address; // "160 Cayuga Place"
  /// ```
  String get address {
    if (locale == Locale.ja) {
      final random = Random(seed);
      final numbers = List.generate(3, (_) => random.nextInt(100) + 1);
      return '$city ${numbers.join('-')}';
    }

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

  /// Returns a random code of country.
  ///
  /// [code] is optional format (default is [CountryCode.a2]).
  ///
  /// Example:
  /// ```dart
  /// Address().countryCode(); // "AM"
  /// Address().countryCode(code: CountryCode.numeric); // "850"
  /// ```
  String countryCode({CountryCode code = CountryCode.a2}) {
    final data = IntAddressData.countryCodes(code: code);
    return data[Random(seed).nextInt(data.length)];
  }

  /// Returns a random value of latitude.
  ///
  /// [asDMS] determines whether to return value in DMS
  /// (degrees, minutes, seconds) format (default is false).
  ///
  /// Example:
  /// ```dart
  /// Address().latitude(); // "45.881565"
  /// Address().latitude(asDMS: true); // "11°21'1.823''"
  /// ```
  String latitude({bool asDMS = false}) {
    final random = Random(seed);
    final sign = random.nextBool() ? '' : '-';
    final result = random.nextDouble() * 90;
    return asDMS
        ? _convertToDMS(value: result)
        : '$sign${result.toStringAsFixed(6)}';
  }

  /// Returns a random value of longitude.
  ///
  /// [asDMS] determines whether to return value in DMS
  /// (degrees, minutes, seconds) format (default is false).
  ///
  /// Example:
  /// ```dart
  /// Address().longitude(); // "156.296879"
  /// Address().longitude(asDMS: true); // "63°13'22.104''"
  /// ```
  String longitude({bool asDMS = false}) {
    final random = Random(seed);
    final sign = random.nextBool() ? '' : '-';
    final result = random.nextDouble() * 180;
    return asDMS
        ? _convertToDMS(value: result)
        : '$sign${result.toStringAsFixed(6)}';
  }

  /// Returns a random geo coordinates.
  ///
  /// [asDMS] determines whether to return values in DMS
  /// (degrees, minutes, seconds) format (default is false).
  ///
  /// Example:
  /// ```dart
  /// Address().coordinates(); // (latitude: -20.642075, longitude: 74.359326)
  /// Address().coordinates(asDMS: true); // (latitude: 22°52'54.597'', longitude: 57°9'30.192'')
  /// ```
  ({String latitude, String longitude}) coordinates({bool asDMS = false}) {
    return (
      latitude: latitude(asDMS: asDMS),
      longitude: longitude(asDMS: asDMS),
    );
  }

  /// Converts decimal degrees to DMS format.
  String _convertToDMS({required double value}) {
    final degrees = value.toInt();
    final part = value - degrees;
    final minutes = (part * 60).toInt();
    final seconds = ((3600 * part) - (60 * minutes)).toStringAsFixed(3);
    return "$degrees°$minutes'$seconds''";
  }
}

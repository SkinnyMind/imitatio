import 'dart:math';

import 'package:imitatio/src/datasets/address.dart';
import 'package:imitatio/src/datasets/international/address.dart';
import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/rng.dart';

/// Provides data related to geographical location.
class Address {
  const Address._();

  /// Returns a random street number.
  ///
  /// [max] is optional maximum number (default is 1400).
  ///
  /// Example:
  /// ```dart
  /// Address.streetNumber(); // 420
  /// Address.streetNumber(max: 1); // 1
  /// ```
  static int streetNumber({int max = 1400}) {
    return Random().nextInt(max) + 1;
  }

  /// Returns a random street name.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Address.streetName(); // "Stanley"
  /// ```
  static String streetName({Locale locale = Locale.en}) {
    final data = AddressData.locale(locale).streets(isSuffix: false);
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random street suffix.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Address.streetSuffix(); // "Motorway"
  /// ```
  static String streetSuffix({Locale locale = Locale.en}) {
    final data = AddressData.locale(locale).streets(isSuffix: true);
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random full address.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Address.address(); // "160 Cayuga Place"
  /// ```
  static String address({Locale locale = Locale.en}) {
    return AddressData.locale(locale).formatAddress(
      suffix: Address.streetSuffix(locale: locale),
      name: Address.streetName(locale: locale),
      number: Address.streetNumber(),
    );
  }

  /// Returns a random administrative district of the country.
  ///
  /// [isAbbr] determines whether to return ISO 3166-2 code or not
  /// (default is false).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Address.state(); // "South Dakota"
  /// Address.state(isAbbr: true); // "SC"
  /// ```
  static String state({bool isAbbr = false, Locale locale = Locale.en}) {
    final data = AddressData.locale(locale).states(isAbbr: isAbbr);
    return data[Random().nextInt(data.length)];
  }

  /// Returns a postal code for provided [locale].
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Address.postalCode(); // "44601"
  /// ```
  static String postalCode({Locale locale = Locale.en}) {
    final mask = AddressData.locale(locale).postalCodeFormat;
    return Rng.customCode(mask: mask);
  }

  /// Returns a random country.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Address.country(); // "Portugal"
  /// ```
  static String country({Locale locale = Locale.en}) {
    final data = AddressData.locale(locale).countries;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random city.
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Address.city(); // "Lynwood"
  /// ```
  static String city({Locale locale = Locale.en}) {
    final data = AddressData.locale(locale).cities;
    return data[Random().nextInt(data.length)];
  }

  /// Returns a random continent name or continent code.
  ///
  /// [asCode] determines whether to return continent code (default is false).
  ///
  /// [locale] is optional [Locale] (default is [Locale.en]).
  ///
  /// Example:
  /// ```dart
  /// Address.continent(); // "Australia"
  /// Address.continent(asCode: true); // "AN"
  /// ```
  static String continent({bool asCode = false, Locale locale = Locale.en}) {
    final data = asCode
        ? IntAddressData.continentCodes
        : AddressData.locale(locale).continents;

    return data[Random().nextInt(data.length)];
  }

  /// Returns a random calling code of random country.
  ///
  /// Example:
  /// ```dart
  /// Address.callingCode(); // "+92"
  /// ```
  static String callingCode() {
    final data = IntAddressData.callingCodes;
    return data[Random().nextInt(data.length)];
  }
}

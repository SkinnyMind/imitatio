import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/address.dart';
import 'package:imitatio/src/datasets/international/address.dart';
import 'package:test/test.dart';

void main() {
  group('Address', () {
    const address = Address();
    const locale = Locale.ru;
    const localeAddress = Address(locale: locale);
    const seededAddress = Address(seed: 1);

    test('returns street number', () async {
      final result = address.streetNumber();
      expect((result >= 1) && (result <= 1400), true);
      expect(address.streetNumber(max: 1) == 1, true);
      expect(
        seededAddress.streetNumber(),
        equals(seededAddress.streetNumber()),
      );
    });

    test('returns street name', () async {
      expect(
        AddressData.locale(Locale.en).streets(isSuffix: false),
        contains(address.streetName),
      );

      expect(
        AddressData.locale(locale).streets(isSuffix: false),
        contains(localeAddress.streetName),
      );

      expect(
        seededAddress.streetName,
        equals(seededAddress.streetName),
      );
    });

    test('returns street suffix', () async {
      expect(
        AddressData.locale(Locale.en).streets(isSuffix: true),
        contains(address.streetSuffix),
      );

      expect(
        AddressData.locale(locale).streets(isSuffix: true),
        contains(localeAddress.streetSuffix),
      );

      expect(
        seededAddress.streetSuffix,
        equals(seededAddress.streetSuffix),
      );
    });

    test('returns full address', () async {
      expect(address.address, isNotEmpty);
      expect(
        seededAddress.address,
        equals(seededAddress.address),
      );
    });

    test('returns state', () async {
      expect(
        AddressData.locale(Locale.en).states(isAbbr: false),
        contains(address.state()),
      );

      expect(
        AddressData.locale(locale).states(isAbbr: true),
        contains(localeAddress.state(isAbbr: true)),
      );

      expect(
        seededAddress.state(),
        equals(seededAddress.state()),
      );
    });

    test('returns postal code', () async {
      expect(address.postalCode, isNotEmpty);
      expect(localeAddress.postalCode.length, 6);

      expect(
        seededAddress.postalCode,
        equals(seededAddress.postalCode),
      );
    });

    test('returns country', () async {
      expect(
        AddressData.locale(Locale.en).countries,
        contains(address.country),
      );

      expect(
        AddressData.locale(locale).countries,
        contains(localeAddress.country),
      );

      expect(
        seededAddress.country,
        equals(seededAddress.country),
      );
    });

    test('returns city', () async {
      expect(
        AddressData.locale(Locale.en).cities,
        contains(address.city),
      );

      expect(
        AddressData.locale(locale).cities,
        contains(localeAddress.city),
      );

      expect(
        seededAddress.city,
        equals(seededAddress.city),
      );
    });

    test('returns continent', () async {
      expect(
        AddressData.locale(Locale.en).continents,
        contains(address.continent()),
      );
      expect(
        IntAddressData.continentCodes,
        contains(address.continent(asCode: true)),
      );

      expect(
        AddressData.locale(locale).continents,
        contains(localeAddress.continent()),
      );
      expect(
        IntAddressData.continentCodes,
        contains(localeAddress.continent(asCode: true)),
      );

      expect(
        seededAddress.continent(),
        equals(seededAddress.continent()),
      );
    });

    test('returns calling code', () async {
      expect(
        IntAddressData.callingCodes,
        contains(address.callingCode),
      );
      expect(
        seededAddress.callingCode,
        equals(seededAddress.callingCode),
      );
    });

    test('returns IATA code', () async {
      expect(
        IntAddressData.iataCodes,
        contains(address.iataCode),
      );
      expect(
        seededAddress.iataCode,
        equals(seededAddress.iataCode),
      );
    });

    test('returns ICAO code', () async {
      expect(
        IntAddressData.icaoCodes,
        contains(address.icaoCode),
      );
      expect(
        seededAddress.icaoCode,
        equals(seededAddress.icaoCode),
      );
    });

    test('returns country code', () async {
      expect(
        IntAddressData.countryCodes(code: CountryCode.a2),
        contains(address.countryCode()),
      );

      final code = CountryCode.numeric;
      expect(
        IntAddressData.countryCodes(code: code),
        contains(address.countryCode(code: code)),
      );

      expect(
        seededAddress.countryCode(),
        equals(seededAddress.countryCode()),
      );
    });

    test('returns latitude', () async {
      final result = double.parse(address.latitude());
      expect((result >= -90.0) && (result <= 90.0), true);

      expect(address.latitude(asDMS: true), isNotEmpty);

      expect(
        seededAddress.latitude(),
        equals(seededAddress.latitude()),
      );
    });

    test('returns longitude', () async {
      final result = double.parse(address.longitude());
      expect((result >= -180.0) && (result <= 180.0), true);

      expect(address.longitude(asDMS: true), isNotEmpty);

      expect(
        seededAddress.longitude(),
        equals(seededAddress.longitude()),
      );
    });

    test('returns coordinates', () async {
      final result = address.coordinates();
      final lat = double.parse(result.latitude);
      final long = double.parse(result.longitude);
      expect((lat >= -90.0) && (lat <= 90.0), true);
      expect((long >= -180.0) && (long <= 180.0), true);

      expect(address.coordinates(asDMS: true), isA<Record>());

      expect(
        seededAddress.coordinates(),
        equals(seededAddress.coordinates()),
      );
    });
  });
}

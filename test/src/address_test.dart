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

    test('returns street number', () {
      final result = address.streetNumber();
      expect(result, inInclusiveRange(1, 1400));
      expect(address.streetNumber(max: 1), equals(1));
      expect(
        seededAddress.streetNumber(),
        equals(seededAddress.streetNumber()),
      );
    });

    test('returns street name', () {
      expect(
        AddressData.locale(Locale.en).streets(isSuffix: false),
        contains(address.streetName),
      );

      expect(
        AddressData.locale(locale).streets(isSuffix: false),
        contains(localeAddress.streetName),
      );

      expect(seededAddress.streetName, equals(seededAddress.streetName));
    });

    test('returns street suffix', () {
      expect(
        AddressData.locale(Locale.en).streets(isSuffix: true),
        contains(address.streetSuffix),
      );

      expect(
        AddressData.locale(locale).streets(isSuffix: true),
        contains(localeAddress.streetSuffix),
      );

      expect(seededAddress.streetSuffix, equals(seededAddress.streetSuffix));

      final noSuffixLocale = Locale.de_ch;
      expect(Address(locale: noSuffixLocale).streetSuffix, isEmpty);
    });

    test('returns full address', () {
      expect(address.address, isNotEmpty);
      expect(seededAddress.address, equals(seededAddress.address));

      final jaLocale = Locale.ja;
      final jaAddress = Address(locale: jaLocale, seed: 1);
      final result = jaAddress.address.split(' ');
      final city = result.first;
      expect(AddressData.locale(jaLocale).cities, contains(city));

      final numbers = result.last.split('-');
      expect(numbers.length, equals(3));
      for (final number in numbers) {
        expect(int.parse(number), isA<int>());
      }

      expect(jaAddress.address, equals(jaAddress.address));
    });

    test('returns state', () {
      expect(
        AddressData.locale(Locale.en).states(isAbbr: false),
        contains(address.state()),
      );

      expect(
        AddressData.locale(locale).states(isAbbr: true),
        contains(localeAddress.state(isAbbr: true)),
      );

      expect(seededAddress.state(), equals(seededAddress.state()));
    });

    test('returns postal code', () {
      expect(address.postalCode, isNotEmpty);
      expect(localeAddress.postalCode.length, equals(6));

      expect(seededAddress.postalCode, equals(seededAddress.postalCode));
    });

    test('returns country', () {
      expect(
        AddressData.locale(Locale.en).countries,
        contains(address.country),
      );

      expect(
        AddressData.locale(locale).countries,
        contains(localeAddress.country),
      );

      expect(seededAddress.country, equals(seededAddress.country));
    });

    test('returns city', () {
      expect(AddressData.locale(Locale.en).cities, contains(address.city));

      expect(AddressData.locale(locale).cities, contains(localeAddress.city));

      expect(seededAddress.city, equals(seededAddress.city));
    });

    test('returns continent', () {
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

      expect(seededAddress.continent(), equals(seededAddress.continent()));
    });

    test('returns calling code', () {
      expect(IntAddressData.callingCodes, contains(address.callingCode));
      expect(seededAddress.callingCode, equals(seededAddress.callingCode));
    });

    test('returns IATA code', () {
      expect(IntAddressData.iataCodes, contains(address.iataCode));
      expect(seededAddress.iataCode, equals(seededAddress.iataCode));
    });

    test('returns ICAO code', () {
      expect(IntAddressData.icaoCodes, contains(address.icaoCode));
      expect(seededAddress.icaoCode, equals(seededAddress.icaoCode));
    });

    test('returns country code', () {
      expect(
        IntAddressData.countryCodes(code: CountryCode.a2),
        contains(address.countryCode()),
      );

      final code = CountryCode.numeric;
      expect(
        IntAddressData.countryCodes(code: code),
        contains(address.countryCode(code: code)),
      );

      expect(seededAddress.countryCode(), equals(seededAddress.countryCode()));
    });

    test('returns latitude', () {
      final result = double.parse(address.latitude());
      expect(result, inInclusiveRange(-90.0, 90.0));

      expect(address.latitude(asDMS: true), isNotEmpty);

      expect(seededAddress.latitude(), equals(seededAddress.latitude()));
    });

    test('returns longitude', () {
      final result = double.parse(address.longitude());
      expect(result, inInclusiveRange(-180.0, 180.0));

      expect(address.longitude(asDMS: true), isNotEmpty);

      expect(seededAddress.longitude(), equals(seededAddress.longitude()));
    });

    test('returns coordinates', () {
      final result = address.coordinates();
      final lat = double.parse(result.latitude);
      final long = double.parse(result.longitude);
      expect(lat, inInclusiveRange(-90.0, 90.0));
      expect(long, inInclusiveRange(-180.0, 180.0));

      expect(address.coordinates(asDMS: true), isA<Record>());

      expect(seededAddress.coordinates(), equals(seededAddress.coordinates()));
    });
  });
}

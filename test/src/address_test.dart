import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/address.dart';
import 'package:imitatio/src/datasets/international/address.dart';
import 'package:test/test.dart';

void main() {
  group('Address', () {
    test('returns street number', () async {
      final result = Address.streetNumber();
      expect((result >= 1) && (result <= 1400), true);
      expect(Address.streetNumber(max: 1) == 1, true);
    });

    test('returns street name', () async {
      final noarg = Address.streetName();
      expect(
        AddressData.locale(Locale.en).streets(isSuffix: false).contains(noarg),
        true,
      );

      final locale = Locale.ru;
      final withLocale = Address.streetName(locale: locale);
      expect(
        AddressData.locale(locale)
            .streets(isSuffix: false)
            .contains(withLocale),
        true,
      );
    });

    test('returns street suffix', () async {
      final noarg = Address.streetSuffix();
      expect(
        AddressData.locale(Locale.en).streets(isSuffix: true).contains(noarg),
        true,
      );

      final locale = Locale.ru;
      final withLocale = Address.streetSuffix(locale: locale);
      expect(
        AddressData.locale(locale).streets(isSuffix: true).contains(withLocale),
        true,
      );
    });

    test('returns full address', () async {
      expect(Address.address(), isNotEmpty);
    });

    test('returns state', () async {
      final noarg = Address.state();
      expect(
        AddressData.locale(Locale.en).states(isAbbr: false).contains(noarg),
        true,
      );

      final locale = Locale.ru;
      final withArgs = Address.state(isAbbr: true, locale: locale);
      expect(
        AddressData.locale(locale).states(isAbbr: true).contains(withArgs),
        true,
      );
    });

    test('returns postal code', () async {
      expect(Address.postalCode(), isNotEmpty);
      expect(Address.postalCode(locale: Locale.ru).length, 6);
    });

    test('returns country', () async {
      expect(Address.country(), isNotEmpty);

      final locale = Locale.ru;
      final result = Address.country(locale: locale);
      expect(AddressData.locale(locale).countries.contains(result), true);
    });

    test('returns city', () async {
      expect(
        AddressData.locale(Locale.en).cities,
        contains(Address.city()),
      );

      final locale = Locale.ru;
      expect(
        AddressData.locale(locale).cities,
        contains(Address.city(locale: locale)),
      );
    });

    test('returns continent', () async {
      expect(
        AddressData.locale(Locale.en).continents,
        contains(Address.continent()),
      );
      expect(
        IntAddressData.continentCodes,
        contains(Address.continent(asCode: true)),
      );

      final locale = Locale.ru;
      expect(
        AddressData.locale(locale).continents,
        contains(Address.continent(locale: locale)),
      );
      expect(
        IntAddressData.continentCodes,
        contains(Address.continent(asCode: true, locale: locale)),
      );
    });

    test('returns calling code', () async {
      expect(
        IntAddressData.callingCodes,
        contains(Address.callingCode()),
      );
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/finance.dart';
import 'package:imitatio/src/datasets/international/finance.dart';
import 'package:test/test.dart';

void main() {
  group('Finance', () {
    const finance = Finance();
    const locale = Locale.ru;
    const localeFinance = Finance(locale: locale);
    const seededFinance = Finance(seed: 1);

    test('returns company name', () async {
      expect(
        FinanceData.locale(Locale.en).companies,
        contains(finance.company),
      );
      expect(
        FinanceData.locale(locale).companies,
        contains(localeFinance.company),
      );
      expect(seededFinance.company, equals(seededFinance.company));
    });

    test('returns company type', () async {
      expect(
        FinanceData.locale(Locale.en).companyTypes(isAbbr: false),
        contains(finance.companyType()),
      );
      expect(
        FinanceData.locale(Locale.en).companyTypes(isAbbr: true),
        contains(finance.companyType(isAbbr: true)),
      );

      expect(
        FinanceData.locale(locale).companyTypes(isAbbr: false),
        contains(localeFinance.companyType()),
      );

      expect(seededFinance.companyType(), equals(seededFinance.companyType()));
    });

    test('returns currency code', () async {
      expect(
        FinanceData.locale(Locale.en).currencyCode,
        equals(finance.currencyIsoCode()),
      );
      expect(
        IntFinanceData.currencyIsoCodes,
        contains(finance.currencyIsoCode(allowRandom: true)),
      );

      expect(
        FinanceData.locale(locale).currencyCode,
        equals(localeFinance.currencyIsoCode()),
      );

      expect(
        seededFinance.currencyIsoCode(allowRandom: true),
        equals(seededFinance.currencyIsoCode(allowRandom: true)),
      );
    });

    test('returns bank name', () async {
      expect(
        FinanceData.locale(Locale.en).banks,
        contains(finance.bank),
      );

      expect(
        FinanceData.locale(locale).banks,
        contains(localeFinance.bank),
      );

      expect(seededFinance.bank, equals(seededFinance.bank));
    });

    test('returns cryptocurrency ISO code', () async {
      expect(
        IntFinanceData.cryptocurrencyIsoCodes,
        contains(finance.cryptocurrencyIsoCode),
      );

      expect(
        seededFinance.cryptocurrencyIsoCode,
        equals(seededFinance.cryptocurrencyIsoCode),
      );
    });

    test('returns currency symbol', () async {
      expect(
        FinanceData.locale(Locale.en).currencySymbol,
        equals(finance.currencySymbol),
      );

      expect(
        FinanceData.locale(locale).currencySymbol,
        equals(localeFinance.currencySymbol),
      );
    });

    test('returns cryptocurrency symbol', () async {
      expect(
        IntFinanceData.cryptocurrencySymbols,
        contains(finance.cryptocurrencySymbol),
      );

      expect(
        seededFinance.cryptocurrencySymbol,
        equals(seededFinance.cryptocurrencySymbol),
      );
    });

    test('returns stock ticker', () async {
      expect(
        IntFinanceData.stockTickers,
        contains(finance.stockTicker),
      );

      expect(
        seededFinance.stockTicker,
        equals(seededFinance.stockTicker),
      );
    });

    test('returns stock name', () async {
      expect(
        IntFinanceData.stockNames,
        contains(finance.stockName),
      );

      expect(
        seededFinance.stockName,
        equals(seededFinance.stockName),
      );
    });

    test('returns stock exchange', () async {
      expect(
        IntFinanceData.stockExchanges,
        contains(finance.stockExchange),
      );

      expect(
        seededFinance.stockExchange,
        equals(seededFinance.stockExchange),
      );
    });

    test('returns price', () {
      final result = finance.price();
      expect(result, inInclusiveRange(500.0, 1500.0));

      final min = 10.0;
      final max = 15.0;
      final minMaxResult = finance.price(min: min, max: max);
      expect(minMaxResult, inInclusiveRange(min, max));

      final precisionDigits = minMaxResult.toString().split('.')[1];
      expect(precisionDigits.length, lessThanOrEqualTo(2));

      expect(seededFinance.price(), equals(seededFinance.price()));
    });

    test('returns price in BTC', () {
      final result = finance.priceInBTC();
      expect(result, inInclusiveRange(0.0, 2.0));

      final min = 10.0;
      final max = 15.0;
      final minMaxResult = finance.priceInBTC(min: min, max: max);
      expect(minMaxResult, inInclusiveRange(min, max));

      final precisionDigits = minMaxResult.toString().split('.')[1];
      expect(precisionDigits.length, lessThanOrEqualTo(7));

      expect(
        seededFinance.priceInBTC(),
        equals(seededFinance.priceInBTC()),
      );
    });
  });
}

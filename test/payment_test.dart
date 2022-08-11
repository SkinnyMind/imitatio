import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/payment.dart';
import 'package:test/test.dart';

void main() {
  group('Payment', () {
    const payment = Payment();

    test('returns CID code', () {
      expect(payment.cid().length, 4);
    });

    test('returns paypal account email', () {
      expect(payment.paypal(), isNotEmpty);
    });

    test('returns bitcoin address', () {
      final result = payment.bitcoinAddress();
      final type = int.parse(result[0]);
      expect(type >= 1 && type <= 3, true);
      expect(result.length, 34);
    });

    test('returns ethereum address', () {
      final result = payment.ethereumAddress();
      expect(RegExp(r'^0x([a-zA-Z0-9]{40})$').hasMatch(result), true);
    });

    test('returns credit card network', () {
      expect(
        PaymentData.creditCardNetworks.contains(payment.creditCardNetwork()),
        true,
      );
    });

    test('returns credit card number', () {
      for (final type in CardType.values) {
        expect(
          RegExp(r'[\d]+((-|\s)?[\d]+)+')
              .hasMatch(payment.creditCardNumber(cardType: type)),
          true,
        );
      }

      for (var i = 0; i < 10; i++) {
        final result = int.parse(
          payment
              .creditCardNumber(cardType: CardType.masterCard)
              .split(' ')
              .first,
        );
        expect(result >= 2221 && result <= 5599, true);
      }
    });

    test('returns credit card expiration date', () {
      final year = int.parse(
        payment.creditCardExpirationDate(min: 22, max: 27).split('/').last,
      );
      expect(year >= 22 && year <= 27, true);
    });

    test('returns CVV code', () {
      expect(payment.cvv().length, 3);
    });
  });
}

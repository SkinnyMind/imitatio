import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/payment.dart';
import 'package:test/test.dart';

void main() {
  group('Payment', () {
    test('returns CID code', () {
      expect(Payment.cid().length, 4);
    });

    test('returns paypal account email', () {
      expect(Payment.paypal(), isNotEmpty);
    });

    test('returns bitcoin address', () {
      final result = Payment.bitcoinAddress();
      final type = int.parse(result[0]);
      expect(type >= 1 && type <= 3, true);
      expect(result.length, 34);
    });

    test('returns ethereum address', () {
      final result = Payment.ethereumAddress();
      expect(RegExp(r'^0x([a-f0-9]{40})$').hasMatch(result), true);
    });

    test('returns credit card network', () {
      expect(
        PaymentData.creditCardNetworks.contains(Payment.creditCardNetwork()),
        true,
      );
    });

    test('returns credit card number', () {
      for (final type in CardType.values) {
        expect(
          RegExp(r'[\d]+((-|\s)?[\d]+)+')
              .hasMatch(Payment.creditCardNumber(cardType: type)),
          true,
        );
      }

      for (var i = 0; i < 10; i++) {
        final result = int.parse(
          Payment.creditCardNumber(cardType: CardType.masterCard)
              .split(' ')
              .first,
        );
        expect(result >= 2221 && result <= 5599, true);
      }
    });

    test('returns credit card expiration date', () {
      final year = int.parse(
        Payment.creditCardExpirationDate(min: 22, max: 27).split('/').last,
      );
      expect(year >= 22 && year <= 27, true);
    });

    test('returns CVV code', () {
      expect(Payment.cvv().length, 3);
    });

    test('returns credit card owner', () {
      final result = Payment.creditCardOwner();
      expect(result, isA<Record>());
      expect(result.card, isNotEmpty);
      expect(result.expirationDate, isNotEmpty);
      expect(result.owner, isNotEmpty);
      expect(result.owner, result.owner.toUpperCase());
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/payment.dart';
import 'package:test/test.dart';

void main() {
  group('Payment', () {
    const payment = Payment();
    const seededPayment = Payment(seed: 1);

    test('returns CID code', () {
      expect(payment.cid.length, 4);
      expect(seededPayment.cid, equals(seededPayment.cid));
    });

    test('returns paypal account email', () {
      expect(payment.paypal, isNotEmpty);
      expect(seededPayment.paypal, equals(seededPayment.paypal));
    });

    test('returns bitcoin address', () {
      final result = payment.bitcoinAddress;
      final type = int.parse(result[0]);
      expect(type >= 1 && type <= 3, true);
      expect(result.length, 34);
      expect(
        seededPayment.bitcoinAddress,
        equals(seededPayment.bitcoinAddress),
      );
    });

    test('returns ethereum address', () {
      final result = payment.ethereumAddress;
      expect(RegExp(r'^0x([a-f0-9]{40})$').hasMatch(result), true);
    });

    test('returns credit card network', () {
      expect(
        IntPaymentData.creditCardNetworks,
        contains(payment.creditCardNetwork),
      );
      expect(
        seededPayment.creditCardNetwork,
        equals(seededPayment.creditCardNetwork),
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

      expect(
        seededPayment.creditCardNumber(),
        equals(seededPayment.creditCardNumber()),
      );
    });

    test('returns credit card expiration date', () {
      final year = int.parse(
        payment.creditCardExpirationDate(min: 22, max: 27).split('/').last,
      );
      expect(year >= 22 && year <= 27, true);

      expect(
        seededPayment.creditCardExpirationDate(),
        equals(seededPayment.creditCardExpirationDate()),
      );
    });

    test('returns CVV code', () {
      expect(payment.cvv.length, 3);
      expect(seededPayment.cvv, equals(seededPayment.cvv));
    });

    test('returns credit card owner', () {
      final result = payment.creditCardOwner();
      expect(result, isA<Record>());
      expect(result.card, isNotEmpty);
      expect(result.expirationDate, isNotEmpty);
      expect(result.owner, isNotEmpty);
      expect(result.owner, result.owner.toUpperCase());

      expect(
        seededPayment.creditCardOwner(),
        equals(seededPayment.creditCardOwner()),
      );
    });
  });
}

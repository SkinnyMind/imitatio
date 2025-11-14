import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/payment.dart';
import 'package:test/test.dart';

void main() {
  group('Payment', () {
    const payment = Payment();
    const seededPayment = Payment(seed: 1);

    test('returns CID code', () {
      expect(payment.cid.length, equals(4));
      expect(seededPayment.cid, equals(seededPayment.cid));
    });

    test('returns paypal account email', () {
      expect(payment.paypal, isNotEmpty);
      expect(seededPayment.paypal, equals(seededPayment.paypal));
    });

    test('returns bitcoin address', () {
      final result = payment.bitcoinAddress;
      final type = int.parse(result[0]);
      expect(type, inInclusiveRange(1, 3));
      expect(result.length, equals(34));
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
          RegExp(
            r'[\d]+((-|\s)?[\d]+)+',
          ).hasMatch(payment.creditCardNumber(cardType: type)),
          true,
        );
      }

      for (var i = 0; i < 10; i++) {
        final result = int.parse(
          payment.creditCardNumber(cardType: .masterCard).split(' ').first,
        );
        expect(result, inInclusiveRange(2221, 5599));
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
      expect(year, inInclusiveRange(22, 27));

      expect(
        seededPayment.creditCardExpirationDate(),
        equals(seededPayment.creditCardExpirationDate()),
      );
    });

    test('returns CVV code', () {
      expect(payment.cvv.length, equals(3));
      expect(seededPayment.cvv, equals(seededPayment.cvv));
    });

    test('returns credit card owner', () {
      final result = payment.creditCardOwner();
      expect(result, isA<Record>());
      expect(result.card, isNotEmpty);
      expect(result.expirationDate, isNotEmpty);
      expect(result.owner, isNotEmpty);
      expect(result.owner, equals(result.owner.toUpperCase()));

      expect(
        seededPayment.creditCardOwner(),
        equals(seededPayment.creditCardOwner()),
      );
    });
  });
}

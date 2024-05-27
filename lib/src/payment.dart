import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/payment.dart';
import 'package:imitatio/src/rng.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to payment.
class Payment {
  const Payment._();

  /// Returns a random CID code.
  ///
  /// Example:
  /// ```dart
  /// Payment.cid(); // "1945"
  /// ```
  static String cid() =>
      (Random().nextInt(9999) + 1).toString().padLeft(4, '0');

  /// Returns a random email of PayPal account.
  ///
  /// Example:
  /// ```dart
  /// Payment.paypal(); // "urge2051@outlook.com"
  /// ```
  static String paypal() => Person.email();

  /// Returns a random bitcoin address.
  ///
  /// Example:
  /// ```dart
  /// Payment.bitcoinAddress(); // "3cOTCy6QHVBvleZ33QSiUeDKLc93KkrAWV"
  /// ```
  static String bitcoinAddress() {
    final address = StringBuffer();
    address.write(Random().nextInt(3) + 1);
    address.write(Rng.randomString(length: 33));
    return address.toString();
  }

  /// Returns a random Ethereum address.
  ///
  /// Example:
  /// ```dart
  /// Payment.ethereumAddress(); // "0xa17f8fe569cad9c952ddf89ec50e635b5040e025"
  /// ```
  static String ethereumAddress() {
    final strBits = StringBuffer();
    final random = Random();
    for (var i = 1; i <= 160; i++) {
      strBits.write(random.nextInt(2));
    }

    final bits = BigInt.parse(strBits.toString(), radix: 2);
    final bytes = bits.toRadixString(16).padLeft(20, '0');

    return '0x$bytes';
  }

  /// Returns a random credit card network.
  ///
  /// Example:
  /// ```dart
  /// Payment.creditCardNetwork(); // "Visa"
  /// ```
  static String creditCardNetwork() => PaymentData.creditCardNetworks[
      Random().nextInt(PaymentData.creditCardNetworks.length)];

  /// Returns a random credit card number.
  ///
  /// [cardType] is optional [CardType] issuing network (default is
  /// [CardType.visa]).
  ///
  /// Example:
  /// ```dart
  /// Payment.creditCardNumber(); // "4567 0238 9444 1885"
  /// Payment.creditCardNumber(cardType: CardType.americanExpress); // "3754 483800 01097"
  /// ```
  static String creditCardNumber({CardType cardType = CardType.visa}) {
    final random = Random();
    var length = 16;
    final result = StringBuffer();
    late final int number;

    if (cardType == CardType.visa) {
      number = random.nextInt(1000) + 4000;
    } else if (cardType == CardType.masterCard) {
      number = random.nextBool()
          ? random.nextInt(500) + 2221
          : random.nextInt(500) + 5100;
    } else {
      number = random.nextBool() ? 34 : 37;
      length = 15;
    }

    result.write(number);

    while (result.length < length - 1) {
      result.write(random.nextInt(10));
    }

    result.write(Util.luhnChecksum(result.toString()));

    final str = result.toString();
    return str.length == 16
        // ignore: lines_longer_than_80_chars
        ? '${str.substring(0, 4)} ${str.substring(4, 8)} ${str.substring(8, 12)} ${str.substring(12)}'
        : '${str.substring(0, 4)} ${str.substring(4, 10)} ${str.substring(10)}';
  }

  /// Returns a random expiration date for credit card.
  ///
  /// [min] is optional date of card issue (default is 18).
  ///
  /// [max] is optional maximum of expiration date (default is 25).
  ///
  /// Example:
  /// ```dart
  /// Payment.creditCardExpirationDate(); // "03/24"
  /// Payment.creditCardExpirationDate(min: 22, max: 27); // "11/26"
  /// ```
  static String creditCardExpirationDate({int min = 18, int max = 25}) {
    final random = Random();
    final month = (random.nextInt(12) + 1).toString().padLeft(2, '0');
    final year = random.nextInt(max + 1 - min) + min;
    return '$month/$year';
  }

  /// Returns a random CVV code.
  ///
  /// Example:
  /// ```dart
  /// Payment.cvv(); // "420"
  /// ```
  static String cvv() => (Random().nextInt(999) + 1).toString().padLeft(3, '0');

  /// Returns credit card owner.
  ///
  /// [gender] is optional gender.
  ///
  /// Example:
  /// ```dart
  /// Payment.creditCardOwner(); // (card: 4248 3072 4575 5973, expirationDate: 05/22, owner: NEDA ROJAS)
  /// ```
  static ({String card, String expirationDate, String owner}) creditCardOwner({
    Gender? gender,
  }) {
    return (
      card: creditCardNumber(),
      expirationDate: creditCardExpirationDate(),
      owner: Person.fullName(gender: gender).toUpperCase(),
    );
  }
}

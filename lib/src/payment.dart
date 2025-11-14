import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/payment.dart';
import 'package:imitatio/src/extensions.dart';
import 'package:imitatio/src/rng.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to payment.
class Payment {
  /// Provides data related to payment.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Payment({this.seed});

  final int? seed;

  /// Returns a random CID code.
  ///
  /// Example:
  /// ```dart
  /// Payment().cid; // "1945"
  /// ```
  String get cid =>
      Random(seed).integer(min: 1, max: 9999).toString().padLeft(4, '0');

  /// Returns a random email of PayPal account.
  ///
  /// Example:
  /// ```dart
  /// Payment().paypal; // "urge2051@outlook.com"
  /// ```
  String get paypal => Person(seed: seed).email();

  /// Returns a random bitcoin address.
  ///
  /// Example:
  /// ```dart
  /// Payment().bitcoinAddress; // "3cOTCy6QHVBvleZ33QSiUeDKLc93KkrAWV"
  /// ```
  String get bitcoinAddress {
    final address = StringBuffer();
    address.write(Random(seed).integer(min: 1, max: 3));
    address.write(Rng.randomString(length: 33, seed: seed));
    return address.toString();
  }

  /// Returns a random Ethereum address.
  ///
  /// Example:
  /// ```dart
  /// Payment().ethereumAddress; // "0xa17f8fe569cad9c952ddf89ec50e635b5040e025"
  /// ```
  String get ethereumAddress {
    final chars = '0123456789abcdef';
    final random = Random(seed);
    final result = StringBuffer('0x');
    for (var i = 0; i < 40; i++) {
      result.write(chars[random.integer(max: chars.length - 1)]);
    }
    return result.toString();
  }

  /// Returns a random credit card network.
  ///
  /// Example:
  /// ```dart
  /// Payment().creditCardNetwork; // "Visa"
  /// ```
  String get creditCardNetwork {
    final data = IntPaymentData.creditCardNetworks;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random credit card number.
  ///
  /// [cardType] is optional [CardType] issuing network (default is
  /// [CardType.visa]).
  ///
  /// Example:
  /// ```dart
  /// Payment().creditCardNumber(); // "4567 0238 9444 1885"
  /// Payment().creditCardNumber(cardType: CardType.americanExpress); // "3754 483800 01097"
  /// ```
  String creditCardNumber({CardType cardType = .visa}) {
    final random = Random(seed);
    var length = 16;
    final result = StringBuffer();
    late final int number;

    if (cardType == .visa) {
      number = random.integer(min: 4000, max: 4999);
    } else if (cardType == .masterCard) {
      number = random.nextBool()
          ? random.integer(min: 2221, max: 2720)
          : random.integer(min: 5100, max: 5599);
    } else {
      number = random.nextBool() ? 34 : 37;
      length = 15;
    }

    result.write(number);

    while (result.length < length - 1) {
      result.write(random.integer(max: 9));
    }

    result.write(Util.luhnChecksum(result.toString()));

    final str = result.toString();
    return str.length == 16
        ? '${str.substring(0, 4)} ${str.substring(4, 8)} '
              '${str.substring(8, 12)} ${str.substring(12)}'
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
  /// Payment().creditCardExpirationDate(); // "03/24"
  /// Payment().creditCardExpirationDate(min: 22, max: 27); // "11/26"
  /// ```
  String creditCardExpirationDate({int min = 18, int max = 25}) {
    final random = Random(seed);
    final month = random.integer(min: 1, max: 12).toString().padLeft(2, '0');
    final year = random.integer(min: min, max: max);
    return '$month/$year';
  }

  /// Returns a random CVV code.
  ///
  /// Example:
  /// ```dart
  /// Payment().cvv; // "420"
  /// ```
  String get cvv =>
      Random(seed).integer(min: 1, max: 999).toString().padLeft(3, '0');

  /// Returns credit card owner.
  ///
  /// [gender] is optional gender.
  ///
  /// Example:
  /// ```dart
  /// Payment().creditCardOwner(); // (card: 4248 3072 4575 5973, expirationDate: 05/22, owner: NEDA ROJAS)
  /// ```
  ({String card, String expirationDate, String owner}) creditCardOwner({
    Gender? gender,
  }) {
    return (
      card: creditCardNumber(),
      expirationDate: creditCardExpirationDate(),
      owner: Person(seed: seed).fullName(gender: gender).toUpperCase(),
    );
  }
}

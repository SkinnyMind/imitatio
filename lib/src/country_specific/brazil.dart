import 'dart:math';

import 'package:imitatio/src/extensions.dart';

class Brazil {
  /// Provides special data for Brazil.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Brazil({this.seed});

  final int? seed;

  /// Returns a random CPF.
  ///
  /// [withMask] determines whether to use CPF mask (###.###.###-##)
  /// (default is true).
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.brazil().cpf(); // "861.334.761-41"
  /// CountrySpecific.brazil().cpf(withMask: false); // "30088500306"
  /// ```
  String cpf({bool withMask = true}) {
    final random = Random(seed);
    final cpf = List.generate(9, (_) => random.integer(max: 9));
    final firstVd = _getCpfVerifyingDigit(cpf: cpf, weight: 10);
    cpf.add(firstVd);
    final secondVd = _getCpfVerifyingDigit(cpf: cpf, weight: 11);
    cpf.add(secondVd);
    final result = cpf.join();
    return withMask
        // ignore: lines_longer_than_80_chars
        ? '${result.substring(0, 3)}.${result.substring(3, 6)}.${result.substring(6, 9)}-${result.substring(9)}'
        : result;
  }

  int _getCpfVerifyingDigit({required List<int> cpf, required int weight}) {
    var total = 0;
    for (final (index, digit) in cpf.indexed) {
      total += digit * (weight - index);
    }
    final remainder = total % 11;
    return switch (remainder) {
      0 || 1 || >= 11 => 0,
      _ => 11 - remainder,
    };
  }

  /// Returns a random CNPJ.
  ///
  /// [withMask] determines whether to use CNPJ mask (##.###.###/####-##)
  /// (default is true).
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.brazil().cnpj(); // "28.095.227/3848-13"
  /// CountrySpecific.brazil().cnpj(withMask: false); // "83319321844400"
  /// ```
  String cnpj({bool withMask = true}) {
    final random = Random(seed);
    final cnpj = List.generate(12, (_) => random.integer(max: 9));
    final firstVd = _getCnpjVerifyingDigit(cnpj: cnpj, weight: 5);
    cnpj.add(firstVd);
    final secondVd = _getCnpjVerifyingDigit(cnpj: cnpj, weight: 6);
    cnpj.add(secondVd);
    final result = cnpj.join();
    return withMask
        ? '${result.substring(0, 2)}.${result.substring(2, 5)}.${result.substring(5, 8)}/${result.substring(8, 12)}-${result.substring(12)}'
        : result;
  }

  int _getCnpjVerifyingDigit({required List<int> cnpj, required int weight}) {
    assert(weight == 5 || weight == 6, 'weight should be either 5 or 6');
    var total = 0;
    const weightsMap = {
      5: [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2],
      6: [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2],
    };
    final weights = weightsMap[weight]!;
    for (final (i, _) in cnpj.indexed) {
      total += weights[i] * cnpj[i];
    }
    final remainder = total % 11;
    return remainder < 2 ? 0 : 11 - remainder;
  }
}

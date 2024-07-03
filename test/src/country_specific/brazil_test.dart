import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Brazil', () {
    final brazil = CountrySpecific.brazil();
    final seededBrazil = CountrySpecific.brazil(seed: 1);

    test('returns CPF', () async {
      final result = brazil.cpf();
      expect(result.length, equals(14));

      final noMask = brazil.cpf(withMask: false);
      expect(noMask.length, equals(11));

      expect(seededBrazil.cpf(), equals(seededBrazil.cpf()));
    });

    test('returns CNPJ', () async {
      final result = brazil.cnpj();
      expect(result.length, equals(18));

      final noMask = brazil.cnpj(withMask: false);
      expect(noMask.length, equals(14));

      expect(seededBrazil.cnpj(), equals(seededBrazil.cnpj()));
    });
  });
}

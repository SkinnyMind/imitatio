import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Denmark', () {
    final denmark = CountrySpecific.denmark();
    final seededDenmark = CountrySpecific.denmark(seed: 1);

    test('returns cpr number', () async {
      expect(denmark.cpr.length, equals(10));
      expect(seededDenmark.cpr, equals(seededDenmark.cpr));
    });
  });
}

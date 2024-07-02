import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('USA', () {
    final usa = CountrySpecific.usa();
    final seededUSA = CountrySpecific.usa(seed: 1);

    test('returns tracking number', () async {
      expect(usa.trackingNumber().length, lessThanOrEqualTo(24));

      expect(
        usa.trackingNumber(service: PostalService.fedex).length,
        lessThanOrEqualTo(18),
      );

      expect(
        usa.trackingNumber(service: PostalService.ups).length,
        equals(18),
      );

      expect(
        seededUSA.trackingNumber(),
        equals(seededUSA.trackingNumber()),
      );
    });

    test('returns tracking number', () async {
      final result = usa.ssn.split('-');
      final area = result[0];
      final group = result[1];
      final number = result[2];
      expect(result.length, equals(3));
      expect(area, isNot(666));
      expect(area.length, equals(3));
      expect(group.length, equals(2));
      expect(number.length, equals(4));

      expect(seededUSA.ssn, equals(seededUSA.ssn));
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/transport.dart';
import 'package:test/test.dart';

void main() {
  group('Transport', () {
    const transport = Transport();
    const seededTransport = Transport(seed: 1);

    test('returns manufacturer', () {
      expect(
        IntTransportData.manufacturers,
        contains(transport.manufacturer),
      );

      expect(
        seededTransport.manufacturer,
        equals(seededTransport.manufacturer),
      );
    });

    test('returns car', () {
      expect(
        IntTransportData.cars,
        contains(transport.car),
      );

      expect(seededTransport.car, equals(seededTransport.car));
    });

    test('returns airplane', () {
      expect(
        IntTransportData.airplanes,
        contains(transport.airplane),
      );

      expect(
        seededTransport.airplane,
        equals(seededTransport.airplane),
      );
    });

    test('returns vehicle registration code', () {
      expect(
        IntTransportData.vrCodes,
        contains(transport.vehicleRegistrationCode()),
      );

      final locale = Locale.en;
      expect(
        IntTransportData.vrcByLocale(locale: locale),
        contains(transport.vehicleRegistrationCode(locale: locale)),
      );

      expect(
        seededTransport.vehicleRegistrationCode(),
        equals(seededTransport.vehicleRegistrationCode()),
      );
    });
  });
}

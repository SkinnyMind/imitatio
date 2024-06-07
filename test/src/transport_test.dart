import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/transport.dart';
import 'package:test/test.dart';

void main() {
  group('Transport', () {
    test('returns manufacturer', () {
      expect(
        TransportData.manufacturers,
        contains(Transport.manufacturer()),
      );
    });

    test('returns car', () {
      expect(
        TransportData.cars,
        contains(Transport.car()),
      );
    });

    test('returns airplane', () {
      expect(
        TransportData.airplanes,
        contains(Transport.airplane()),
      );
    });

    test('returns vehicle registration code', () {
      expect(
        TransportData.vrCodes,
        contains(Transport.vehicleRegistrationCode()),
      );
    });
  });
}

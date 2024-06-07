import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/transport.dart';
import 'package:test/test.dart';

void main() {
  group('Transport', () {
    test('returns manufacturer', () {
      expect(
        IntTransportData.manufacturers,
        contains(Transport.manufacturer()),
      );
    });

    test('returns car', () {
      expect(
        IntTransportData.cars,
        contains(Transport.car()),
      );
    });

    test('returns airplane', () {
      expect(
        IntTransportData.airplanes,
        contains(Transport.airplane()),
      );
    });

    test('returns vehicle registration code', () {
      expect(
        IntTransportData.vrCodes,
        contains(Transport.vehicleRegistrationCode()),
      );
    });
  });
}

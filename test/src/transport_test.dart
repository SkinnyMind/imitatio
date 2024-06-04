import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/transport.dart';
import 'package:test/test.dart';

void main() {
  group('Transport', () {
    test('returns manufacturer', () {
      expect(
        TransportData.manufacturers.contains(Transport.manufacturer()),
        true,
      );
    });

    test('returns car', () {
      expect(TransportData.cars.contains(Transport.car()), true);
    });

    test('returns airplane', () {
      final result = Transport.airplane();
      expect(TransportData.airplanes.contains(result), true);
    });

    test('returns vehicle registration code', () {
      expect(
        TransportData.vrCodes.contains(Transport.vehicleRegistrationCode()),
        true,
      );
    });
  });
}

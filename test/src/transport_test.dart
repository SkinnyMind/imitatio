import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/transport.dart';
import 'package:test/test.dart';

void main() {
  group('Transport', () {
    test('returns a truck model', () {
      final result = Transport.truck().split('-');
      expect(TransportData.trucks.contains(result[0]), true);
      expect(result[1].length, 7);

      final masked = Transport.truck(modelMask: '####').split('-');
      expect(masked.last.length, 4);
    });

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
      final result = Transport.airplane().split(' ');
      expect(TransportData.airplanes.contains(result[0]), true);
      expect(result[1].length, 3);

      final masked = Transport.airplane(modelMask: '@###').split(' ');
      expect(masked.last.length, 4);
    });

    test('returns vehicle registration code', () {
      expect(
        TransportData.vrCodes.contains(Transport.vehicleRegistrationCode()),
        true,
      );
    });
  });
}

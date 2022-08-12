import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/transport.dart';
import 'package:test/test.dart';

void main() {
  group('Transport', () {
    const transport = Transport();

    test('returns a truck model', () {
      final result = transport.truck().split('-');
      expect(TransportData.trucks.contains(result[0]), true);
      expect(result[1].length, 7);

      final masked = transport.truck(modelMask: '####').split('-');
      expect(masked.last.length, 4);
    });

    test('returns manufacturer', () {
      expect(
        TransportData.manufacturers.contains(transport.manufacturer()),
        true,
      );
    });

    test('returns car', () {
      expect(TransportData.cars.contains(transport.car()), true);
    });

    test('returns airplane', () {
      final result = transport.airplane().split(' ');
      expect(TransportData.airplanes.contains(result[0]), true);
      expect(result[1].length, 3);

      final masked = transport.airplane(modelMask: '@###').split(' ');
      expect(masked.last.length, 4);
    });

    test('returns vehicle registration code', () {
      expect(
        TransportData.vrCodes.contains(transport.vehicleRegistrationCode()),
        true,
      );
    });
  });
}

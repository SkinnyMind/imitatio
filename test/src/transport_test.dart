import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/transport.dart';
import 'package:test/test.dart';

void main() {
  group('Transport', () {
    const transport = Transport();

    test('returns manufacturer', () {
      expect(
        IntTransportData.manufacturers,
        contains(transport.manufacturer),
      );
    });

    test('returns car', () {
      expect(
        IntTransportData.cars,
        contains(transport.car),
      );
    });

    test('returns airplane', () {
      expect(
        IntTransportData.airplanes,
        contains(transport.airplane),
      );
    });

    test('returns vehicle registration code', () {
      expect(
        IntTransportData.vrCodes,
        contains(transport.vehicleRegistrationCode),
      );
    });
  });
}

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/hardware.dart';
import 'package:test/test.dart';

void main() {
  group('Hardware', () {
    const hardware = Hardware();
    const seededHardware = Hardware(seed: 1);

    test('returns screen resolution', () {
      expect(
        IntHardwareData.resolutions,
        contains(hardware.resolution),
      );
      expect(
        seededHardware.resolution,
        equals(seededHardware.resolution),
      );
    });

    test('returns screen size', () {
      expect(
        IntHardwareData.screenSizes,
        contains(hardware.screenSize),
      );
      expect(
        seededHardware.screenSize,
        equals(seededHardware.screenSize),
      );
    });

    test('returns cpu name', () {
      expect(
        IntHardwareData.cpus,
        contains(hardware.cpu),
      );
      expect(
        seededHardware.cpu,
        equals(seededHardware.cpu),
      );
    });

    test('returns cpu frequency', () {
      final result = hardware.cpuFrequency;
      expect(double.parse(result.split('G').first), lessThanOrEqualTo(5));

      expect(
        seededHardware.cpuFrequency,
        equals(seededHardware.cpuFrequency),
      );
    });

    test('returns generation', () {
      expect(
        IntHardwareData.generations,
        contains(hardware.generation),
      );
      expect(
        seededHardware.generation,
        equals(seededHardware.generation),
      );
    });

    test('returns cpu code name', () {
      expect(
        IntHardwareData.cpuCodeNames,
        contains(hardware.cpuCodeName),
      );
      expect(
        seededHardware.cpuCodeName,
        equals(seededHardware.cpuCodeName),
      );
    });

    test('returns ram type', () {
      expect(
        IntHardwareData.ramTypes,
        contains(hardware.ramType),
      );
      expect(
        seededHardware.ramType,
        equals(seededHardware.ramType),
      );
    });

    test('returns ram size', () {
      expect(
        IntHardwareData.ramSizes,
        contains(hardware.ramSize),
      );
      expect(
        seededHardware.ramSize,
        equals(seededHardware.ramSize),
      );
    });

    test('returns drive', () {
      expect(hardware.ssdOrHdd, isNotEmpty);
      expect(
        seededHardware.ssdOrHdd,
        equals(seededHardware.ssdOrHdd),
      );
    });

    test('returns graphics', () {
      expect(
        IntHardwareData.graphics,
        contains(hardware.graphics),
      );
      expect(
        seededHardware.graphics,
        equals(seededHardware.graphics),
      );
    });

    test('returns manufacturer', () {
      expect(
        IntHardwareData.manufacturers,
        contains(hardware.manufacturer),
      );
      expect(
        seededHardware.manufacturer,
        equals(seededHardware.manufacturer),
      );
    });

    test('returns phone model', () {
      expect(
        IntHardwareData.phoneModels,
        contains(hardware.phoneModel),
      );
      expect(
        seededHardware.phoneModel,
        equals(seededHardware.phoneModel),
      );
    });
  });
}

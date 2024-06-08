import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/hardware.dart';
import 'package:test/test.dart';

void main() {
  group('Hardware', () {
    const hardware = Hardware();

    test('returns screen resolution', () {
      expect(
        IntHardwareData.resolutions,
        contains(hardware.resolution),
      );
    });

    test('returns screen size', () {
      expect(
        IntHardwareData.screenSizes,
        contains(hardware.screenSize),
      );
    });

    test('returns cpu name', () {
      expect(
        IntHardwareData.cpus,
        contains(hardware.cpu),
      );
    });

    test('returns cpu frequency', () {
      final result = hardware.cpuFrequency;
      expect(double.parse(result.split('G').first) <= 5, true);
    });

    test('returns generation', () {
      expect(
        IntHardwareData.generations,
        contains(hardware.generation),
      );
    });

    test('returns cpu code name', () {
      expect(
        IntHardwareData.cpuCodeNames,
        contains(hardware.cpuCodeName),
      );
    });

    test('returns ram type', () {
      expect(
        IntHardwareData.ramTypes,
        contains(hardware.ramType),
      );
    });

    test('returns ram size', () {
      expect(
        IntHardwareData.ramSizes,
        contains(hardware.ramSize),
      );
    });

    test('returns drive', () {
      expect(hardware.ssdOrHdd, isNotEmpty);
    });

    test('returns graphics', () {
      expect(
        IntHardwareData.graphics,
        contains(hardware.graphics),
      );
    });

    test('returns manufacturer', () {
      expect(
        IntHardwareData.manufacturers,
        contains(hardware.manufacturer),
      );
    });

    test('returns phone model', () {
      expect(
        IntHardwareData.phoneModels,
        contains(hardware.phoneModel),
      );
    });
  });
}

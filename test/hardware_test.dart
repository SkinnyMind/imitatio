import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/hardware.dart';
import 'package:test/test.dart';

void main() {
  group('Hardware', () {
    const hardware = Hardware();

    test('returns screen resolution', () {
      expect(HardwareData.resolutions.contains(hardware.resolution()), true);
    });

    test('returns screen size', () {
      expect(HardwareData.screenSizes.contains(hardware.screenSize()), true);
    });

    test('returns cpu name', () {
      expect(HardwareData.cpu.contains(hardware.cpu()), true);
    });

    test('returns cpu frequency', () {
      final result = hardware.cpuFrequency();
      expect(double.parse(result.split('G').first) <= 5, true);
    });

    test('returns generation', () {
      expect(HardwareData.generations.contains(hardware.generation()), true);
    });

    test('returns cpu model code', () {
      expect(
        HardwareData.cpuModelCodes.contains(hardware.cpuModelCode()),
        true,
      );
    });

    test('returns cpu code name', () {
      expect(
        HardwareData.cpuCodeNames.contains(hardware.cpuCodeName()),
        true,
      );
    });

    test('returns ram type', () {
      expect(HardwareData.ramTypes.contains(hardware.ramType()), true);
    });

    test('returns ram size', () {
      expect(HardwareData.ramSizes.contains(hardware.ramSize()), true);
    });

    test('returns drive', () {
      expect(HardwareData.drives.contains(hardware.drive()), true);
    });

    test('returns graphics', () {
      expect(HardwareData.graphics.contains(hardware.graphics()), true);
    });

    test('returns manufacturer', () {
      expect(
        HardwareData.manufacturers.contains(hardware.manufacturer()),
        true,
      );
    });

    test('returns phone model', () {
      expect(HardwareData.phoneModels.contains(hardware.phoneModel()), true);
    });
  });
}

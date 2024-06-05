import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/hardware.dart';
import 'package:test/test.dart';

void main() {
  group('Hardware', () {
    test('returns screen resolution', () {
      expect(HardwareData.resolutions.contains(Hardware.resolution()), true);
    });

    test('returns screen size', () {
      expect(HardwareData.screenSizes.contains(Hardware.screenSize()), true);
    });

    test('returns cpu name', () {
      expect(HardwareData.cpus.contains(Hardware.cpu()), true);
    });

    test('returns cpu frequency', () {
      final result = Hardware.cpuFrequency();
      expect(double.parse(result.split('G').first) <= 5, true);
    });

    test('returns generation', () {
      expect(HardwareData.generations.contains(Hardware.generation()), true);
    });

    test('returns cpu code name', () {
      expect(
        HardwareData.cpuCodeNames.contains(Hardware.cpuCodeName()),
        true,
      );
    });

    test('returns ram type', () {
      expect(HardwareData.ramTypes.contains(Hardware.ramType()), true);
    });

    test('returns ram size', () {
      expect(HardwareData.ramSizes.contains(Hardware.ramSize()), true);
    });

    test('returns drive', () {
      expect(Hardware.ssdOrHdd(), isNotEmpty);
    });

    test('returns graphics', () {
      expect(HardwareData.graphics.contains(Hardware.graphics()), true);
    });

    test('returns manufacturer', () {
      expect(
        HardwareData.manufacturers.contains(Hardware.manufacturer()),
        true,
      );
    });

    test('returns phone model', () {
      expect(HardwareData.phoneModels.contains(Hardware.phoneModel()), true);
    });
  });
}

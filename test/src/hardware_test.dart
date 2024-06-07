import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/hardware.dart';
import 'package:test/test.dart';

void main() {
  group('Hardware', () {
    test('returns screen resolution', () {
      expect(
        HardwareData.resolutions,
        contains(Hardware.resolution()),
      );
    });

    test('returns screen size', () {
      expect(
        HardwareData.screenSizes,
        contains(Hardware.screenSize()),
      );
    });

    test('returns cpu name', () {
      expect(
        HardwareData.cpus,
        contains(Hardware.cpu()),
      );
    });

    test('returns cpu frequency', () {
      final result = Hardware.cpuFrequency();
      expect(double.parse(result.split('G').first) <= 5, true);
    });

    test('returns generation', () {
      expect(
        HardwareData.generations,
        contains(Hardware.generation()),
      );
    });

    test('returns cpu code name', () {
      expect(
        HardwareData.cpuCodeNames,
        contains(Hardware.cpuCodeName()),
      );
    });

    test('returns ram type', () {
      expect(
        HardwareData.ramTypes,
        contains(Hardware.ramType()),
      );
    });

    test('returns ram size', () {
      expect(
        HardwareData.ramSizes,
        contains(Hardware.ramSize()),
      );
    });

    test('returns drive', () {
      expect(Hardware.ssdOrHdd(), isNotEmpty);
    });

    test('returns graphics', () {
      expect(
        HardwareData.graphics,
        contains(Hardware.graphics()),
      );
    });

    test('returns manufacturer', () {
      expect(
        HardwareData.manufacturers,
        contains(Hardware.manufacturer()),
      );
    });

    test('returns phone model', () {
      expect(
        HardwareData.phoneModels,
        contains(Hardware.phoneModel()),
      );
    });
  });
}

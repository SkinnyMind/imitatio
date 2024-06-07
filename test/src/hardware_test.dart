import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/hardware.dart';
import 'package:test/test.dart';

void main() {
  group('Hardware', () {
    test('returns screen resolution', () {
      expect(
        IntHardwareData.resolutions,
        contains(Hardware.resolution()),
      );
    });

    test('returns screen size', () {
      expect(
        IntHardwareData.screenSizes,
        contains(Hardware.screenSize()),
      );
    });

    test('returns cpu name', () {
      expect(
        IntHardwareData.cpus,
        contains(Hardware.cpu()),
      );
    });

    test('returns cpu frequency', () {
      final result = Hardware.cpuFrequency();
      expect(double.parse(result.split('G').first) <= 5, true);
    });

    test('returns generation', () {
      expect(
        IntHardwareData.generations,
        contains(Hardware.generation()),
      );
    });

    test('returns cpu code name', () {
      expect(
        IntHardwareData.cpuCodeNames,
        contains(Hardware.cpuCodeName()),
      );
    });

    test('returns ram type', () {
      expect(
        IntHardwareData.ramTypes,
        contains(Hardware.ramType()),
      );
    });

    test('returns ram size', () {
      expect(
        IntHardwareData.ramSizes,
        contains(Hardware.ramSize()),
      );
    });

    test('returns drive', () {
      expect(Hardware.ssdOrHdd(), isNotEmpty);
    });

    test('returns graphics', () {
      expect(
        IntHardwareData.graphics,
        contains(Hardware.graphics()),
      );
    });

    test('returns manufacturer', () {
      expect(
        IntHardwareData.manufacturers,
        contains(Hardware.manufacturer()),
      );
    });

    test('returns phone model', () {
      expect(
        IntHardwareData.phoneModels,
        contains(Hardware.phoneModel()),
      );
    });
  });
}

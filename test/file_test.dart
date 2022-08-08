import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/file.dart';
import 'package:test/test.dart';

void main() {
  group('File', () {
    const file = File();

    test('returns file extension', () {
      expect(file.ext(), isNotEmpty);

      for (final type in FileType.values) {
        final result = file.ext(fileType: type);
        expect(FileData.extensions[type.name]!.contains(result), true);
      }
    });

    test('returns mime type of provided group', () {
      for (final type in MimeType.values) {
        final result = file.mimeType(type: type);
        expect(FileData.mimeTypes[type.name]!.contains(result), true);
      }
    });

    test('returns size of a file', () {
      final result = file.size(min: 10, max: 10);
      expect(int.parse(result.split(' ').first), 10);
    });

    test('returns file name with extension', () {
      expect(file.name(), isNotEmpty);
      final type = FileType.audio;
      final result = file.name(fileType: type);
      final ext = '.${result.split('.').last}';
      expect(FileData.extensions[type.name]!.contains(ext), true);
    });
  });
}

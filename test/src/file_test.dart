import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/file.dart';
import 'package:test/test.dart';

void main() {
  group('File', () {
    test('returns file extension', () {
      expect(File.ext(), isNotEmpty);

      final type = FileType.audio;
      final result = File.ext(fileType: type);
      expect(FileData.extensions(type).contains(result), true);
    });

    test('returns mime type of provided group', () {
      final type = MimeType.audio;
      final result = File.mimeType(type: type);
      expect(FileData.mimeTypes(type).contains(result), true);
    });

    test('returns size of a file', () {
      final result = File.size(min: 10, max: 10);
      expect(int.parse(result.split(' ').first), 10);
    });

    test('returns file name with extension', () {
      expect(File.name(), isNotEmpty);
      final type = FileType.audio;
      final result = File.name(fileType: type);
      final ext = '.${result.split('.').last}';
      expect(FileData.extensions(type).contains(ext), true);
    });
  });
}

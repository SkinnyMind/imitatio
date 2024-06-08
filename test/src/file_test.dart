import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/file.dart';
import 'package:test/test.dart';

void main() {
  group('File', () {
    const file = File();
    test('returns file extension', () {
      expect(file.ext(), isNotEmpty);

      final type = FileType.audio;
      expect(
        IntFileData.extensions(type),
        contains(file.ext(fileType: type)),
      );
    });

    test('returns mime type of provided group', () {
      final type = MimeType.audio;
      expect(
        IntFileData.mimeTypes(type),
        contains(file.mimeType(type: type)),
      );
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
      expect(IntFileData.extensions(type), contains(ext));
    });
  });
}

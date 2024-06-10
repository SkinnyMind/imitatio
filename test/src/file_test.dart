import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/file.dart';
import 'package:test/test.dart';

void main() {
  group('File', () {
    const file = File();
    const seededFile = File(seed: 1);

    test('returns file extension', () {
      expect(file.ext(), isNotEmpty);

      final type = FileType.audio;
      expect(
        IntFileData.extensions(type),
        contains(file.ext(fileType: type)),
      );

      expect(seededFile.ext(), equals(seededFile.ext()));
    });

    test('returns mime type of provided group', () {
      final type = MimeType.audio;
      expect(
        IntFileData.mimeTypes(type),
        contains(file.mimeType(type: type)),
      );

      expect(seededFile.mimeType(), equals(seededFile.mimeType()));
    });

    test('returns size of a file', () {
      final result = file.size(min: 10, max: 10);
      expect(int.parse(result.split(' ').first), 10);

      expect(seededFile.size(), equals(seededFile.size()));
    });

    test('throws when trying to return size of a file in wrong range', () {
      expect(
        () => file.size(min: 10, max: 1),
        throwsA(isA<RangeError>()),
      );

      expect(
        () => file.size(min: -1, max: -10),
        throwsA(isA<RangeError>()),
      );
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

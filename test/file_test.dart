import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/file.dart';
import 'package:test/test.dart';

void main() {
  group('File', () {
    const file = File();

    test('returns mime type of provided group', () {
      for (final type in MimeType.values) {
        final result = file.mimeType(type: type);
        expect(FileData.mimeTypes[type.name]!.contains(result), true);
      }
    });
  });
}

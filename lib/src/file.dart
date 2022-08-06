import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/file.dart';

/// File data provider.
class File {
  /// Creates data related to files.
  const File();

  /// Returns a random mime type.
  ///
  /// [type] is optional [MimeType] group.
  String mimeType({MimeType? type}) {
    final key =
        type ?? MimeType.values[Random().nextInt(MimeType.values.length)];
    final types = FileData.mimeTypes[key.name]!;
    return types[Random().nextInt(types.length)];
  }
}

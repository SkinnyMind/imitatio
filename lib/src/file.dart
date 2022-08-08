import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/file.dart';

/// File data provider.
class File {
  /// Creates data related to files.
  const File();

  /// Return a random file extension.
  ///
  /// [fileType] is optional [FileType] group.
  String ext({FileType? fileType}) {
    final random = Random();
    final key =
        fileType ?? FileType.values[random.nextInt(FileType.values.length)];
    final extensions = FileData.extensions[key.name]!;
    return extensions[random.nextInt(extensions.length)];
  }

  /// Returns a random mime type.
  ///
  /// [type] is optional [MimeType] group.
  String mimeType({MimeType? type}) {
    final key =
        type ?? MimeType.values[Random().nextInt(MimeType.values.length)];
    final types = FileData.mimeTypes[key.name]!;
    return types[Random().nextInt(types.length)];
  }

  /// Returns size of a file.
  ///
  /// [min] is optional minimum value (default is 1).
  ///
  /// [max] is optional maximum value (default is 100).
  String size({int min = 1, int max = 100}) {
    final random = Random();
    final number = random.nextInt(max + 1 - min) + min;
    final units = ['bytes', 'kB', 'MB', 'GB', 'TB'];
    final unit = units[random.nextInt(units.length)];
    return '$number $unit';
  }

  /// Returns a random file name with some extension.
  ///
  /// [fileType] is optional [FileType] group.
  String name({FileType? fileType}) {
    final name = const Text().word();
    final ext = this.ext(fileType: fileType);
    return '$name$ext';
  }
}

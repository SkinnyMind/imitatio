import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/file.dart';

/// File data provider.
class File {
  const File._();

  /// Return a random file extension.
  ///
  /// [fileType] is optional [FileType] group.
  ///
  /// Example:
  /// ```dart
  /// File.ext(); // ".tar.gz"
  /// File.ext(fileType: FileType.audio); // ".m4a"
  /// ```
  static String ext({FileType? fileType}) {
    final random = Random();
    final type =
        fileType ?? FileType.values[random.nextInt(FileType.values.length)];
    final extensions = IntFileData.extensions(type);
    return extensions[random.nextInt(extensions.length)];
  }

  /// Returns a random mime type.
  ///
  /// [type] is optional [MimeType] group.
  ///
  /// Example:
  /// ```dart
  /// File.mimeType(); // "audio/vnd.octel.sbc"
  /// File.mimeType(type: MimeType.image); // "image/vnd.net-fpx"
  /// ```
  static String mimeType({MimeType? type}) {
    final mime =
        type ?? MimeType.values[Random().nextInt(MimeType.values.length)];
    final types = IntFileData.mimeTypes(mime);
    return types[Random().nextInt(types.length)];
  }

  /// Returns size of a file.
  ///
  /// [min] is optional minimum value (default is 1).
  ///
  /// [max] is optional maximum value (default is 100).
  ///
  /// Example:
  /// ```dart
  /// File.size(); // "69 kB"
  /// File.size(min: 42, max: 420); // "236 TB"
  /// ```
  static String size({int min = 1, int max = 100}) {
    final random = Random();
    final number = random.nextInt(max + 1 - min) + min;
    final units = ['bytes', 'kB', 'MB', 'GB', 'TB'];
    final unit = units[random.nextInt(units.length)];
    return '$number $unit';
  }

  /// Returns a random file name with some extension.
  ///
  /// [fileType] is optional [FileType] group.
  ///
  /// Example:
  /// ```dart
  /// File.name(); // "after.pdf"
  /// File.name(fileType: FileType.executable); // "latex.bat"
  /// ```
  static String name({FileType? fileType}) {
    final name = Text.word();
    final ext = File.ext(fileType: fileType);
    return '$name$ext';
  }
}

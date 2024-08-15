import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/file.dart';
import 'package:imitatio/src/extensions.dart';

/// Provides data related to file.
class File {
  /// Provides data related to file.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const File({this.seed});

  final int? seed;

  /// Returns a random file extension.
  ///
  /// [fileType] is optional [FileType] group.
  ///
  /// Example:
  /// ```dart
  /// File().ext(); // ".tar.gz"
  /// File().ext(fileType: FileType.audio); // ".m4a"
  /// ```
  String ext({FileType? fileType}) {
    final random = Random(seed);
    final types = FileType.values;
    final type = fileType ?? types[random.integer(max: types.length - 1)];
    final extensions = IntFileData.extensions(type);
    return extensions[random.integer(max: extensions.length - 1)];
  }

  /// Returns a random mime type.
  ///
  /// [type] is optional [MimeType] group.
  ///
  /// Example:
  /// ```dart
  /// File().mimeType(); // "audio/vnd.octel.sbc"
  /// File().mimeType(type: MimeType.image); // "image/vnd.net-fpx"
  /// ```
  String mimeType({MimeType? type}) {
    final random = Random(seed);
    final mimes = MimeType.values;
    final mime = type ?? mimes[random.integer(max: mimes.length - 1)];
    final types = IntFileData.mimeTypes(mime);
    return types[random.integer(max: types.length - 1)];
  }

  /// Returns size of a file.
  ///
  /// [min] is optional minimum value (default is 1).
  ///
  /// [max] is optional maximum value (default is 100).
  ///
  /// Throws a [RangeError] if [min] or [max] is negative or [min] is
  /// greater than [max].
  ///
  /// Example:
  /// ```dart
  /// File().size(); // "69 kB"
  /// File().size(min: 42, max: 420); // "236 TB"
  /// ```
  String size({int min = 1, int max = 100}) {
    if (min.isNegative || max.isNegative) {
      throw RangeError(
        'min and max should be positive integers',
      );
    }

    if (min > max) {
      throw RangeError.value(
        min,
        'min',
        'min cannot be greater than end',
      );
    }

    final random = Random(seed);
    final number = random.integer(min: min, max: max);
    final units = ['bytes', 'kB', 'MB', 'GB', 'TB'];
    final unit = units[random.integer(max: units.length - 1)];
    return '$number $unit';
  }

  /// Returns a random file name with some extension.
  ///
  /// [fileType] is optional [FileType] group.
  ///
  /// Example:
  /// ```dart
  /// File().name(); // "after.pdf"
  /// File().name(fileType: FileType.executable); // "latex.bat"
  /// ```
  String name({FileType? fileType}) {
    final name = const Text().word;
    final ext = this.ext(fileType: fileType);
    return '$name$ext';
  }
}

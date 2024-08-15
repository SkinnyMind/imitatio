import 'dart:math';

import 'package:imitatio/src/enums.dart';
import 'package:imitatio/src/extensions.dart';
import 'package:imitatio/src/rng.dart';

class USA {
  /// Provides special data for USA.
  ///
  /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const USA({this.seed});

  final int? seed;

  /// Returns random tracking number for [service].
  ///
  /// [service] is optional [PostalService] (default is [PostalService.usps]).
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.usa().trackingNumber(); // "6641 9458 7584 4535 9688"
  /// CountrySpecific.usa().trackingNumber(service: PostalService.fedex); // "6583 2854 8432 439"
  /// CountrySpecific.usa().trackingNumber(service: PostalService.ups); // "1ZO2395I7943082753"
  /// ```
  String trackingNumber({PostalService service = PostalService.usps}) {
    final masks = service.masks;
    return Rng.customCode(
      mask: masks[Random(seed).integer(max: masks.length - 1)],
      seed: seed,
    );
  }

  /// Returns a random, but valid SSN.
  ///
  /// Example:
  /// ```dart
  /// CountrySpecific.usa().ssn; // "656-13-1263"
  /// ```
  String get ssn {
    final random = Random(seed);
    var area = random.integer(min: 1, max: 899);
    area = area == 666 ? 665 : area;
    final group = random.integer(min: 1, max: 99).toString().padLeft(2, '0');
    final number = random.integer(min: 1, max: 9999).toString().padLeft(4, '0');
    return '${area.toString().padLeft(3, '0')}-$group-$number';
  }
}

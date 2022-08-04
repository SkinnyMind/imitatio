import 'dart:math';

import 'package:imitatio/src/data/person.dart';

/// Provides data related to internet.
class Internet {
  /// Class for generating data related to the internet.
  const Internet();

  /// Generate a random hostname without scheme.
  String hostname() {
    return PersonData.usernames[Random().nextInt(PersonData.usernames.length)];
  }
}

import 'dart:math';

class Util {
  const Util._();

  /// Returns a list of randomly picked strings.
  ///
  /// [list] is the list to pick from.
  ///
  /// [n] is the number of strings to pick.
  static List<String> pickN({required List<String> list, required int n}) {
    return [for (var i = 0; i < n; i++) list[Random().nextInt(list.length)]];
  }
}

import 'package:imitatio/imitatio.dart';
import 'package:test/test.dart';

void main() {
  group('Internet', () {
    const net = Internet();

    test('returns hostname', () {
      expect(net.hostname(), isA<String>());
    });
  });
}

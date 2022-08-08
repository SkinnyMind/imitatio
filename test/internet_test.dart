import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/file.dart';
import 'package:imitatio/src/data/int/internet.dart';
import 'package:test/test.dart';

void main() {
  group('Internet', () {
    const net = Internet();

    test('returns hostname', () {
      expect(net.hostname().split('.').length, 2);

      final subdomains = ['api', 'admin'];
      final hostname = net.hostname(subdomains: subdomains).split('.');
      expect(hostname.length, 3);
      expect(subdomains.contains(hostname.first), true);
    });

    test('returns content type', () {
      expect(net.contentType().startsWith('Content-Type:'), true);
    });

    test('returns content type of provided mime type', () {
      for (final mimeType in MimeType.values) {
        final result = net.contentType(mimeType: mimeType).split(':')[1].trim();
        expect(FileData.mimeTypes[mimeType.name]!.contains(result), true);
      }
    });

    test('returns http status message', () {
      expect(
        InternetData.httpStatusMessages.contains(net.httpStatusMessage()),
        true,
      );
    });

    test('returns http status code', () {
      final result = net.httpStatusCode();
      expect(result >= 100 && result <= 511, true);
    });

    test('returns http status code', () {
      expect(InternetData.httpMethods.contains(net.httpMethod()), true);
    });

    test('returns emoji', () {
      expect(InternetData.emoji.contains(net.emoji()), true);
    });

    test('returns list of hashtags', () {
      expect(net.hashtags().length, 4);
      expect(net.hashtags(quantity: 5).length, 5);
    });

    test('throws when trying to get invalid number of hashtags', () {
      expect(() => net.hashtags(quantity: 0), throwsA(isA<ArgumentError>()));
    });

    test('returns Map of query parameters', () {
      final result = net.queryParameters(count: 5);
      expect(result.length, 5);
    });

    test('throws when trying to get more than 32 query parameters', () {
      expect(
        () => net.queryParameters(count: 33),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('returns query string', () {
      final result = net.queryString().split('&').length;
      expect(result >= 1 && result <= 10, true);
    });

    test('returns query string with provided number of parameters', () {
      expect(net.queryString(count: 5).split('&').length, 5);
    });

    test(
      'throws when trying to get string with more than 32 query parameters',
      () {
        expect(
          () => net.queryString(count: 33),
          throwsA(isA<ArgumentError>()),
        );
      },
    );

    test('returns top level domain', () {
      for (final type in TLDType.values) {
        final result = net.topLevelDomain(type: type);
        expect(InternetData.tld[type.name]!.contains(result), true);
      }
    });

    test('returns user agent', () {
      expect(InternetData.userAgents.contains(net.userAgent()), true);
    });

    test('returns slug', () {
      final result = net.slug().split('-').length;
      expect(result >= 2 && result <= 12, true);
      expect(net.slug(parts: 5).split('-').length, 5);
    });

    test('returns port number', () {
      for (final range in PortRange.values) {
        final result = net.port(range: range);
        expect(result >= range.min && result <= range.max, true);
      }
    });

    test('returns URL', () {
      expect(net.url().startsWith(URLScheme.https.name), true);

      for (final scheme in URLScheme.values) {
        expect(net.url(urlScheme: scheme).startsWith(scheme.name), true);
      }

      for (final range in PortRange.values) {
        final port = int.parse(
          net.url(portRange: range).split(':').last.replaceFirst('/', ''),
        );
        expect(port >= range.min && port <= range.max, true);
      }
    });

    test('returns URI', () {
      expect(net.uri().startsWith(URLScheme.https.name), true);

      final urlScheme = URLScheme.http;
      final result = net.uri(
        urlScheme: urlScheme,
        tldType: TLDType.gtld,
        subdomains: ['test', 'dev', 'app'],
        queryParameters: 5,
      );
      expect(result.startsWith(URLScheme.http.name), true);
    });

    test('returns an IPv4 address', () {
      final result = net.ipv4().split('.');
      expect(result.length, 4);
      for (final octet in result) {
        expect(int.tryParse(octet), isA<int>());
      }

      final port =
          int.parse(net.ipv4(portRange: PortRange.all).split(':').last);
      expect(port >= PortRange.all.min && port <= PortRange.all.max, true);
    });

    test('returns an IPv6 address', () {
      final result = net.ipv6();
      expect(RegExp('[0-9a-fA-F]{1,4}').hasMatch(result), true);
      expect(result.split(':').length, 8);
    });

    test('returns a mac address', () {
      expect(
        RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$')
            .hasMatch(net.macAddress()),
        true,
      );
    });
  });
}

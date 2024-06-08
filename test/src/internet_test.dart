import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/file.dart';
import 'package:imitatio/src/datasets/international/internet.dart';
import 'package:test/test.dart';

void main() {
  group('Internet', () {
    const internet = Internet();

    test('returns hostname', () {
      expect(internet.hostname().split('.').length, 2);

      final subdomains = ['api', 'admin'];
      final hostname = internet.hostname(subdomains: subdomains).split('.');
      expect(hostname.length, 3);
      expect(subdomains, contains(hostname.first));
    });

    test('returns content type', () {
      expect(
        internet.contentType(),
        startsWith('Content-Type:'),
      );
    });

    test('returns content type of provided mime type', () {
      final type = MimeType.text;
      expect(
        IntFileData.mimeTypes(type),
        contains(internet.contentType(mimeType: type).split(':')[1].trim()),
      );
    });

    test('returns http status message', () {
      expect(
        IntInternetData.httpStatusMessages,
        contains(internet.httpStatusMessage),
      );
    });

    test('returns http status code', () {
      final result = internet.httpStatusCode;
      expect(result >= 100 && result <= 511, true);
    });

    test('returns http method', () {
      expect(
        IntInternetData.httpMethods,
        contains(internet.httpMethod),
      );
    });

    test('returns emoji', () {
      expect(IntInternetData.emojis, contains(internet.emoji));
    });

    test('returns list of hashtags', () {
      expect(internet.hashtags().length, 4);
      expect(internet.hashtags(quantity: 5).length, 5);
    });

    test('throws when trying to get invalid number of hashtags', () {
      expect(
        () => internet.hashtags(quantity: 0),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('returns Map of query parameters', () {
      final result = internet.queryParameters(count: 5);
      expect(result.length, 5);
    });

    test('throws when trying to get more than 32 query parameters', () {
      expect(
        () => internet.queryParameters(count: 33),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('returns query string', () {
      final result = internet.queryString().split('&').length;
      expect(result >= 1 && result <= 10, true);
    });

    test('returns query string with provided number of parameters', () {
      expect(internet.queryString(count: 5).split('&').length, 5);
    });

    test(
      'throws when trying to get string with more than 32 query parameters',
      () {
        expect(
          () => internet.queryString(count: 33),
          throwsA(isA<ArgumentError>()),
        );
      },
    );

    test('returns top level domain', () {
      expect(
        IntInternetData.tlds(TLDType.cctld),
        contains(internet.topLevelDomain()),
      );

      final type = TLDType.geotld;
      expect(
        IntInternetData.tlds(type),
        contains(internet.topLevelDomain(type: type)),
      );
    });

    test('returns user agent', () {
      expect(IntInternetData.userAgents, contains(internet.userAgent));
    });

    test('returns slug', () {
      final result = internet.slug().split('-').length;
      expect(result >= 2 && result <= 12, true);
      expect(internet.slug(parts: 5).split('-').length, 5);
    });

    test('throws when trying to return slug with wrong number of parts', () {
      expect(() => internet.slug(parts: 1), throwsA(isA<ArgumentError>()));
      expect(() => internet.slug(parts: 13), throwsA(isA<ArgumentError>()));
    });

    test('returns port number', () {
      for (final range in PortRange.values) {
        final result = internet.port(range: range);
        expect(result >= range.min && result <= range.max, true);
      }
    });

    test('returns URL', () {
      expect(
        internet.url(),
        startsWith(URLScheme.https.name),
      );

      final scheme = URLScheme.ws;
      expect(
        internet.url(urlScheme: scheme),
        startsWith(scheme.name),
      );

      final range = PortRange.wellKnown;
      final port = int.parse(
        internet.url(portRange: range).split(':').last.replaceFirst('/', ''),
      );
      expect(port >= range.min && port <= range.max, true);
    });

    test('returns URI', () {
      expect(
        internet.uri(),
        startsWith(URLScheme.https.name),
      );

      final urlScheme = URLScheme.http;
      final result = internet.uri(
        urlScheme: urlScheme,
        tldType: TLDType.gtld,
        subdomains: ['test', 'dev', 'app'],
        queryParameters: 5,
      );
      expect(result, startsWith(URLScheme.http.name));
    });

    test('returns an IPv4 address', () {
      final result = internet.ipv4().split('.');
      expect(result.length, 4);
      for (final octet in result) {
        expect(int.tryParse(octet), isA<int>());
      }

      final port =
          int.parse(internet.ipv4(portRange: PortRange.all).split(':').last);
      expect(port >= PortRange.all.min && port <= PortRange.all.max, true);
    });

    test('returns an IPv6 address', () {
      final result = internet.ipv6;
      expect(RegExp('[0-9a-fA-F]{1,4}').hasMatch(result), true);
      expect(result.split(':').length, 8);
    });

    test('returns a mac address', () {
      expect(
        RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$')
            .hasMatch(internet.macAddress),
        true,
      );
    });

    test('returns a public DNS', () {
      expect(IntInternetData.publicDNSes, contains(internet.publicDNS));
    });
  });
}

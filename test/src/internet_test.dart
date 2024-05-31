import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/file.dart';
import 'package:imitatio/src/datasets/international/internet.dart';
import 'package:test/test.dart';

void main() {
  group('Internet', () {
    test('returns hostname', () {
      expect(Internet.hostname().split('.').length, 2);

      final subdomains = ['api', 'admin'];
      final hostname = Internet.hostname(subdomains: subdomains).split('.');
      expect(hostname.length, 3);
      expect(subdomains.contains(hostname.first), true);
    });

    test('returns content type', () {
      expect(Internet.contentType().startsWith('Content-Type:'), true);
    });

    test('returns content type of provided mime type', () {
      for (final mimeType in MimeType.values) {
        final result =
            Internet.contentType(mimeType: mimeType).split(':')[1].trim();
        expect(FileData.mimeTypes[mimeType.name]!.contains(result), true);
      }
    });

    test('returns http status message', () {
      expect(
        InternetData.httpStatusMessages.contains(Internet.httpStatusMessage()),
        true,
      );
    });

    test('returns http status code', () {
      final result = Internet.httpStatusCode();
      expect(result >= 100 && result <= 511, true);
    });

    test('returns http method', () {
      expect(InternetData.httpMethods.contains(Internet.httpMethod()), true);
    });

    test('returns emoji', () {
      expect(InternetData.emoji.contains(Internet.emoji()), true);
    });

    test('returns list of hashtags', () {
      expect(Internet.hashtags().length, 4);
      expect(Internet.hashtags(quantity: 5).length, 5);
    });

    test('throws when trying to get invalid number of hashtags', () {
      expect(
        () => Internet.hashtags(quantity: 0),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('returns Map of query parameters', () {
      final result = Internet.queryParameters(count: 5);
      expect(result.length, 5);
    });

    test('throws when trying to get more than 32 query parameters', () {
      expect(
        () => Internet.queryParameters(count: 33),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('returns query string', () {
      final result = Internet.queryString().split('&').length;
      expect(result >= 1 && result <= 10, true);
    });

    test('returns query string with provided number of parameters', () {
      expect(Internet.queryString(count: 5).split('&').length, 5);
    });

    test(
      'throws when trying to get string with more than 32 query parameters',
      () {
        expect(
          () => Internet.queryString(count: 33),
          throwsA(isA<ArgumentError>()),
        );
      },
    );

    test('returns top level domain', () {
      expect(
        InternetData.tld[TLDType.cctld.name]!.contains(
          Internet.topLevelDomain(),
        ),
        true,
      );

      for (final type in TLDType.values) {
        final result = Internet.topLevelDomain(type: type);
        expect(InternetData.tld[type.name]!.contains(result), true);
      }
    });

    test('returns user agent', () {
      expect(InternetData.userAgents.contains(Internet.userAgent()), true);
    });

    test('returns slug', () {
      final result = Internet.slug().split('-').length;
      expect(result >= 2 && result <= 12, true);
      expect(Internet.slug(parts: 5).split('-').length, 5);
    });

    test('throws when trying to return slug with wrong number of parts', () {
      expect(() => Internet.slug(parts: 1), throwsA(isA<ArgumentError>()));
      expect(() => Internet.slug(parts: 13), throwsA(isA<ArgumentError>()));
    });

    test('returns port number', () {
      for (final range in PortRange.values) {
        final result = Internet.port(range: range);
        expect(result >= range.min && result <= range.max, true);
      }
    });

    test('returns URL', () {
      expect(Internet.url().startsWith(URLScheme.https.name), true);

      for (final scheme in URLScheme.values) {
        expect(Internet.url(urlScheme: scheme).startsWith(scheme.name), true);
      }

      for (final range in PortRange.values) {
        final port = int.parse(
          Internet.url(portRange: range).split(':').last.replaceFirst('/', ''),
        );
        expect(port >= range.min && port <= range.max, true);
      }
    });

    test('returns URI', () {
      expect(Internet.uri().startsWith(URLScheme.https.name), true);

      final urlScheme = URLScheme.http;
      final result = Internet.uri(
        urlScheme: urlScheme,
        tldType: TLDType.gtld,
        subdomains: ['test', 'dev', 'app'],
        queryParameters: 5,
      );
      expect(result.startsWith(URLScheme.http.name), true);
    });

    test('returns an IPv4 address', () {
      final result = Internet.ipv4().split('.');
      expect(result.length, 4);
      for (final octet in result) {
        expect(int.tryParse(octet), isA<int>());
      }

      final port =
          int.parse(Internet.ipv4(portRange: PortRange.all).split(':').last);
      expect(port >= PortRange.all.min && port <= PortRange.all.max, true);
    });

    test('returns an IPv6 address', () {
      final result = Internet.ipv6();
      expect(RegExp('[0-9a-fA-F]{1,4}').hasMatch(result), true);
      expect(result.split(':').length, 8);
    });

    test('returns a mac address', () {
      expect(
        RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$')
            .hasMatch(Internet.macAddress()),
        true,
      );
    });

    test('returns a public DNS', () {
      expect(InternetData.publicDNS.contains(Internet.publicDNS()), true);
    });
  });
}

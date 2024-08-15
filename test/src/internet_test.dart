import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/file.dart';
import 'package:imitatio/src/datasets/international/internet.dart';
import 'package:test/test.dart';

void main() {
  group('Internet', () {
    const internet = Internet();
    const seededInternet = Internet(seed: 1);

    test('returns hostname', () {
      expect(internet.hostname().split('.').length, 2);

      final subdomains = ['api', 'admin'];
      final hostname = internet.hostname(subdomains: subdomains).split('.');
      expect(hostname.length, 3);
      expect(subdomains, contains(hostname.first));

      expect(
        seededInternet.hostname(),
        equals(seededInternet.hostname()),
      );
    });

    test('returns content type', () {
      expect(
        internet.contentType(),
        startsWith('Content-Type:'),
      );

      expect(
        seededInternet.contentType(),
        equals(seededInternet.contentType()),
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
      expect(
        seededInternet.httpStatusMessage,
        equals(seededInternet.httpStatusMessage),
      );
    });

    test('returns http status code', () {
      final result = internet.httpStatusCode;
      expect(result >= 100 && result <= 511, true);

      expect(
        seededInternet.httpStatusCode,
        equals(seededInternet.httpStatusCode),
      );
    });

    test('returns http method', () {
      expect(
        IntInternetData.httpMethods,
        contains(internet.httpMethod),
      );
      expect(
        seededInternet.httpMethod,
        equals(seededInternet.httpMethod),
      );
    });

    test('returns Map of query parameters', () {
      final result = internet.queryParameters(count: 5);
      expect(result.length, 5);

      expect(
        seededInternet.queryParameters(),
        equals(seededInternet.queryParameters()),
      );
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

      expect(
        seededInternet.queryString(),
        equals(seededInternet.queryString()),
      );
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

      expect(
        seededInternet.topLevelDomain(),
        equals(seededInternet.topLevelDomain()),
      );
    });

    test('returns user agent', () {
      expect(IntInternetData.userAgents, contains(internet.userAgent));
      expect(
        seededInternet.userAgent,
        equals(seededInternet.userAgent),
      );
    });

    test('returns path', () {
      final result = internet.path().split('/').length;
      expect(result >= 2 && result <= 12, true);
      expect(internet.path(parts: 5).split('/').length, 5);

      expect(
        seededInternet.path(),
        equals(seededInternet.path()),
      );
    });

    test('returns slug', () {
      final result = internet.slug().split('-').length;
      expect(result >= 2 && result <= 12, true);
      expect(internet.slug(parts: 5).split('-').length, 5);

      expect(
        seededInternet.slug(),
        equals(seededInternet.slug()),
      );
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

      expect(
        seededInternet.port(),
        equals(seededInternet.port()),
      );
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

      expect(
        seededInternet.url(),
        equals(seededInternet.url()),
      );
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

      expect(
        seededInternet.ipv4(),
        equals(seededInternet.ipv4()),
      );
    });

    test('returns an IPv4 address in specific purpose range', () {
      for (final purpose in IPv4Purpose.values) {
        final result = internet.ipv4(purpose: purpose);
        final octets = result.split('.');
        expect(octets.length, 4);
        for (final octet in octets) {
          expect(int.tryParse(octet), isA<int>());
        }
        final intOctets = octets.map((octet) => int.parse(octet)).toList();
        final intAddress = (intOctets[0] << 24) +
            (intOctets[1] << 16) +
            (intOctets[2] << 8) +
            intOctets[3];
        expect(intAddress >= purpose.min && intAddress <= purpose.max, true);
      }

      expect(
        seededInternet.ipv4(purpose: IPv4Purpose.loopback),
        equals(seededInternet.ipv4(purpose: IPv4Purpose.loopback)),
      );
    });

    test('returns an IPv6 address', () {
      final result = internet.ipv6;
      final regexp = RegExp(
        r'^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$',
      );
      expect(regexp.hasMatch(result), true);

      expect(
        seededInternet.ipv6,
        equals(seededInternet.ipv6),
      );
    });

    test('returns a mac address', () {
      expect(
        RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$')
            .hasMatch(internet.macAddress),
        true,
      );

      expect(
        seededInternet.macAddress,
        equals(seededInternet.macAddress),
      );
    });

    test('returns a public DNS', () {
      expect(IntInternetData.publicDNSes, contains(internet.publicDNS));
      expect(
        seededInternet.publicDNS,
        equals(seededInternet.publicDNS),
      );
    });

    test('returns DSN', () {
      final result = internet.dsn();
      final schemes = DSNType.values.map((e) => e.scheme);
      final ports = DSNType.values.map((e) => e.port);
      expect(schemes, contains(result.split('://').first));
      expect(ports, contains(int.parse(result.split(':').last)));

      final type = DSNType.postgres;
      final withType = internet.dsn(dsnType: type);
      expect(withType.startsWith('${type.scheme}://'), true);
      expect(withType.endsWith(':${type.port}'), true);

      expect(
        seededInternet.dsn(),
        equals(seededInternet.dsn()),
      );
    });

    test('returns ASN', () {
      final result = internet.asn;
      expect(result, startsWith("AS"));
      final number = int.parse(result.substring(2));
      expect((number >= 1) && (number <= 4199999999), true);

      expect(
        seededInternet.asn,
        equals(seededInternet.asn),
      );
    });
  });
}

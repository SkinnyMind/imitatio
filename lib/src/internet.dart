import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/datasets/international/internet.dart';
import 'package:imitatio/src/datasets/international/person.dart';
import 'package:imitatio/src/datasets/text.dart';
import 'package:imitatio/src/extensions.dart';
import 'package:imitatio/src/util.dart';

/// Provides data related to internet.
class Internet {
  /// Provides data related to internet.
  ///
  /// /// [seed] is optional parameter to initialize the internal state of the
  /// random generator.
  const Internet({this.seed});

  final int? seed;

  /// Returns a random HTTP content type.
  ///
  /// [mimeType] is optional [MimeType] group.
  ///
  /// Example:
  /// ```dart
  /// Internet().contentType(); // "Content-Type: text/vnd.motorola.reflex"
  /// Internet().contentType(mimeType: MimeType.text); // "Content-Type: text/vnd.debian.copyright"
  /// ```
  String contentType({MimeType? mimeType}) {
    final format = File(seed: seed).mimeType(type: mimeType);
    return 'Content-Type: $format';
  }

  /// Returns a random HTTP status message.
  ///
  /// Example:
  /// ```dart
  /// Internet().httpStatusMessage; // "408 Request Timeout"
  /// ```
  String get httpStatusMessage {
    final data = IntInternetData.httpStatusMessages;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random HTTP status code.
  ///
  /// Example:
  /// ```dart
  /// Internet().httpStatusCode; // 202
  /// ```
  int get httpStatusCode {
    final data = IntInternetData.httpStatusCodes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random HTTP method.
  ///
  /// Example:
  /// ```dart
  /// Internet().httpMethod; // "CONNECT"
  /// ```
  String get httpMethod {
    final data = IntInternetData.httpMethods;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random hostname without scheme.
  ///
  /// [tldType] is optional [TLDType] group.
  ///
  /// [subdomains] is optional list of subdomains.
  ///
  /// Example:
  /// ```dart
  /// Internet().hostname(); // "shepherd.ax"
  /// Internet().hostname(tldType: TLDType.gtld); // "toe.mls"
  /// Internet().hostname(subdomains: ['api', 'admin']); // "admin.ten.gb"
  /// ```
  String hostname({TLDType? tldType, List<String>? subdomains}) {
    final random = Random(seed);
    final host = StringBuffer();
    final tld = tldType != null
        ? topLevelDomain(type: tldType)
        : topLevelDomain();

    if (subdomains != null) {
      host.write('${subdomains[random.integer(max: subdomains.length - 1)]}.');
    }

    final data = IntPersonData.usernames;
    host.write(data[random.integer(max: data.length - 1)]);
    host.write(tld);
    return host.toString();
  }

  /// Returns random URL.
  ///
  /// [urlScheme] is one of [URLScheme]'s (default is [URLScheme.https]).
  ///
  /// [portRange] is optional [PortRange] group.
  ///
  /// [tldType] is optional [TLDType] group.
  ///
  /// [subdomains] is optional list of subdomains.
  ///
  /// Example:
  /// ```dart
  /// Internet().url(); // "https://greatly.yt/"
  /// Internet().url(urlScheme: URLScheme.ws, portRange: PortRange.all); // "ws://index.tw:29511/"
  /// Internet().url(tldType: TLDType.stld); // "https://lid.gov/"
  /// Internet().url(subdomains: ['api', 'admin']); // "https://api.throws.fm/"
  /// ```
  String url({
    URLScheme urlScheme = URLScheme.https,
    PortRange? portRange,
    TLDType? tldType,
    List<String>? subdomains,
  }) {
    final host = hostname(tldType: tldType, subdomains: subdomains);

    final url = StringBuffer();
    url.write('${urlScheme.name}://$host');

    if (portRange != null) {
      url.write(':${port(range: portRange)}');
    }

    url.write('/');

    return url.toString();
  }

  /// Returns a random URI.
  ///
  /// [urlScheme] is one of [URLScheme]'s (default is [URLScheme.https]).
  ///
  /// [tldType] is optional [TLDType] group.
  ///
  /// [subdomains] is optional list of subdomains.
  ///
  /// [queryParameters] is optional number of query parameters.
  ///
  /// Example:
  /// ```dart
  /// Internet().uri(); // "https://import.ht/2014/6/10/grades-ghost-custom-republic-durham-desk"
  /// Internet().uri(urlScheme: URLScheme.ftp); // "ftp://motors.ma/2020/10/14/dangerous-plants-customers-textbooks-item-ct-outlet"
  /// Internet().uri(tldType: TLDType.stld); // "https://for.jobs/2017/2/16/lab-typical"
  /// Internet().uri(subdomains: ['api', 'admin']); // "https://api.philip.at/2012/6/11/places-local-grace-disc-acts-specialist-judges-ignore-sized-copyright-ties"
  /// Internet().uri(queryParameters: 3); // "https://qualified.ma/2016/4/12/musical-rr-detail?private=root&businesses=somebody&age=surface"
  /// ```
  String uri({
    URLScheme urlScheme = URLScheme.https,
    TLDType? tldType,
    List<String>? subdomains,
    int? queryParameters,
  }) {
    final directory = Date(seed: seed).date(start: 2010).replaceAll('-', '/');
    final url = this.url(
      urlScheme: urlScheme,
      tldType: tldType,
      subdomains: subdomains,
    );
    final uri = StringBuffer();
    uri.write('$url$directory/${slug()}');

    if (queryParameters != null) {
      uri.write('?${queryString(count: queryParameters)}');
    }

    return uri.toString();
  }

  /// Returns arbitrary query parameters.
  ///
  /// [count] is optional number of parameters (default is between 1 and 10,
  /// maximum is 32).
  ///
  /// Throws [ArgumentError] if [count] is greater than 32.
  ///
  /// Example:
  /// ```dart
  /// Internet().queryParameters(); // {"senior": "public", "physics": "invite", "enemy": "trek"}
  /// Internet().queryParameters(count: 1); // {"experiments": "risk"}
  /// ```
  Map<String, String> queryParameters({int? count}) {
    final quantity = count ?? Random(seed).nextInt(10) + 1;
    if (quantity > 32) {
      throw ArgumentError.value(
        count,
        'count',
        'Maximum allowed number of query parameters is 32',
      );
    }
    final keysSeed = seed != null ? seed! + 69 : null;
    final keys = Choice(seed: keysSeed).choose(
      items: TextData.locale(Locale.en).words,
      length: quantity,
      unique: true,
    );
    final values = Text(seed: seed).words(quantity: quantity);

    return Map.fromIterables(keys, values);
  }

  /// Returns arbitrary query string.
  ///
  /// [count] is optional number of parameters (default is between 1 and 10,
  /// maximum is 32).
  ///
  /// Throws [ArgumentError] if [count] is greater than 32.
  ///
  /// Example:
  /// ```dart
  /// Internet().queryString(); // "environment=contract&planned=personal&task=goes"
  /// Internet().queryString(count: 1); // "influence=material"
  /// ```
  String queryString({int? count}) {
    return Uri(queryParameters: queryParameters(count: count)).query;
  }

  /// Returns random top level domain.
  ///
  /// [type] is [TLDType] group (default is [TLDType.cctld]).
  ///
  /// Example:
  /// ```dart
  /// Internet().topLevelDomain(); // ".bh"
  /// Internet().topLevelDomain(type: TLDType.utld); // ".info"
  /// ```
  String topLevelDomain({TLDType type = TLDType.cctld}) {
    final data = IntInternetData.tlds(type);
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random user agent.
  ///
  /// Example:
  /// ```dart
  /// Internet().userAgent; // "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; de) Opera 8.02"
  /// ```
  String get userAgent {
    final data = IntInternetData.userAgents;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns random port.
  ///
  /// [range] is [PortRange] group (default is [PortRange.all]).
  ///
  /// Example:
  /// ```dart
  /// Internet().port(); // 58232
  /// Internet().port(range: PortRange.wellKnown); // 59
  /// ```
  int port({PortRange range = PortRange.all}) {
    return Random(seed).integer(min: range.min, max: range.max);
  }

  /// Returns a random path of given [parts] count.
  ///
  /// [parts] is optional number of slug's parts (default is between 2 and 12).
  ///
  /// Throws [ArgumentError] if [parts] is lesser than 2 or greater than 12.
  ///
  /// Example:
  /// ```dart
  /// Internet().path(); // "flights/trademarks/suppose/migration"
  /// Internet().path(parts: 2); // "wrote/fortune"
  /// ```
  String path({int? parts}) {
    return slug(parts: parts).replaceAll('-', '/');
  }

  /// Returns a random slug of given [parts] count.
  ///
  /// [parts] is optional number of slug's parts (default is between 2 and 12).
  ///
  /// Throws [ArgumentError] if [parts] is lesser than 2 or greater than 12.
  ///
  /// Example:
  /// ```dart
  /// Internet().slug(); // "railway-characteristics-specifically-then-performing-firefox"
  /// Internet().slug(parts: 2); // "payable-jokes"
  /// ```
  String slug({int? parts}) {
    final count = parts ?? Random(seed).integer(min: 2, max: 12);
    if (count < 2) {
      throw ArgumentError.value(
        parts,
        'parts',
        'Slug must contain more than 2 parts',
      );
    }
    if (count > 12) {
      throw ArgumentError.value(
        parts,
        'parts',
        'Slug must contain less than 12 parts',
      );
    }

    return Text(seed: seed).words(quantity: count).join('-');
  }

  /// Returns a random IPv4 address.
  ///
  /// [purpose] is optional [IPv4Purpose].
  ///
  /// [portRange] is optional [PortRange] group.
  ///
  /// Example:
  /// ```dart
  /// Internet().ipv4(); // "143.233.12.25"
  /// Internet().ipv4(purpose: IPv4Purpose.loopback); // "127.80.98.206"
  /// Internet().ipv4(portRange: PortRange.registered); // "171.209.85.41:17455"
  /// ```
  String ipv4({IPv4Purpose? purpose, PortRange? portRange}) {
    final result = StringBuffer();
    final random = Random(seed);

    if (purpose != null) {
      final intAddress = random.integer(min: purpose.min, max: purpose.max);
      result.write(
        '${intAddress >> 24 & 255}.${intAddress >> 16 & 255}.'
        '${intAddress >> 8 & 255}.${intAddress & 255}',
      );
    } else {
      final octets = List.generate(
        4,
        (_) => random.integer(max: 255),
      ).join('.');
      result.write(octets);
    }

    if (portRange != null) {
      result.write(':${port(range: portRange)}');
    }

    return result.toString();
  }

  /// Returns a random IPv6 address.
  ///
  /// Example:
  /// ```dart
  /// Internet().ipv6; // "7ca5:39d3:96ff:4e6e:7448:b16b:e50c:7131"
  /// ```
  String get ipv6 {
    final random = Random(seed);
    final address = List.generate(
      8,
      (_) => random.integer(max: 65535).toRadixString(16),
    ).join(':');
    return Util.compressIPv6(address);
  }

  /// Returns a random MAC address.
  ///
  /// Example:
  /// ```dart
  /// Internet().macAddress; // "00:16:3e:40:42:ed"
  /// ```
  String get macAddress {
    final random = Random(seed);
    return [
      0.toRadixString(16).padLeft(2, '0'),
      22.toRadixString(16),
      62.toRadixString(16),
      random.integer(max: 127).toRadixString(16).padLeft(2, '0'),
      random.integer(max: 255).toRadixString(16).padLeft(2, '0'),
      random.integer(max: 255).toRadixString(16).padLeft(2, '0'),
    ].join(':');
  }

  /// Returns a random public DNS.
  ///
  /// Example:
  /// ```dart
  /// Internet().publicDNS; // "185.228.168.9"
  /// ```
  String get publicDNS {
    final data = IntInternetData.publicDNSes;
    return data[Random(seed).integer(max: data.length - 1)];
  }

  /// Returns a random DSN (Data Source Name).
  ///
  /// [dsnType] is optional [DSNType] group.
  ///
  /// [tldType] is optional [TLDType] group.
  ///
  /// [subdomains] is optional list of subdomains.
  ///
  /// Example:
  /// ```dart
  /// Internet().dsn(); // "mysql://kitchen.vn:3306"
  /// Internet().dsn(dsnType: DSNType.redis); // "redis://losing.gl:6379"
  /// Internet().dsn(tldType: TLDType.geotld); // "rabbitmq://identifies.moscow:5672"
  /// Internet().dsn(subdomains: ['app', 'api', 'admin']); // "postgres://api.concentrate.io:5432"
  /// ```
  String dsn({DSNType? dsnType, TLDType? tldType, List<String>? subdomains}) {
    final data = DSNType.values;
    final hostname = this.hostname(tldType: tldType, subdomains: subdomains);
    final dsn = dsnType ?? data[Random(seed).integer(max: data.length - 1)];

    return '${dsn.scheme}://$hostname:${dsn.port}';
  }

  /// Returns a random ASN (Autonomous System Number).
  ///
  /// ASNs reserved for private use are not considered.
  ///
  /// Example:
  /// ```dart
  /// Internet().asn; // "AS709911205"
  /// ```
  String get asn {
    final number = Random(seed).integer(min: 1, max: 4199999999);
    return 'AS$number';
  }
}

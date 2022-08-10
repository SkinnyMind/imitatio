import 'dart:math';

import 'package:imitatio/imitatio.dart';
import 'package:imitatio/src/data/int/internet.dart';
import 'package:imitatio/src/data/int/person.dart';

/// Provides data related to internet.
class Internet {
  /// Creates data related to the internet.
  const Internet();

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
    final format = const File().mimeType(type: mimeType);
    return 'Content-Type: $format';
  }

  /// Returns a random HTTP status message.
  ///
  /// Example:
  /// ```dart
  /// Internet().httpStatusMessage(); // "408 Request Timeout"
  /// ```
  String httpStatusMessage() {
    return InternetData.httpStatusMessages[
        Random().nextInt(InternetData.httpStatusMessages.length)];
  }

  /// Returns a random HTTP status code.
  ///
  /// Example:
  /// ```dart
  /// Internet().httpStatusCode(); // 202
  /// ```
  int httpStatusCode() {
    return InternetData
        .httpStatusCodes[Random().nextInt(InternetData.httpStatusCodes.length)];
  }

  /// Returns a random HTTP method.
  ///
  /// Example:
  /// ```dart
  /// Internet().httpMethod(); // "CONNECT"
  /// ```
  String httpMethod() {
    return InternetData
        .httpMethods[Random().nextInt(InternetData.httpMethods.length)];
  }

  /// Returns a random emoji shortcut code.
  ///
  /// Example:
  /// ```dart
  /// Internet().emoji(); // ":congratulations:"
  /// ```
  String emoji() {
    return InternetData.emoji[Random().nextInt(InternetData.emoji.length)];
  }

  /// Returns a list of hashtags.
  ///
  /// [quantity] is optional number of hashtags (default is 4).
  ///
  /// Throws [ArgumentError] if [quantity] is not a positive integer.
  ///
  /// Example:
  /// ```dart
  /// Internet().hashtags(); // ["#plates", "#coat", "#star", "#granted"]
  /// Internet().hashtags(quantity: 2); // ["#systems", "#experts"]
  /// ```
  List<String> hashtags({int quantity = 4}) {
    if (quantity < 1) {
      throw ArgumentError.value(
        quantity,
        'quantity',
        'Quantity must be a positive integer',
      );
    }
    const text = Text();
    return [for (var i = 0; i < quantity; i++) '#${text.word()}'];
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
    final host = StringBuffer();
    final tld =
        tldType != null ? topLevelDomain(type: tldType) : topLevelDomain();

    if (subdomains != null) {
      host.write('${subdomains[Random().nextInt(subdomains.length)]}.');
    }

    host.write(
      PersonData.usernames[Random().nextInt(PersonData.usernames.length)],
    );

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
    final directory = const Date().date(start: 2010).replaceAll('-', '/');
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
    final quantity = count ?? Random().nextInt(10) + 1;
    if (quantity > 32) {
      throw ArgumentError.value(
        count,
        'count',
        'Maximum allowed number of query parameters is 32',
      );
    }
    final keys = <String>{};
    const text = Text();
    while (keys.length != quantity) {
      keys.add(text.word());
    }
    final values = text.words(quantity: quantity);

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
    final domains = InternetData.tld[type.name]!;
    return domains[Random().nextInt(domains.length)];
  }

  /// Returns a random user agent.
  ///
  /// Example:
  /// ```dart
  /// Internet().userAgent(); // "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; de) Opera 8.02"
  /// ```
  String userAgent() {
    return InternetData
        .userAgents[Random().nextInt(InternetData.userAgents.length)];
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
    return Random().nextInt(range.max - range.min) + range.min;
  }

  /// Returns a random slug of given parts count.
  ///
  /// [parts] is optional number of slug's parts (default is between 2 and 12,
  /// minimum is 2, maximum is 12).
  ///
  /// Throws [ArgumentError] if [parts] is lesser than 2 or greater than 12.
  ///
  /// Example:
  /// ```dart
  /// Internet().slug(); // "railway-characteristics-specifically-then-performing-firefox"
  /// Internet().slug(parts: 2); // "payable-jokes"
  /// ```
  String slug({int? parts}) {
    final count = parts ?? Random().nextInt(11) + 2;
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

    return const Text().words(quantity: count).join('-');
  }

  /// Returns a random IPv4 address.
  ///
  /// [portRange] is optional [PortRange] group.
  ///
  /// Example:
  /// ```dart
  /// Internet().ipv4(); // "143.233.12.25"
  /// Internet().ipv4(portRange: PortRange.registered); // "171.209.85.41:17455"
  /// ```
  String ipv4({PortRange? portRange}) {
    final result = StringBuffer();
    final octets =
        [for (var i = 0; i < 4; i++) Random().nextInt(256)].join('.');
    result.write(octets);

    if (portRange != null) {
      result.write(':${port(range: portRange)}');
    }

    return result.toString();
  }

  /// Returns a random IPv6 address.
  ///
  /// Example:
  /// ```dart
  /// Internet().ipv6(); // "7ca5:39d3:96ff:4e6e:7448:b16b:e50c:7131"
  /// ```
  String ipv6() {
    return [
      for (var i = 0; i < 8; i++)
        Random().nextInt(65536).toRadixString(16).padLeft(4, '0')
    ].join(':');
  }

  /// Returns a random MAC address.
  ///
  /// Example:
  /// ```dart
  /// Internet().macAddress(); // "00:16:3e:40:42:ed"
  /// ```
  String macAddress() {
    final random = Random();
    return [
      0.toRadixString(16).padLeft(2, '0'),
      22.toRadixString(16),
      62.toRadixString(16),
      random.nextInt(128).toRadixString(16).padLeft(2, '0'),
      random.nextInt(256).toRadixString(16).padLeft(2, '0'),
      random.nextInt(256).toRadixString(16).padLeft(2, '0'),
    ].join(':');
  }

  /// Returns a random public DNS.
  ///
  /// Example:
  /// ```dart
  /// Internet().publicDNS(); // "185.228.168.9"
  /// ```
  String publicDNS() =>
      InternetData.publicDNS[Random().nextInt(InternetData.publicDNS.length)];
}

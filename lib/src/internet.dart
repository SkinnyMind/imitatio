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
  String contentType({MimeType? mimeType}) {
    final format = const File().mimeType(type: mimeType);
    return 'Content-Type: $format';
  }

  /// Returns a random HTTP status message.
  String httpStatusMessage() {
    return InternetData.httpStatusMessages[
        Random().nextInt(InternetData.httpStatusMessages.length)];
  }

  /// Returns a random HTTP status code.
  int httpStatusCode() {
    return InternetData
        .httpStatusCodes[Random().nextInt(InternetData.httpStatusCodes.length)];
  }

  /// Returns a random HTTP method.
  String httpMethod() {
    return InternetData
        .httpMethods[Random().nextInt(InternetData.httpMethods.length)];
  }

  /// Returns a random emoji shortcut code.
  String emoji() {
    return InternetData.emoji[Random().nextInt(InternetData.emoji.length)];
  }

  /// Returns a list of hashtags.
  ///
  /// [quantity] is optional number of hashtags (default is 4).
  ///
  /// Throws [ArgumentError] if [quantity] is not a positive integer.
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
  String hostname({TLDType? tldType, List<String>? subdomains}) {
    final host = StringBuffer();
    final tld = topLevelDomain(type: tldType);

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
  String queryString({int? count}) {
    return Uri(queryParameters: queryParameters(count: count)).query;
  }

  /// Returns random top level domain.
  ///
  /// [type] is optional [TLDType] group.
  String topLevelDomain({TLDType? type}) {
    final key = type ?? TLDType.values[Random().nextInt(TLDType.values.length)];
    final domains = InternetData.tld[key.name]!;
    return domains[Random().nextInt(domains.length)];
  }

  /// Returns a random user agent.
  String userAgent() {
    return InternetData
        .userAgents[Random().nextInt(InternetData.userAgents.length)];
  }

  /// Returns random port.
  ///
  /// [range] is [PortRange] group (default is [PortRange.all]).
  int port({PortRange range = PortRange.all}) {
    return Random().nextInt(range.max - range.min) + range.min;
  }

  /// Returns a random slug of given parts count.
  ///
  /// [parts] is optional number of slug's parts (default is between 2 and 12,
  /// minimum is 2, maximum is 12).
  ///
  /// Throws [ArgumentError] if [parts] is lesser than 2 or greater than 12.
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
  String ipv6() {
    return [
      for (var i = 0; i < 8; i++)
        Random().nextInt(65536).toRadixString(16).padLeft(4, '0')
    ].join(':');
  }
}

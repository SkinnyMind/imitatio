/// Common mime types.
enum MimeType { application, audio, image, message, text, video }

/// Top level domain types.
enum TLDType { cctld, gtld, geotld, utld, stld }

/// Port ranges.
enum PortRange {
  all(min: 1, max: 65535),
  wellKnown(min: 1, max: 1023),
  ephemeral(min: 49152, max: 65535),
  registered(min: 1024, max: 49151);

  const PortRange({required this.min, required this.max});
  final int min;
  final int max;
}

/// URL schemes.
enum URLScheme { ws, wss, ftp, sftp, http, https }

/// DSN types.
enum DSNType {
  postgres(scheme: 'postgres', port: 5432),
  mysql(scheme: 'mysql', port: 3306),
  mongodb(scheme: 'mongodb', port: 27017),
  redis(scheme: 'redis', port: 6379),
  couchbase(scheme: 'couchbase', port: 8092),
  memcached(scheme: 'memcached', port: 11211),
  rabbitmq(scheme: 'rabbitmq', port: 5672);

  const DSNType({required this.scheme, required this.port});
  final String scheme;
  final int port;
}

/// File types.
enum FileType {
  source,
  text,
  data,
  audio,
  video,
  image,
  executable,
  compressed,
}

/// ISBN formats.
enum ISBNFormat {
  isbn13('###-#-#####-###-#'),
  isbn10('#-#####-###-#');

  const ISBNFormat(this.mask);
  final String mask;
}

/// EAN formats.
enum EANFormat {
  ean8('########'),
  ean13('#############');

  const EANFormat(this.mask);
  final String mask;
}

/// Credit card types.
enum CardType { visa, masterCard, americanExpress }

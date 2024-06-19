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

/// Genders.
enum Gender { male, female }

/// Title types.
enum TitleType { typical, academic }

/// Regions of timezones.
enum TimezoneRegion {
  africa,
  america,
  antarctica,
  arctic,
  asia,
  atlantic,
  australia,
  europe,
  indian,
  pacific,
}

enum MetricPrefixSign { positive, negative }

/// Measure unit names and symbols.
enum MeasureUnit {
  mass(name: 'gram', symbol: 'gr'),
  information(name: 'byte', symbol: 'b'),
  thermodynamicTemperature(name: 'kelvin', symbol: 'K'),
  amountOfSubstance(name: 'mole', symbol: 'mol'),
  angle(name: 'radian', symbol: 'r'),
  solidAngle(name: 'steradian', symbol: 'sr'),
  frequency(name: 'hertz', symbol: 'Hz'),
  force(name: 'newton', symbol: 'N'),
  pressure(name: 'pascal', symbol: 'P'),
  energy(name: 'joule', symbol: 'J'),
  power(name: 'watt', symbol: 'W'),
  flux(name: 'watt', symbol: 'W'),
  electricCharge(name: 'coulomb', symbol: 'C'),
  voltage(name: 'volt', symbol: 'V'),
  electricCapacitance(name: 'farad', symbol: 'F'),
  electricResistance(name: 'ohm', symbol: 'Ω'),
  electricalConductance(name: 'siemens', symbol: 'S'),
  magneticFlux(name: 'weber', symbol: 'Wb'),
  magneticFluxDensity(name: 'tesla', symbol: 'T'),
  inductance(name: 'henry', symbol: 'H'),
  temperature(name: 'celcius', symbol: '°C'),
  radioactivity(name: 'becquerel', symbol: 'Bq');

  const MeasureUnit({required this.name, required this.symbol});
  final String name;
  final String symbol;
}

enum EmojiCategory {
  smileysAndEmotion,
  peopleAndBody,
  animalsAndNature,
  foodAndDrink,
  travelAndPlaces,
  activities,
  objects,
  symbols,
  flags,
}

enum Locale { en, ru }

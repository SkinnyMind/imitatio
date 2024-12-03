// ignore_for_file: constant_identifier_names

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

/// IPv4 address ranges for different purposes.
enum IPv4Purpose {
  thisNetwork(min: 0, max: 16777215),
  amt(min: 3224682752, max: 3224683007),
  loopback(min: 2130706432, max: 2147483647),
  as112v4(min: 3223307264, max: 3223307519),
  linkLocal(min: 2851995648, max: 2852061183),
  testNet1(min: 3221225984, max: 3221226239),
  testNet2(min: 3325256704, max: 3325256959),
  testNet3(min: 3405803776, max: 3405804031),
  benchmarking(min: 3323068416, max: 3323199487),
  privateUse1(min: 167772160, max: 184549375),
  privateUse2(min: 2886729728, max: 2887778303),
  privateUse3(min: 3232235520, max: 3232301055),
  reserved(min: 4026531840, max: 4294967295),
  sharedAddressSpace(min: 1681915904, max: 1686110207),
  limitedBroadcast(min: 4294967295, max: 4294967295),
  ipv4DummyAddress(min: 3221225480, max: 3221225480),
  turnRelayAnycast(min: 3221225482, max: 3221225482),
  ietfProtocolAssignments(min: 3221225472, max: 3221225727),
  portControlProtocolAnycast(min: 3221225481, max: 3221225481),
  ipv4ServiceContinuityPrefix(min: 3221225472, max: 3221225479),
  directDelegationAs112Service(min: 3232706560, max: 3232706815);

  const IPv4Purpose({required this.min, required this.max});
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
enum ISBNFormat { isbn13, isbn10 }

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

enum CountryCode { a2, a3, numeric, ioc, fifa }

enum PostalService {
  usps(
    name: 'USPS',
    masks: [
      "#### #### #### #### ####",
      "@@ ### ### ### US",
    ],
  ),
  fedex(
    name: 'FedEx',
    masks: [
      "#### #### ####",
      "#### #### #### ###",
    ],
  ),
  ups(name: 'UPS', masks: ["1Z@####@##########"]);

  const PostalService({required this.name, required this.masks});
  final String name;
  final List<String> masks;
}

enum Locale {
  az,
  ar_ae,
  da,
  cs,
  de_at,
  de_ch,
  de,
  el,
  en_au,
  en_ca,
  en_gb,
  en,
  es_mx,
  es,
  et,
  fa,
  fi,
  fr,
  hr,
  hu,
  isl,
  it,
  ja,
  kk,
  ko,
  nl_be,
  nl,
  no,
  pl,
  pt_br,
  pt,
  ru,
  sk,
  sv,
  tr,
  uk,
  zh,
}

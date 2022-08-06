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

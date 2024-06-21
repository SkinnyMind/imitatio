import 'package:imitatio/src/datasets/cs/address.dart';
import 'package:imitatio/src/datasets/da/address.dart';
import 'package:imitatio/src/datasets/de/address.dart';
import 'package:imitatio/src/datasets/de_at/address.dart';
import 'package:imitatio/src/datasets/de_ch/address.dart';
import 'package:imitatio/src/datasets/en/address.dart';
import 'package:imitatio/src/datasets/models/address.dart';
import 'package:imitatio/src/datasets/ru/address.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the address.
class AddressData {
  const AddressData._();

  static AddressDataset locale(Locale locale) {
    return switch (locale) {
      Locale.cs => CsAddressData(),
      Locale.da => DaAddressData(),
      Locale.de_at => DeAtAddressData(),
      Locale.de_ch => DeChAddressData(),
      Locale.de => DeAddressData(),
      Locale.en => EnAddressData(),
      Locale.ru => RuAddressData(),
    };
  }
}

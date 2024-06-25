import 'package:imitatio/src/datasets/cs/address.dart';
import 'package:imitatio/src/datasets/da/address.dart';
import 'package:imitatio/src/datasets/de/address.dart';
import 'package:imitatio/src/datasets/de_at/address.dart';
import 'package:imitatio/src/datasets/de_ch/address.dart';
import 'package:imitatio/src/datasets/el/address.dart';
import 'package:imitatio/src/datasets/en/address.dart';
import 'package:imitatio/src/datasets/en_au/address.dart';
import 'package:imitatio/src/datasets/en_ca/address.dart';
import 'package:imitatio/src/datasets/en_gb/address.dart';
import 'package:imitatio/src/datasets/es/address.dart';
import 'package:imitatio/src/datasets/es_mx/address.dart';
import 'package:imitatio/src/datasets/et/address.dart';
import 'package:imitatio/src/datasets/fa/address.dart';
import 'package:imitatio/src/datasets/fi/address.dart';
import 'package:imitatio/src/datasets/fr/address.dart';
import 'package:imitatio/src/datasets/hr/address.dart';
import 'package:imitatio/src/datasets/hu/address.dart';
import 'package:imitatio/src/datasets/isl/address.dart';
import 'package:imitatio/src/datasets/it/address.dart';
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
      Locale.el => ElAddressData(),
      Locale.en_au => EnAuAddressData(),
      Locale.en_ca => EnCaAddressData(),
      Locale.en_gb => EnGbAddressData(),
      Locale.en => EnAddressData(),
      Locale.es_mx => EsMxAddressData(),
      Locale.es => EsAddressData(),
      Locale.et => EtAddressData(),
      Locale.fa => FaAddressData(),
      Locale.fi => FiAddressData(),
      Locale.fr => FrAddressData(),
      Locale.hr => HrAddressData(),
      Locale.hu => HuAddressData(),
      Locale.isl => IslAddressData(),
      Locale.it => ItAddressData(),
      Locale.ru => RuAddressData(),
    };
  }
}

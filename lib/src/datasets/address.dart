import 'package:imitatio/src/datasets/ar_ae/address.dart';
import 'package:imitatio/src/datasets/ar_dz/address.dart';
import 'package:imitatio/src/datasets/ar_eg/address.dart';
import 'package:imitatio/src/datasets/ar_jo/address.dart';
import 'package:imitatio/src/datasets/ar_kw/address.dart';
import 'package:imitatio/src/datasets/ar_ma/address.dart';
import 'package:imitatio/src/datasets/ar_om/address.dart';
import 'package:imitatio/src/datasets/ar_qa/address.dart';
import 'package:imitatio/src/datasets/ar_sa/address.dart';
import 'package:imitatio/src/datasets/ar_tn/address.dart';
import 'package:imitatio/src/datasets/ar_ye/address.dart';
import 'package:imitatio/src/datasets/at_sy/address.dart';
import 'package:imitatio/src/datasets/az/address.dart';
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
import 'package:imitatio/src/datasets/ja/address.dart';
import 'package:imitatio/src/datasets/kk/address.dart';
import 'package:imitatio/src/datasets/ko/address.dart';
import 'package:imitatio/src/datasets/models/address.dart';
import 'package:imitatio/src/datasets/nl/address.dart';
import 'package:imitatio/src/datasets/nl_be/address.dart';
import 'package:imitatio/src/datasets/no/address.dart';
import 'package:imitatio/src/datasets/pl/address.dart';
import 'package:imitatio/src/datasets/pt/address.dart';
import 'package:imitatio/src/datasets/pt_br/address.dart';
import 'package:imitatio/src/datasets/ru/address.dart';
import 'package:imitatio/src/datasets/sk/address.dart';
import 'package:imitatio/src/datasets/sv/address.dart';
import 'package:imitatio/src/datasets/tr/address.dart';
import 'package:imitatio/src/datasets/uk/address.dart';
import 'package:imitatio/src/datasets/zh/address.dart';
import 'package:imitatio/src/enums.dart';

/// Provides all data related to the address.
class AddressData {
  const AddressData._();

  static AddressDataset locale(Locale locale) {
    return switch (locale) {
      Locale.ar_ae => ArAeAddressData(),
      Locale.ar_dz => ArDzAddressData(),
      Locale.ar_eg => ArEgAddressData(),
      Locale.ar_jo => ArJoAdressData(),
      Locale.ar_kw => ArKwAddressData(),
      Locale.ar_ma => ArMaAddressData(),
      Locale.ar_om => ArOmAddressData(),
      Locale.ar_qa => ArQaAddressData(),
      Locale.ar_sa => ArSaAddressData(),
      Locale.ar_sy => ArSyAddressData(),
      Locale.ar_tn => ArTnAddressData(),
      Locale.ar_ye => ArYeAddressData(),
      Locale.az => AzAddressData(),
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
      Locale.ja => JaAddressData(),
      Locale.kk => KkAddressData(),
      Locale.ko => KoAddressData(),
      Locale.nl_be => NlBeAddressData(),
      Locale.nl => NlAddressData(),
      Locale.no => NoAddressData(),
      Locale.pl => PlAddressData(),
      Locale.pt_br => PtBrAddressData(),
      Locale.pt => PtAddressData(),
      Locale.ru => RuAddressData(),
      Locale.sk => SkAddressData(),
      Locale.sv => SvAddressData(),
      Locale.tr => TrAddressData(),
      Locale.uk => UkAddressData(),
      Locale.zh => ZhAddressData(),
    };
  }
}

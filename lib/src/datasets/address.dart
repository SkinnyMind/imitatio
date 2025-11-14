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
      .ar_ae => ArAeAddressData(),
      .ar_dz => ArDzAddressData(),
      .ar_eg => ArEgAddressData(),
      .ar_jo => ArJoAdressData(),
      .ar_kw => ArKwAddressData(),
      .ar_ma => ArMaAddressData(),
      .ar_om => ArOmAddressData(),
      .ar_qa => ArQaAddressData(),
      .ar_sa => ArSaAddressData(),
      .ar_sy => ArSyAddressData(),
      .ar_tn => ArTnAddressData(),
      .ar_ye => ArYeAddressData(),
      .az => AzAddressData(),
      .cs => CsAddressData(),
      .da => DaAddressData(),
      .de_at => DeAtAddressData(),
      .de_ch => DeChAddressData(),
      .de => DeAddressData(),
      .el => ElAddressData(),
      .en_au => EnAuAddressData(),
      .en_ca => EnCaAddressData(),
      .en_gb => EnGbAddressData(),
      .en => EnAddressData(),
      .es_mx => EsMxAddressData(),
      .es => EsAddressData(),
      .et => EtAddressData(),
      .fa => FaAddressData(),
      .fi => FiAddressData(),
      .fr => FrAddressData(),
      .hr => HrAddressData(),
      .hu => HuAddressData(),
      .isl => IslAddressData(),
      .it => ItAddressData(),
      .ja => JaAddressData(),
      .kk => KkAddressData(),
      .ko => KoAddressData(),
      .nl_be => NlBeAddressData(),
      .nl => NlAddressData(),
      .no => NoAddressData(),
      .pl => PlAddressData(),
      .pt_br => PtBrAddressData(),
      .pt => PtAddressData(),
      .ru => RuAddressData(),
      .sk => SkAddressData(),
      .sv => SvAddressData(),
      .tr => TrAddressData(),
      .uk => UkAddressData(),
      .zh => ZhAddressData(),
    };
  }
}

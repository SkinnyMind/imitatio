import 'package:imitatio/src/datasets/cs/address.dart';
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
      Locale.en => EnAddressData(),
      Locale.ru => RuAddressData(),
    };
  }
}

import 'dart:io';

import 'package:imitatio/imitatio.dart';

void main() {
  // Generate data with default locale (Locale.en)
  final person = const Person();
  stdout.writeln(person.fullName());
  stdout.writeln(person.email(domains: ['example.com']));
  stdout.writeln(person.phoneNumber(mask: "1-2##-3##-4##5"));

  // Generate data for specific locale
  final dePerson = const Person(locale: Locale.de);
  stdout.writeln(dePerson.fullName());
  stdout.writeln(dePerson.occupation);
  stdout.writeln(dePerson.university);

  // Generate data with specific seed (internal state of random generator)
  final seeded1 = const Person(seed: 420);
  final seeded2 = const Person(seed: 420);
  stdout.writeln(seeded1.fullName());
  stdout.writeln(seeded2.fullName());
}

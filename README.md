# imitatio

Imitatio allows generation of different types of fake data in multiple languages.

Inspired by [mimesis](https://github.com/lk-geimfari/mimesis).

## Usage

Imitatio has many classes that can be used to generate fake data. For example, class `Person` has various methods for personal information:

```dart
import 'package:imitatio/imitatio.dart';

final person = const Person();
print(person.fullName()); // "Kristofer Livingston"
print(person.email(domains: ['example.com'])); // "complaints1927@example.com"
print(person.phoneNumber(mask: "1-2##-3##-4##5")); // "1-224-322-4755"

// Generate data for specific locale (default is Locale.en)
final dePerson = const Person(locale: Locale.de);
print(dePerson.fullName()); // Lorelei Krämer
print(dePerson.occupation); // Dolmetscher / Dolmetscherin
print(dePerson.university); // Universität Karlsruhe

// Generate data with specific seed (internal state of random generator)
final seeded1 = const Person(seed: 420);
final seeded2 = const Person(seed: 420);
print(seeded1.fullName()); // Maurice Lynn
print(seeded2.fullName()); // Maurice Lynn
```

Full API reference and documentation can be found [here](https://pub.dev/documentation/imitatio/latest/imitatio/imitatio-library.html).

## License

MIT. See [LICENSE](LICENSE) file for more information.

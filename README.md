# imitatio

Imitatio allows generation of different types of fake data in multiple languages.

Inspired by [mimesis](https://github.com/lk-geimfari/mimesis).

## Usage

Imitatio has many classes that can be used to generate fake data. For example, class `Person` has various methods for personal information:

```dart
import 'package:imitatio/imitatio.dart';

final person = Person();

print(person.fullName()); // "Kristofer Livingston"

print(person.email(domains: ['example.com']); // "complaints1927@example.com"

print(person.phoneNumber(mask: "1-2##-3##-4##5")); // "1-224-322-4755"
```

Full API reference and documentation can be found [here](https://pub.dev/documentation/imitatio/latest/imitatio/imitatio-library.html).

## License

MIT. See [LICENSE](LICENSE) file for more information.

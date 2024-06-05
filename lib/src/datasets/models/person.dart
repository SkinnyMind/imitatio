import 'package:imitatio/src/enums.dart';

abstract class PersonDataset {
  List<String> get academicDegrees;
  List<String> get genders;
  List<String> get languages;
  List<String> names(Gender gender);
  List<String> nationalities(Gender gender);
  List<String> get occupations;
  List<String> get politicalViews;
  List<String> surnames(Gender gender);
  List<String> get telephoneFormats;
  List<String> titles({required Gender gender, required TitleType titleType});
  List<String> get universities;
  List<String> get viewsOn;
  List<String> get worldviews;
}

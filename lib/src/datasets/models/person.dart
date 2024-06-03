import 'package:imitatio/src/enums.dart';

abstract class PersonDataset {
  List<String> get academicDegree;
  List<String> get gender;
  List<String> get language;
  List<String> names(Gender gender);
  List<String> nationality(Gender gender);
  List<String> get occupation;
  List<String> get politicalViews;
  List<String> surnames(Gender gender);
  List<String> get telephoneFormat;
  List<String> title({required Gender gender, required TitleType titleType});
  List<String> get university;
  List<String> get viewsOn;
  List<String> get worldview;
}

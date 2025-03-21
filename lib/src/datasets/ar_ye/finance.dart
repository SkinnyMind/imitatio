import 'package:imitatio/src/datasets/models/finance.dart';

class ArYeFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "البنك المركزي اليمني",
      "بنك التضامن",
      "بنك الكريمي",
      "بنك اليمن الدولي",
      "بنك اليمن والكويت",
      "بنك الانشاء والتعمير",
      "البنك الاسلامي اليمني",
      "بنك سبأ الاسلامي",
      "البنك التجاري اليمني",
      "بنك عدن الاول",
      "البنك الاهلي اليمني",
      "بنك قطر",
      "كاك بانك",
      "بنك اليمن والخليج",
      "البنك العربي",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "شركة الاتصالات اليمنية",
      "المؤسسة العامة للكهرباء",
      "الخطوط الجوية اليمنية",
      "البنك المركزي اليمني",
      "شركة النفط اليمنية",
      "المؤسسة العامة للمياه",
      "شركة يمن موبايل",
      "شركة السعيدة للطيران",
      "شركة الغاز اليمنية",
      "الشركة اليمنية لصناعة الأدوية",
      "المؤسسة اليمنية العامة للتأمين",
      "الشركة اليمنية للسكر",
      "المؤسسة العامة للطرق والجسور",
      "شركة النقل البري اليمنية",
      "دار الحكمة للنشر",
      "مؤسسة السعيد الثقافية",
      "شركة السفير للطباعة",
      "مجموعة هائل سعيد أنعم",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["شركة", "مجمع"],
      false => const ["شركة", "مجمع"],
    };
  }

  @override
  String get currencyCode => "YER";

  @override
  String get currencySymbol => 'YRl';
}

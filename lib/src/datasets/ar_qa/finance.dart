import 'package:imitatio/src/datasets/models/finance.dart';

class ArQaFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "البنك التجاري القطري",
      "بنك قطر الوطني",
      "البنك الأهلي القطري",
      "بنك الدوحة",
      "بنك الخليج",
      "البنك العربي",
      "بنك قطر الإسلامي",
      "البنك الدولي الإسلامي",
      "بنك قطر الدولي",
      "بنك التنمية القطري",
      "بنك القرض العقاري",
      "بنك الريان",
      "بنك قطر الإسلامي الدولي",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "شركة Ooredoo",
      "شركة أرامكو قطر",
      "شركة أوراكل",
      "شركة إس تي سي قطر",
      "شركة الأصيل للمواد الاستهلاكية",
      "شركة الأمانة للتجارة",
      "شركة الباطنة",
      "شركة البرج",
      "شركة البنوك الوطنية",
      "شركة التوزيع الوطنية",
      "شركة الجبر",
      "شركة الجسور",
      "شركة الخليج الدولية للخدمات",
      "شركة الخليج للأدوية",
      "شركة الخليج للأنظمة",
      "شركة الخليج للتأمين",
      "شركة الخليجية للتجارة",
      "شركة الدوحة للتجارة",
      "شركة الدوحة للرعاية الصحية",
      "شركة الدوحة للزراعة",
      "شركة الدوحة للسياحة",
      "شركة الدوحة للمواد الغذائية",
      "شركة الريان",
      "شركة السراج",
      "شركة الشرقية للتجارة",
      "شركة العالمية للتجارة",
      "شركة الغرير",
      "شركة المتحدة للخدمات",
      "شركة المشرق",
      "شركة المقاولات العربية",
      "شركة الميرة للمواد الاستهلاكية",
      "شركة النجم الساطع",
      "شركة النخيل",
      "شركة النسر للتجارة",
      "شركة الوسائل الحديثة",
      "شركة الوكرة للتجارة",
      "شركة دانة غاز",
      "شركة دبي للتطوير",
      "شركة رنا للتجارة",
      "شركة زيورخ",
      "شركة شل قطر",
      "شركة صناعات قطر",
      "شركة فودافون قطر",
      "شركة قطر للأنظمة",
      "شركة قطر للإلكترونيات",
      "شركة قطر للاتصالات",
      "شركة قطر للبترول",
      "شركة قطر للبترول للكيماويات",
      "شركة قطر للبناء",
      "شركة قطر للتطوير العقاري",
      "شركة قطر للسيارات",
      "شركة قطر للطاقة",
      "شركة قطر للغاز",
      "شركة قطر للنقل البحري",
      "شركة قنوات",
      "شركة كاتربيلر قطر",
      "شركة مينا للصناعة",
      "شركة ناصر بن خالد",
      "شركة نجم للغاز",
      "شركة نوفارتيس",
      "مجموعة البنك التجاري",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "شركة ذات مسؤولية محدودة",
          "شركة مساهمة عامة",
          "شركة مساهمة مقفلة",
          "شركة تضامنية",
          "شركة توصية بسيطة",
          "شركة فردية",
          "شركة أجنبية",
          "شركة مختلطة",
          "شركة قابضة",
          "شركة محاصة",
        ],
      false => const [
          "شركة ذات مسؤولية محدودة",
          "شركة مساهمة عامة",
          "شركة مساهمة مقفلة",
          "شركة تضامنية",
          "شركة توصية بسيطة",
          "شركة فردية",
          "شركة أجنبية",
          "شركة مختلطة",
          "شركة قابضة",
          "شركة محاصة",
        ],
    };
  }

  @override
  String get currencyCode => "QAR";

  @override
  String get currencySymbol => 'QR';
}
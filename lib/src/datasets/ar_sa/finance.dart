import 'package:imitatio/src/datasets/models/finance.dart';

class ArSaFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "البنك الأهلي السعودي",
      "مصرف الراجحي",
      "بنك الرياض",
      "البنك السعودي الفرنسي",
      "البنك العربي الوطني",
      "البنك السعودي البريطاني (ساب)",
      "البنك السعودي للاستثمار",
      "بنك الجزيرة",
      "بنك البلاد",
      "بنك الإنماء",
      "بنك التنمية الاجتماعية",
      "البنك المركزي السعودي (ساما)",
      "بنك الخليج الدولي",
      "بنك الإمارات دبي الوطني",
      "بنك الكويت الوطني",
      "بنك قطر الوطني (QNB)",
      "البنك البحريني السعودي",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "أرامكو السعودية",
      "سابك",
      "الاتصالات السعودية (STC)",
      "مجموعة صافولا",
      "مجموعة بن لادن السعودية",
      "شركة المراعي",
      "شركة زين السعودية",
      "شركة موبايلي",
      "مجموعة سامبا المالية",
      "البنك الأهلي السعودي",
      "مصرف الراجحي",
      "شركة بترورابغ",
      "شركة معادن",
      "شركة السعودية للكهرباء",
      "شركة جرير للتسويق",
      "شركة الدريس للخدمات البترولية",
      "مجموعة عبد اللطيف جميل",
      "شركة البحري",
      "مجموعة الطيار للسفر",
      "شركة التصنيع الوطنية",
      "شركة أسمنت السعودية",
      "شركة أسمنت ينبع",
      "شركة كيان السعودية",
      "شركة سبكيم",
      "شركة أسواق العثيم",
      "شركة حلواني إخوان",
      "شركة ينبع الوطنية للبتروكيماويات (ينساب)",
      "شركة التصنيع وخدمات الطاقة (طاقة)",
      "شركة الغاز والتصنيع الأهلية (غازكو)",
      "شركة تموين الخطوط الجوية السعودية",
      "شركة العوجان كوكاكولا للمرطبات",
      "شركة الحفر العربية",
      "شركة جازان للطاقة والتنمية",
      "مجموعة فتيحي القابضة",
      "شركة دار الأركان",
      "شركة جبل عمر للتطوير",
      "شركة البحر الأحمر العالمية",
      "شركة طيبة للاستثمار",
      "شركة زجاج",
      "شركة ريدان الغذائية",
      "شركة اتحاد عذيب للاتصالات (GO)",
      "شركة المراعي للألبان",
      "شركة العليان المالية",
      "شركة صافولا",
      "شركة الجفالي",
      "شركة باعظيم التجارية",
      "شركة المتحدة الدولية للمواصلات (بدجت السعودية)",
      "شركة الغاز والتصنيع الأهلية",
      "شركة الصحراء العالمية للبتروكيماويات",
      "شركة أسمنت القصيم",
      "شركة أسمنت المنطقة الجنوبية",
      "شركة مكة للإنشاء والتعمير",
      "شركة أسمنت اليمامة",
      "شركة الشرق الأوسط للكابلات المتخصصة (مسك)",
      "شركة المصافي العربية السعودية",
      "شركة إتحاد مصانع الأسلاك",
      "شركة تهامة للإعلان والعلاقات العامة",
      "شركة الوطنية السعودية للنقل البحري",
      "شركة الخليج للتدريب والتعليم",
      "شركة فواز عبد العزيز الحكير",
      "شركة الأندلس العقارية",
      "شركة البابطين للطاقة والاتصالات",
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
  String get currencyCode => "SAR";

  @override
  String get currencySymbol => 'SAR';
}
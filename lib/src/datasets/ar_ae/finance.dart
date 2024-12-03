import 'package:imitatio/src/datasets/models/finance.dart';

class ArAeFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "أبو ظبي الاول للتمويل الاسلامي",
      "البنك الاهلي الكويتي",
      "البنك العربى الافريقى الدولى",
      "البنك العربى المتحد",
      "البنك العربى",
      "البنك الوطنى العمانى",
      "الخليجي ـ فرنسا ـ اس ايه",
      "المصرف العربى للاستثمار والتجارة الخارجية",
      "باركليز بنك",
      "بنك أبو ظبي الإسلامي",
      "بنك ابوظبى التجارى",
      "بنك اتش اس بي سي الشرق الاوسط",
      "بنك الاتحاد الوطنى",
      "بنك البحرين الوطنى",
      "بنك الخرطوم ليمتد",
      "بنك الخليج الدولى",
      "بنك الصين المحدود",
      "بنك الكويت الوطني",
      "بنك النيلين",
      "بنك برودا",
      "بنك دبي الاسلامى",
      "بنك راس الخيمه الوطني",
      "بنك صادرات ايران",
      "بنك مصر",
      "بنك ملى ايران",
      "بى. ان. بى. باريبا",
      "جناتا بنك ليمتد",
      "حبيب بنك المحدود",
      "حبيب بنك ايه.جى زيوريخ",
      "دنيا للتمويل",
      "ستاندرد تشارترد بنك",
      "شركة الوفاق للتمويل",
      "شركة انتيسا سان باولو",
      "كريدي اجريكول بنك التمويل والاستثمار",
      "كي ئي بي هانا بنك",
      "مصرف الرافدين",
      "مصرف الهلال",
      "ميغا انترناشيونال كوميرشل بنك",
      "يونايتد بنك لميتد",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "شركة إعمار العقارية",
      "شركة دبي للاستثمار",
      "شركة أبوظبي الوطنية للطاقة (طاقة)",
      "شركة الإمارات للاتصالات (اتصالات)",
      "شركة دبي القابضة",
      "شركة المراعي",
      "شركة دو",
      "شركة أبوظبي للإنشاءات",
      "شركة الاتحاد للطيران",
      "شركة بترول أبوظبي الوطنية (أدنوك)",
      "شركة دبي العالمية",
      "شركة نخيل",
      "شركة الخليج للمال",
      "شركة الإمارات العالمية للألمنيوم",
      "شركة مجموعة الفيصلية",
      "شركة بترومين",
      "شركة سابك",
      "شركة الإمارات للمنتجات الغذائية",
      "شركة مجموعة الطاير",
      "شركة راشد الزياني وأولاده",
      "شركة الشارقة للأسمنت",
      "شركة مجموعة الجميرا",
      "شركة الغرير",
      "شركة أركاديا",
      "شركة المتحدة للطيران",
      "شركة بروج للبتروكيماويات",
      "شركة أوكسيدنتال بتروليوم",
      "شركة أملاك للتمويل",
      "شركة مجموعة المنصوري",
      "شركة البحر الأحمر للتطوير",
      "شركة الصناعات الوطنية",
      "شركة إينوك",
      "شركة بيئة",
      "شركة المركزية",
      "شركة أسواق",
      "شركة المراعي",
      "شركة زين الإمارات",
      "شركة رويال داتش شل",
      "شركة اتصالات متكاملة",
      "شركة الإمارات للألمنيوم",
      "شركة دبي للاستثمار العقاري",
      "شركة الخطوط الجوية العربية السعودية",
      "شركة تاتا",
      "شركة أبوظبي للإعلام",
      "شركة الإمارات للأمن",
      "شركة الجابر",
      "شركة تكنولوجيا المعلومات والاتصالات",
      "شركة أمانات القابضة",
      "شركة أبار",
      "شركة إليسار",
      "شركة بترول الإمارات الوطنية",
      "شركة ستيلك",
      "شركة الوطنية للتقنية",
      "شركة المواصلات العامة",
      "شركة إتصالات ذكية",
      "شركة الشرق الأوسط للطاقة",
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
  String get currencyCode => "AED";

  @override
  String get currencySymbol => "د.إ";
}
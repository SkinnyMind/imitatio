import 'package:imitatio/src/datasets/models/person.dart';
import 'package:imitatio/src/enums.dart';

class ArAePersonData extends PersonDataset {
  @override
  List<String> get academicDegrees {
    return const [
      "ليسانس",
      "ماستر",
      "دكتوراه",
    ];
  }

  @override
  List<String> get genders => const ["ذكر", "أنثى"];

  @override
  List<String> get languages {
    return const [
      "الصينية الماندرين",
      "الإسبانية",
      "الإنجليزية",
      "البنغالية",
      "الهندية",
      "البرتغالية",
      "الروسية",
      "اليابانية",
      "الألمانية",
      "الصينية الوو",
      "الجاوية",
      "الكورية",
      "الفرنسية",
      "الفيتنامية",
      "التيلجو",
      "الصينية الكانتونية",
      "الماراثية",
      "التاميلية",
      "التركية",
      "الأردية",
      "الصينية المين",
      "الصينية الجينيو",
      "الغوجاراتية",
      "البولندية",
      "العربية المصرية",
      "الأوكرانية",
      "الإيطالية",
      "الصينية الشيانغ",
      "المالايالامية",
      "الصينية الهكا",
      "الكانادا",
      "الأوريا",
      "البنجابية الغربية",
      "السوندية",
      "البنجابية الشرقية",
      "الرومانية",
      "البوجبورية",
      "الأذربيجانية",
      "الفارسية",
      "الميثيلية",
      "الهوسا",
      "العربية الجزائرية",
      "البورمية",
      "الصربية",
      "الصينية الجان",
      "الأوادية",
      "التايلاندية",
      "الهولندية",
      "اليوروبية",
      "السندية",
      "العربية المغربية",
      "العربية الصعيدية",
      "الأوزبكية",
      "الماليزية",
      "الأمهرية",
      "الإندونيسية",
      "الإيغبو",
      "الفلبينية",
      "النيبالية",
      "العربية السودانية",
      "السرايكية",
      "الفيزايانية",
      "العربية البدوية",
      "التايلاندية الشمالية الشرقية",
      "الآسامية",
      "الهنغارية",
      "الشيتاغونية",
      "العربية العراقية (الميزوبوتامية)",
      "المدورية",
      "السنهالية",
      "الهاريانفية",
      "الماروارية",
      "التشيكية",
      "اليونانية",
      "الماجاهي",
      "الشاتيسجارية",
      "الدكنية",
      "الصينية المين باي",
      "البيلاروسية",
      "الزوانغ",
    ];
  }

  @override
  List<String> names(Gender gender) {
    return switch (gender) {
      Gender.female => const [
          "فاطمة",
          "زينب",
          "صباح",
          "نادية",
          "سهى",
          "أمينة",
          "سمية",
          "سارة",
          "سلمى",
          "مريم",
          "حنان",
          "ملاك",
          "اكرام",
          "وفاء",
          "رشا",
          "غادة",
          "هند",
          "ليلى",
          "ريم",
          "هدى",
          "صفاء",
          "رحمة",
          "اسراء",
          "ريهام",
          "ابتسام",
          "آية",
          "نور",
          "جنى",
          "سهام",
          "فريدة",
          "إيمان",
          "نسرين",
          "ياسمين",
          "فريال",
          "أسماء",
          "خديجة",
          "نجوى",
          "بشرى",
          "فرح",
          "زهراء",
          "هالة",
          "يسرى",
          "نادين",
          "أسيل",
          "نورهان",
          "ميساء",
          "شيماء",
          "سيرين",
          "عبير",
          "لمياء",
          "رندة",
          "آلاء",
          "هاجر",
          "أميرة",
          "نوال",
          "دنيا",
          "مرام",
          "إسراء",
          "رميساء",
          "هديل",
          "أمال",
          "وصال",
          "رحاب",
          "هبة",
          "رفيدة",
          "دعاء",
          "كوثر",
          "مايا",
          "الين",
          "نور الهدى",
          "نور الايمان",
        ],
      Gender.male => const [
          "آدم",
          "أنيس",
          "أكرم",
          "أيمن",
          "إياد",
          "باسم",
          "ريان",
          "سفيان",
          "مروان",
          "نوح",
          "مالك",
          "جواد",
          "ليث",
          "يوسف",
          "كريم",
          "عماد",
          "زيد",
          "هشام",
          "رامي",
          "حسان",
          "أسامة",
          "أنس",
          "عادل",
          "فهد",
          "سيف",
          "محمود",
          "فارس",
          "خليل",
          "عمر",
          "عبد الله",
          "عبد القادر",
          "عبد الكريم",
          "عزيز",
          "عبد الرحيم",
          "عبد الفتاح",
          "عبد المجيد",
          "عبد الرحمن",
          "يزيد",
          "السعيد",
          "موسى",
          "إبراهيم",
          "سامر",
          "جلال",
          "جواد",
          "خالد",
          "وليد",
          "حمزة",
          "نورالدين",
          "توفيق",
          "سليم",
          "فيصل",
          "سامي",
          "رياض",
          "نادر",
          "طارق",
          "جمال",
          "صهيب",
          "شريف",
          "حليم",
          "بلال",
          "زكريا",
          "منجد",
          "علاء",
          "وسيم",
          "وائل",
          "يعقوب",
          "يحي",
        ],
    };
  }

  @override
  List<String> nationalities(Gender gender) {
    return switch (gender) {
      _ => const [
          "أفغاني",
          "ألباني",
          "جزائري",
          "أمريكي",
          "أندوري",
          "أنغولي",
          "أنتيغوي",
          "أرجنتيني",
          "أرميني",
          "أسترالي",
          "نمساوي",
          "أذربيجاني",
          "باهامي",
          "بحريني",
          "بنغلاديشي",
          "بربادوسي",
          "بيلاروسي",
          "بلجيكي",
          "بليزي",
          "بنيني",
          "بوتاني",
          "بوليفي",
          "بوسني",
          "بوتسواني",
          "برازيلي",
          "بريطاني",
          "بروناي",
          "بلغاري",
          "بوركيني",
          "بورمي",
          "بوروندي",
          "كامبودي",
          "كاميروني",
          "كندي",
          "كيب فيردي",
          "تشادي",
          "تشيلي",
          "صيني",
          "كولومبي",
          "كوموري",
          "كونغولي",
          "كوستاريكي",
          "كرواتي",
          "كوبي",
          "قبرصي",
          "تشيكي",
          "دنماركي",
          "جيبوتي",
          "دومينيكاني",
          "إكوادوري",
          "مصري",
          "سلفادوري",
          "غيني استوائي",
          "إريتري",
          "إستوني",
          "إسواتيني",
          "إثيوبي",
          "فيجي",
          "فنلندي",
          "فرنسي",
          "غابوني",
          "غامبي",
          "جورجي",
          "ألماني",
          "غاناوي",
          "يوناني",
          "غرينادي",
          "غواتيمالي",
          "غيني",
          "غيني بيساوي",
          "غوياني",
          "هايتي",
          "هندوراسي",
          "هنغاري",
          "آيسلندي",
          "هندي",
          "إندونيسي",
          "إيراني",
          "عراقي",
          "إيرلندي",
          "إيطالي",
          "إيفواري",
          "جامايكي",
          "ياباني",
          "أردني",
          "كازاخستاني",
          "كيني",
          "كيريباتي",
          "كوري شمالي",
          "كوري جنوبي",
          "كويتي",
          "قيرغيزستاني",
          "لاوسي",
          "لاتفي",
          "لبناني",
          "ليسوتي",
          "ليبيري",
          "ليبي",
        ],
    };
  }

  @override
  List<String> get occupations {
    return const [
      "مدير",
      "مساعد إداري",
      "محاسب",
      "مدير مشاريع",
      "موظف استقبال",
      "مدير تسويق",
      "موظف موارد بشرية",
      "مهندس حاسوب",
      "طبيب",
      "ممرض",
      "صيدلي",
      "أخصائي تخدير",
      "طبيب أسنان",
      "معالج طبيعي",
      "أخصائي نفسي",
      "تقني مختبر",
      "أستاذ جامعي",
      "مشرف تربوي",
      "معلم",
      "مهندس مدني",
      "مهندس كهرباء",
      "مهندس ميكانيكا",
      "مهندس برمجيات",
      "تقني صيانة",
      "تقني إلكترونيات",
      "مصمم جرافيك",
      "مصور",
      "كاتب",
      "مغني",
      "مخرج سينمائي",
      "نجار",
      "سباك",
      "كهربائي",
      "حداد",
      "مبلط",
      "حرفي جلد",
      "صباغ",
      "ميكانيكي سيارات",
      "بناء",
      "بائع",
      "صاحب متجر",
      "كاشير",
      "نادِل",
      "طباخ",
      "حارس أمن",
      "سائق تاكسي",
      "موظف خدمة العملاء",
      "مزارع",
      "مهندس",
      "بيطري",
      "أخصائي بيئة",
      "مدير مزرعة",
      "بستاني",
      "مهندس تنظيف",
      "باحث علمي",
      "كيميائي",
      "عالم آثار",
      "محامي",
      "قاضي",
      "كاتب عدل",
      "مستشار قانوني",
      "محقق",
      "بقال",
      "قاضي التحقيق",
      "مدقق حسابات",
      "صحفي",
      "مذيع",
      "معد برامج",
      "محرر",
      "مراسل",
      "متخصص في التسويق",
      "مختص في الأمن السيبراني",
      "مدرب رياضي",
      "مهندس اعلام الي",
      "مهندس زلازل",
      "تقني أجهزة طبية",
      "شرطي",
      "جمركي",
      "دركي",
      "عسكري",
      "اسكافي",
      "خياط",
      "عامل تنظيف",
      "مصور فوتوغرافي",
      "مراقب جودة",
      "مدير موارد بشرية",
      "تقني تدفئة وتكييف",
      "طبيب بيطري",
      "تقني صيانة الالات صناعية",
      "منسق مشاريع",
      "مستشار مالي",
      "مهندس معماري",
      "مستشار تربوي",
      "تقني كهرباء صناعية",
      "تقني كهرباء",
    ];
  }

  @override
  List<String> get politicalViews {
    return const [
      "رأسمالي",
      "شيوعي",
      "ليبرالي",
    ];
  }

  @override
  List<String> surnames(Gender gender) {
    return switch (gender) {
      _ => const [
          "ال الباشا",
          "ال البدواوي",
          "ال البستكي",
          "ال البلوشي",
          "ال البلوي",
          "ال الجابر",
          "ال الجابري",
          "ال الجفالي",
          "ال الجندي",
          "ال الجنيبي",
          "ال الجيب",
          "ال الحمادي",
          "ال الحوسني",
          "ال الحوسني",
          "ال الخاطري",
          "ال الخالدي",
          "ال الدرمكي",
          "ال الرحومي",
          "ال الرشيدي",
          "ال الرفاعي",
          "ال الرميثي",
          "ال الزرعوني",
          "ال الزعابي",
          "ال الزيودي",
          "ال السعدي",
          "ال السويدي",
          "ال الشامسي",
          "ال الشامسي",
          "ال الشامسي",
          "ال الشحي",
          "ال الشرقي",
          "ال الشرقي",
          "ال الشيبة",
          "ال الصالح",
          "ال الصباغ",
          "ال الصريدي",
          "ال الطارق",
          "ال الطاهر",
          "ال الطنيجي",
          "ال الظاهري",
          "ال العبدولي",
          "ال العوضي",
          "ال العيسائي",
          "ال الغانم",
          "ال الغرير",
          "ال الفارسي",
          "ال الفلاسي",
          "ال القاسمي",
          "ال القاسمي",
          "ال القاضي",
          "ال القبيسي",
          "ال القحطاني",
          "ال القطان",
          "ال القطراني",
          "ال القويد",
          "ال الكعبي",
          "ال الكواري",
          "ال الكواري",
          "ال المبارك",
          "ال المحمود",
          "ال المحيربي",
          "ال المري",
          "ال المزروعي",
          "ال المزيني",
          "ال المعلا",
          "ال المنصوري",
          "ال المنصوري",
          "ال المنصوري",
          "ال المهيري",
          "ال النابودة",
          "ال الناصري",
          "ال النعيمي",
          "ال النعيمي",
          "ال الهاجري",
          "ال الهاشمي",
          "ال الهاشمي",
          "ال الهاملي",
          "ال اليافعي",
          "ال بطي",
          "ال بن عيسى",
          "ال جاسم",
          "ال سعيد",
          "ال عتيبة",
          "ال علي",
          "ال مكتوم",
          "ال ناصر",
          "ال نهيان",
        ],
    };
  }

  @override
  List<String> get telephoneFormats {
    return const [
      "(+971) 5#########",
      "(+971) #########",
    ];
  }

  @override
  List<String> titles({required Gender gender, required TitleType titleType}) {
    return switch (gender) {
      Gender.female => titleType == TitleType.typical
          ? const ["السيدة"]
          : const ["الدكتورة", "الاستاذة"],
      Gender.male => titleType == TitleType.typical
          ? const ["السيد"]
          : const ["الدكتور", "الاستاذ"],
    };
  }

  @override
  List<String> get universities {
    return const [
      "جامعة الإمارات العربية المتحدة",
      "جامعة أبوظبي",
      "جامعة الشارقة",
      "جامعة دبي",
      "جامعة العين",
      "جامعة زايد",
      "جامعة خليفة",
      "جامعة البوليتكنك",
      "جامعة رأس الخيمة للعلوم والتكنولوجيا",
      "جامعة الإمارات الدولية",
      "جامعة أبوظبي للعلوم والتكنولوجيا",
      "جامعة الفجيرة",
      "جامعة التقنية العليا",
      "جامعة العلوم والتكنولوجيا",
      "جامعة محمد بن راشد للطب والعلوم الصحية",
      "جامعة العلوم الإسلامية",
      "جامعة كليات التقنية العليا",
      "جامعة الإمارات للعلوم والتكنولوجيا",
      "جامعة البترول والغاز الطبيعي",
      "جامعة دبي للعلوم",
    ];
  }

  @override
  List<String> get viewsOn {
    return const [
      "سلبي",
      "ايجابي",
      "حيادي",
    ];
  }

  @override
  List<String> get worldviews {
    return const [
      "مسلم",
      "مسيحي",
      "لا ديني",
      "يهودي",
      "إخواني",
      "سلفي",
      "صوفي",
      "غير محدد",
    ];
  }
}
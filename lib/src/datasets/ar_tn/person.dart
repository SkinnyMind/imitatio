import 'package:imitatio/src/datasets/models/person.dart';
import 'package:imitatio/src/enums.dart';

class ArTnPersonData extends PersonDataset {
  @override
  List<String> get academicDegrees {
    return const ["ليسانس", "ماستر", "دكتوراه"];
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
          "زيرة",
          "رشا",
          "فلة",
          "مسيكة",
          "عودة",
          "كلتوم",
          "سهى",
          "العكري",
          "عدادة",
          "لويزة",
          "منال",
          "حورية",
          "أسمه",
          "لونجة",
          "مريامة",
          "ميساء",
          "زكية",
          "فظمة",
          "فاتن",
          "مماس",
          "هدى",
          "صباح",
          "عقيلة",
          "كوثر",
          "غادة",
          "خوخة",
          "كميليا",
          "الزهراء",
          "روزة",
          "أميرة",
          "شريفة",
          "أمينة",
          "جنى",
          "رانيا",
          "كميلة",
          "مباركة",
          "نجاة",
          "نسرين",
          "يسمينة",
          "فتنة",
          "فريال",
          "لمياء",
          "ويزة",
          "ياسمين",
          "بختة",
          "ربيعة",
          "غالية",
          "اشراق",
          "ثيزيري",
          "فتيحة",
          "دينة",
          "عيشة",
          "نعيمة",
          "منى",
          "ججيقة",
          "وسيلة",
          "جميلة",
          "حميلة",
          "سامية",
          "خيرة",
          "حنيفة",
          "عوبة",
          "وفية",
          "فازية",
          "بلقيس",
          "زبيدة",
          "عزيزة",
          "ابتسام",
          "العاج",
          "ماية",
          "نورية",
          "فاطنة",
          "مقنين",
          "شهيناز",
          "رزيقة",
          "أسماء",
          "فيروز",
          "العيفة",
          "اسمهان",
          "حكيمة",
          "زوهرة",
          "زاكية",
          "وهيبة",
          "لارة",
          "صاره",
          "سمينة",
          "رقية",
          "الضاوية",
          "فوزية",
          "رحمة",
          "سمر",
          "سناء",
          "فطيمة",
          "صبرينة",
          "دهبية",
          "فاطمة الزهرة",
          "آلاء",
          "فظيلة",
          "زهية",
          "شهرزاد",
          "خدوجة",
          "صبيحة",
          "نفيسة",
          "سيليا",
          "صورية",
          "خديجة",
          "إبتسام",
          "فريدة",
          "منيرة",
          "زاهية",
          "سكينه",
          "عيدة",
          "ثورية",
          "هند",
          "لتيسيا",
          "عبلة",
          "حمامة",
          "فروجة",
          "نورة",
          "رحاب",
          "سلينا",
          "أم الخير",
          "شهيرة",
          "حياة",
          "نصيرة",
          "هندة",
          "ظريفة",
          "فريزة",
          "فاطمة",
          "أم السعد",
          "هديل",
          "نهاد",
          "كايمة",
          "امينة",
          "سمية",
          "حسينة",
          "عائشة",
          "شمس",
          "ياسمينة",
          "كنزة",
          "ذهبية",
          "سكورة",
          "سخرية",
          "منية",
          "تاسعديت",
          "وردية",
          "يمينة",
          "لالهم",
          "مريم عفاف",
          "تيماء",
          "اكرام",
          "بهجة",
          "اوردية",
          "لينة",
          "ريمة",
          "لالة",
          "غنية",
          "العلجة",
          "سهيلة",
          "فرح",
          "الين",
          "نجوى",
          "فاطمة الزهراء",
          "كركود",
          "ام الخير",
          "ربيحة",
          "فايزة",
          "وردة",
          "سعدة",
          "عويشة",
          "رميساء",
          "سلمى",
          "مدينة شيراز",
          "ريهام",
          "حفصة",
          "دعاء",
          "هبة",
          "سليمة",
          "سماح",
          "رفيقة",
          "بشرى",
          "لامية",
          "سعاد",
          "تينهينان",
          "اوريدة",
          "أمال",
          "ليلى",
          "وفاء",
          "رشيدة",
          "سعدية",
          "نور",
          "مسيسيليا",
          "كرمية",
          "رندة",
          "ملاك",
          "سعيدة",
          "ملينة",
          "غانية",
          "صونيا",
          "مايا",
          "نوميديا",
          "اميرة",
          "صليحة",
          "حسناء",
          "حميدة",
          "ليلة",
          "نبيلة",
          "ثين هنان",
          "فاطيمة",
          "انيسة",
          "اسمة",
          "مريم",
          "سيرين",
          "إيمان",
          "دليلة",
          "يسرى",
          "أماني",
          "بركاهم",
          "نسيبة",
          "أنفال",
          "وزنة",
          "صوفية",
          "نور الهدى",
          "زهيرة",
          "فضيلة",
          "نجية",
          "مليسة",
          "نورهان",
          "وئام",
          "كايسة",
          "نماء",
          "كريمة",
          "ندى",
          "شيماء",
          "جميعة",
          "أنيسة",
          "كاتيا",
          "نوال",
          "كهينة",
          "منتهى",
          "كاميلة",
          "نادين",
          "ميليسة",
          "هنادي",
          "اسماء",
          "اسراء",
          "الياقوت",
          "رانية",
          "سهام",
          "هانية",
          "أسيا",
          "حنان",
          "ليديا",
          "ثيللي",
          "أنايس",
          "حدة",
          "باية",
          "صارة",
          "الورد",
          "وصال",
          "نور الايمان",
          "سيليليا",
          "حفيظة",
          "بهية",
          "زوليخة",
          "هيبة",
          "مسعودة",
          "أسيل",
          "الطاوس",
          "سارة",
          "خلود",
          "سومية",
          "فطومة",
          "قمير",
          "عبير",
          "حليمة",
          "مليكة",
          "فطمة",
          "إكرام",
          "سميرة",
          "زوينة",
          "كاهنة",
          "زهوة",
          "هناء",
          "فايرة",
          "نصيـــرة",
          "ملعيد",
          "ديهيا",
          "صافية",
          "إنصاف",
          "ليندة",
          "نوارة",
          "صوفيا",
          "ايرانيا",
          "رفيدة",
          "بثينة",
          "زينب",
          "دانيا",
          "ليدية",
          "زهرة",
          "تكليت",
          "حبيبة",
          "ليليا",
          "وسام",
          "رتيبة",
          "مرام",
          "شيراز",
          "الربح",
          "مياسة",
          "صفاء",
          "حسيبة",
          "هاجر",
          "إسراء",
          "زهراء",
          "نسيمة",
          "فطوم",
          "هالة",
          "تسعديت",
          "الويزة",
          "الياسمين",
          "خلفية",
          "راضية",
          "ليزا",
          "شهرة",
          "كاهينة",
          "ريم",
          "خليدة",
          "جقجيقة",
          "خولة",
          "مروى",
          "دنيا",
          "عديدي",
          "وريدة",
          "الزهرة",
          "روان",
          "آية",
          "نادية",
          "جوهر",
          "ضاوية",
        ],
      Gender.male => const [
          "أنس",
          "صادق",
          "بوسعد",
          "منور",
          "ليث",
          "شعبان",
          "رامي",
          "الحاج",
          "محمد الصديق",
          "خلادي",
          "طارق",
          "أمير",
          "إسحاق",
          "حسان",
          "جمال",
          "ريان",
          "آدم",
          "محمد وسيم",
          "سالم",
          "بوزيد",
          "قاسم",
          "مصطفى",
          "سماعيل",
          "سامر",
          "عبد الباسط",
          "رضا",
          "حاج",
          "لعموري",
          "عبد المالك",
          "سيف",
          "عصام",
          "فيصل",
          "زيد",
          "اسامة",
          "محمد حسين",
          "صابر",
          "بوجمعة",
          "ندير",
          "عبد الحق",
          "سيفاكس",
          "سمير",
          "أيمن عيسى",
          "عبد الكريم",
          "زرين",
          "عبد الرشيد",
          "خليف",
          "عزيز",
          "محمد أمين",
          "بويكر",
          "رضوان",
          "منصور",
          "زهير",
          "عبد المحسن",
          "اسعيد",
          "عبد السلام",
          "أكرم",
          "بودبزة",
          "عبادة",
          "ساعد",
          "عبد الرزاق",
          "حسام الدين",
          "سفيان",
          "عمر",
          "فوضيل",
          "بن علية",
          "غيلاس",
          "اسلام",
          "بلعيد",
          "سيد أحمد",
          "زين الدين",
          "ركان كريم",
          "نور الدين",
          "يحي",
          "محمد نجيب",
          "كريم",
          "احمد",
          "عماد",
          "محمد الامين",
          "تقي الدين",
          "جلول",
          "مروان",
          "ارزقي",
          "محمد نسيم",
          "حسين",
          "عاشور",
          "مجيد",
          "عباس",
          "عبد الوهاب",
          "خالد",
          "بلقاسم",
          "أنور",
          "ميلود",
          "عامر",
          "هاشمي",
          "صالح",
          "لياس",
          "يزيد",
          "طوطاح",
          "مسينيسا",
          "سيدعلي",
          "خميسي",
          "عبد الحميد",
          "محمد إسلام",
          "محمد عادل",
          "محمود",
          "زكريا",
          "فاتح",
          "مفدي",
          "مسعود",
          "عبد الرحيم",
          "كمال",
          "مالك",
          "الوناس",
          "سعد الدين",
          "سعد",
          "محمد ايمن",
          "اذلس",
          "مولود",
          "شريف",
          "عمار",
          "موراد",
          "امحمد",
          "زكرياء",
          "عيسى",
          "داود",
          "سليمان",
          "يوسف",
          "حمة",
          "علال",
          "فضلول",
          "عبد المجيد",
          "يعقوب",
          "يانيس",
          "أعمروش",
          "اكلي",
          "محند ارزقي",
          "نورالدين",
          "فارس",
          "خليل",
          "شمس الدين",
          "العيد",
          "لونيس",
          "أبوبكر",
          "تاشفين",
          "حسام",
          "محند امقران",
          "برهيم",
          "رابح",
          "علي",
          "فوزي",
          "ناصر",
          "أمياس",
          "أكلي",
          "عماد زين الدين",
          "علاء الدين",
          "حمزة",
          "نادر",
          "كسيلة",
          "السعيد",
          "لوناس",
          "فريد",
          "وليد",
          "محمد ياسين",
          "محمد",
          "سامي",
          "رياض",
          "رشيدة",
          "بؤخلفة",
          "زين العابدين",
          "ادير",
          "إياد",
          "اجمد",
          "هشام",
          "عبد الله",
          "محمد أيمن",
          "عبد العزيز",
          "عبد الفتاح",
          "مكي",
          "اعمر",
          "امزيان",
          "فرحات",
          "سيف الدين",
          "ابراهيم",
          "مأمون",
          "نوار",
          "مازيغ",
          "الياس",
          "بلال",
          "محمد طارق",
          "الأخضر",
          "مراد",
          "العربي",
          "دحمان",
          "محند امزيان",
          "لخظر",
          "نصر الدين",
          "احميدة",
          "العزازي",
          "لكحل",
          "سعيد",
          "أحمد نذير",
          "قويدر",
          "إلياس",
          "نسيم",
          "صفيان",
          "وائل",
          "ياسين",
          "محمد واعمر",
          "أحمد",
          "إيلاس",
          "شكري",
          "لقمان",
          "عبد النور",
          "بوعلم",
          "الخير",
          "حكيم",
          "محمد أمزيان",
          "محمد أكرم",
          "حليم",
          "إيهاب",
          "رفيق",
          "يوبا",
          "توهامي",
          "سيلاس",
          "العيساوي",
          "محمد الخليل",
          "ولعيد",
          "عميروش",
          "عبد الحمبد",
          "جواد",
          "ضياء الدين",
          "عمارة",
          "أمين",
          "فهد",
          "فؤاد",
          "باسم",
          "امير",
          "بلفاسم",
          "ربح",
          "محمد شمس الدين",
          "يحيا",
          "عبد الرحمان",
          "زياد",
          "أرزقي",
          "خالدي",
          "عماد الدين",
          "محمد أشرف",
          "محمد زهير",
          "فاروق",
          "ايدير",
          "بدرالدين",
          "مدني",
          "حميد",
          "ماسينيسا",
          "عبد الرحمن",
          "بوعلام",
          "احسن",
          "خلاف",
          "موسى",
          "خير الدين",
          "منجد",
          "محمد رضا",
          "ايمن",
          "وسيم",
          "بشير",
          "صهيب",
          "مرزاق",
          "قاسي",
          "عبد المؤمن",
          "يونس",
          "توفيق",
          "نوح",
          "بولعراس",
          "الصالح",
          "علاء",
          "عبد الغاني",
          "خليفة",
          "رمضان",
          "بوخالفة",
          "عمران",
          "عمرو",
          "قانه",
          "علاوة",
          "معيوف",
          "نبيل",
          "عبد الرؤوف",
          "طاهر",
          "إسماعيل",
          "حمو",
          "مقران",
          "محفوظ",
          "قدير",
          "محمد اكلي",
          "محمد إلياس",
          "عبد الحكيم",
          "أيوب",
          "عادل",
          "سليم",
          "عبد الحفيظ",
          "مخلوف",
          "محمد لمين",
          "محند السعيد",
          "بن عليا",
          "أنيس",
          "براهيم",
          "إسلام",
          "مسيل",
          "أسامة",
          "أيمن",
          "جلال",
          "عياش",
          "أحسن",
          "جيلالي",
          "نذير",
          "رشيد",
          "لجاج",
          "ماليك",
          "العزيز",
          "تودرت",
          "انور",
          "مزيان",
          "جاب الدين",
          "عبد القادر",
          "صلاح الدين",
          "طيب",
          "مرزوق",
          "عز الدين",
          "أعمر",
          "مناد",
          "أنيس ريان",
          "إبراهيم",
          "أدم",
          "محمد المهدي",
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
    return const ["رأسمالي", "شيوعي", "ليبرالي"];
  }

  @override
  List<String> surnames(Gender gender) {
    return switch (gender) {
      _ => const [
          "الآمر",
          "الأسمر",
          "الباجي",
          "البدوي",
          "البرادي",
          "البرجاني",
          "البرجوي",
          "البرجيس",
          "البرجيني",
          "البرعيسي",
          "البرغوثي",
          "البرهومي",
          "البريني",
          "البسيسي",
          "البلومي",
          "البناني",
          "البوعزيزي",
          "الجرندي",
          "الجماري",
          "الجملي",
          "الجنيدي",
          "الجودي",
          "الحاج",
          "الحبيب",
          "الحلو",
          "الحمامي",
          "الحمراوي",
          "الحمروني",
          "الحناشي",
          "الحوتي",
          "الدرسي",
          "الراشدي",
          "الرملي",
          "الزراري",
          "الزريبي",
          "الزعبي",
          "الزغبي",
          "الزغدود",
          "الزكراوي",
          "الزهار",
          "الزهروني",
          "الزواري",
          "الزوالي",
          "الزواوي",
          "الزوبيدي",
          "الزيات",
          "السليني",
          "السميري",
          "الشافعي",
          "الشرفي",
          "الشمام",
          "الشهاوي",
          "الشواشي",
          "الشيباني",
          "الشيخ",
          "الصحبي",
          "الضو",
          "الطائي",
          "الطاهر",
          "الطريقي",
          "الطويل",
          "العبيدي",
          "العرابي",
          "العمراني",
          "العمري",
          "العياري",
          "الفضيل",
          "القديري",
          "القصري",
          "القصوري",
          "القصير",
          "القصيري",
          "الكرش",
          "المالكي",
          "المبروك",
          "المراد",
          "المرزوقي",
          "المروني",
          "المزغني",
          "الملولي",
          "المليكي",
          "المنصوري",
          "الناصر",
          "الناصري",
          "الهادي",
          "الهاشمي",
        ],
    };
  }

  @override
  List<String> get telephoneFormats {
    return const [
      "05########",
      "06########",
      "07########",
      "(+216) 05########",
      "(+216) 06########",
      "(+216) 07########",
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
      "جامعة الكاف",
      "جامعة المجمّع",
      "جامعة المنستير",
      "جامعة المهدية",
      "جامعة تونس",
      "جامعة تونس المنار",
      "جامعة جندوبة",
      "جامعة سوسة",
      "جامعة صفاقس",
      "جامعة قرطاج",
      "جامعة قفصة",
      "مدرسة إدارة الموارد البشرية",
      "مدرسة البيوتكنولوجيا",
      "مدرسة التجارة في تونس",
      "مدرسة التصميم",
      "مدرسة السياحة والفندقة",
      "مدرسة الصحة",
      "مدرسة الصيدلة",
      "مدرسة الطاقة",
      "مدرسة الطب",
      "مدرسة العلوم البيئية",
      "مدرسة العلوم البيئية",
      "مدرسة الفنون التطبيقية",
      "مدرسة الفنون الجميلة بتونس",
      "مدرسة اللغات",
      "مدرسة المعلمين العليا",
      "مدرسة المهندسين بتونس",
      "مدرسة المهندسين في صفاقس",
      "مدرسة الموسيقى",
      "مدرسة تكنولوجيا المعلومات",
      "مدرسة علوم الكمبيوتر",
      "معهد إدارة الأعمال",
      "معهد الآداب والعلوم الإنسانية",
      "معهد الإدارة",
      "معهد التكنولوجيا",
      "معهد الدراسات الإسلامية",
      "معهد الدراسات العليا التجارية",
      "معهد الدراسات العليا للغات",
      "معهد الرياضيات",
      "معهد الصحافة وعلوم الإخبار",
      "معهد الطيران",
      "معهد العلوم التطبيقية والتكنولوجيا",
      "معهد العلوم السياسية",
      "معهد الميكانيكا",
      "معهد الهندسة الصناعية",
    ];
  }

  @override
  List<String> get viewsOn {
    return const ["سلبي", "ايجابي", "حيادي"];
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
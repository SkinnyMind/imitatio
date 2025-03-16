import 'package:imitatio/src/datasets/models/person.dart';
import 'package:imitatio/src/enums.dart';

class ArDzPersonData extends PersonDataset {
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
        "أبربور",
        "أبركان",
        "أبكو",
        "أجراد",
        "أحراس",
        "أحرس",
        "أحمناش",
        "أداد",
        "أرحاب",
        "أعراب",
        "أعمارة",
        "أكلي",
        "أمجكوح",
        "أملال",
        "أنهيتي",
        "أوجيط",
        "أورحمون",
        "أوسالم",
        "أوسعدي",
        "أوسعيدان",
        "أوشان",
        "أوشن",
        "أوعمران",
        "أوكيلي",
        "أوموسى",
        "أيت جبارة",
        "أيت دحمان",
        "أيت سيدهوم",
        "إزمور",
        "إيقاش",
        "إيلول",
        "ابركان",
        "احمناش",
        "اخلف",
        "ازرار",
        "ازرارق",
        "ازيداني",
        "ازيل",
        "اعراب",
        "اعماروش",
        "اقشيش",
        "الربعي",
        "العاج",
        "العارف",
        "العايب",
        "العربي",
        "العلمي",
        "العماري",
        "العمراوي",
        "العمري",
        "العوادي",
        "العوفي",
        "العيش",
        "اللافي",
        "الوهاب",
        "انوري",
        "اوسديدان",
        "ايت حسين",
        "ايت شعلال",
        "ايت قارة",
        "ايت قاسي",
        "بابا خويا",
        "باباخويا",
        "باجي",
        "باديس",
        "باش",
        "بانوح",
        "باهي",
        "باي",
        "بحري",
        "براسي",
        "براقوبة",
        "براهمي",
        "براهيمي",
        "برقوقي",
        "بركان",
        "بركة",
        "برنو",
        "بريان",
        "بريني",
        "بريواش",
        "بسير",
        "بشار",
        "بشير شريف",
        "بشيري",
        "بضياف",
        "بطاطاش",
        "بعوش",
        "بعيري",
        "بعيلش",
        "بكيري",
        "بلال",
        "بلحاج",
        "بلحارت",
        "بلحارث",
        "بلحجار",
        "بلحجر",
        "بلخير",
        "بلخيري",
        "بلعباد",
        "بلعباس",
        "بلعربي",
        "بلعزوز",
        "بلعزوزي",
        "بلعسل",
        "بلعيدي",
        "بلغالي",
        "بلغيط",
        "بلقاسم",
        "بلقاسمي",
        "بلقاضي",
        "بلقايد",
        "بلقواسي",
        "بلكواسي",
        "بلهادي",
        "بلهاشمي",
        "بلهواري",
        "بلوط",
        "بليدي",
        "بناني",
        "بناي",
        "بن بلعيد",
        "بن جدة",
        "بن حسين",
        "بن حصة",
        "بن حميش",
        "بن راقوبة",
        "بن رقوبة",
        "بن سالم",
        "بن سنوسي",
        "بن سيدي احمد",
        "بن طالب",
        "بن طاهر",
        "بن عبد الله",
        "بن عروش",
        "بن عقدي",
        "بن علي",
        "بن عمارة",
        "بن عمروش",
        "بن عودة",
        "بن عيسو",
        "بن غرابي",
        "بن محفوظ",
        "بن محمد",
        "بن يوسف",
        "بهلول",
        "بوانوار",
        "بوترعة",
        "بوتريكة",
        "بوتغماس",
        "بوتمر",
        "بوتي",
        "بوجردة",
        "بوجلطي",
        "بوجمعة",
        "بوحميدي",
        "بوحيل",
        "بوخالفة",
        "بوخرشوفة",
        "بوخرص",
        "بوخلشوفة",
        "بوخلف",
        "بوداود",
        "بودبزة",
        "بودحماني",
        "بودربالة",
        "بودلال",
        "بوديسة",
        "بودين",
        "بوذراع",
        "بوراس",
        "بورعده",
        "بورقيق",
        "بورنان",
        "بوزايدي",
        "بوزيان",
        "بوزيت",
        "بوزيد",
        "بوزينة",
        "بوزيني",
        "بوسبعين",
        "بوستة",
        "بوسعيد",
        "بوسعيداني",
        "بوشباق",
        "بوشلاغم",
        "بوشلقيع",
        "بوشيبان",
        "بوصبع",
        "بوصة",
        "بوصوف",
        "بوصيقع",
        "بوضريسة",
        "بوطال",
        "بوطريق",
        "بوطمين",
        "بوطهراوي",
        "بوطويلي",
        "بوعافية",
        "بوعدلة",
        "بوعقلين",
        "بوعكاز",
        "بوعلام",
        "بوعلام الله",
        "بوعلوش",
        "بوعلي",
        "بوعود",
        "بوغربي",
        "بوفركاس",
        "بوقاموم",
        "بوقداد",
        "بوقراب",
        "بوقرو",
        "بوقرومي",
        "بوقريدة",
        "بوكردون",
        "بوكفة",
        "بولحارس",
        "بولرباح",
        "بولنوار",
        "بوليلة",
        "بومعزة",
        "بونادي",
        "بوهاوي",
        "تالي",
        "تايب",
        "ترجمان",
        "ترقو",
        "تركماني",
        "تريدي",
        "تزروتي",
        "تشوكتش",
        "تعمورت",
        "تقرين",
        "تكليشت",
        "تواتي",
        "تودرت",
        "توديات",
        "تومرت",
        "تومي",
        "تونسي",
        "توهامي",
        "تيتوم",
        "تيطاح",
        "تيطراوي",
        "تيطوح",
        "تيغرين",
        "تيقرين",
        "تيليوين",
        "ثلجون",
        "جاب الله",
        "جادة",
        "جباالله",
        "جبري",
        "جدة",
        "جدو",
        "جدي",
        "جرويطي",
        "جطوط",
        "جعفر خوجة",
        "جعفرخوجة",
        "جلال",
        "جليد",
        "جماح",
        "جمعة",
        "جنادي",
        "جنان",
        "جواب",
        "جوابي",
        "جواني",
        "جوهري",
        "جيتلي",
        "جيرى",
        "حاج امحمد",
        "حاج عمرو",
        "حاجو",
        "حارم",
        "حاند",
        "حايد",
        "حجوج",
        "حجوط",
        "حجوطي",
        "حداد",
        "حدادي",
        "حداش",
        "حديد",
        "حديوش",
        "حركات",
        "حرمالي",
        "حرمل",
        "حرمون",
        "حسان",
        "حساني",
        "حسناوي",
        "حسين",
        "حفصي",
        "حلفاوي",
        "حلواني",
        "حماد",
        "حماداش",
        "حمادو",
        "حمادي",
        "حماز",
        "حماني",
        "حمايدي",
        "حمبلي",
        "حمبلي بنت علي",
        "حمدادو",
        "حمداني",
        "حمداوي",
        "حمزاوي",
        "حمسي",
        "حمصي",
        "حملاوي",
        "حمودة",
        "حمودي",
        "حموشي",
        "حموني",
        "حمي",
        "حميدي",
        "حميش",
        "حميطوش",
        "حناش",
        "خابر",
        "خابو",
        "خادر",
        "خاطي",
        "خالدي",
        "خامسي",
        "خبيزي",
        "خدوسي",
        "خديجي",
        "خرزي",
        "خشفوط",
        "خلوفي",
        "خليف",
        "خليفاتي",
        "خليفي",
        "خليلي",
        "خميسي",
        "خميلي",
        "خنيش",
        "خورتة",
        "خوني",
        "خيذر",
        "خير الناس",
        "دادون",
        "داود",
        "داوي",
        "دحاس",
        "دحامني",
        "دحماني",
        "درابلي",
        "دراج",
        "دراجي",
        "درافلي",
        "دراق",
        "دردان",
        "درمش",
        "دروش",
        "درياس",
        "دريدر",
        "دريدي",
        "دريزي",
        "دريسي",
        "دشوشة",
        "دعو",
        "دقي",
        "دلهوم",
        "دليس",
        "دموش",
        "دنداني",
        "دهير",
        "دهيمي",
        "دوقارم",
        "دولاش",
        "ديداني",
        "رأسلماء",
        "رابية",
        "راشدي",
        "رافع",
        "رباحي",
        "ربوح",
        "ربيع",
        "ربيعي",
        "رجدال",
        "رحال",
        "رحماني",
        "رحمي",
        "رحيش",
        "رزقي",
        "رزيق",
        "رسلما",
        "رشام",
        "رضواني",
        "ركوش",
        "ركيبي",
        "رماسي",
        "رمضاني",
        "رميلي",
        "روابح",
        "رواقي",
        "روان",
        "روجيات",
        "رويبي",
        "ريحانى",
        "زادي",
        "زان",
        "زاوي",
        "زايدي",
        "زربوط",
        "زرقين",
        "زرورو",
        "زعموم",
        "زكري",
        "زموش",
        "زنافي",
        "زنيتر",
        "زهور",
        "زواتيني",
        "زواغي",
        "زواقي",
        "زوان",
        "زوبير",
        "زوبيري",
        "زوقاغ",
        "زيان",
        "زياني",
        "زينافي",
        "زيواش",
        "زيوش",
        "زيوي",
        "ساري",
        "ساعد",
        "سالمي",
        "سامة",
        "سايب",
        "سايحي",
        "سباع",
        "سبع",
        "سبيح",
        "ستي",
        "سحنون",
        "سدي",
        "سريج",
        "سرين",
        "سطايحي",
        "سعادة",
        "سعال",
        "سعدادو",
        "سعدالدين",
        "سعد الله",
        "سعد سعود",
        "سعدو",
        "سعدون",
        "سعدي",
        "سعودي",
        "سعيدي",
        "سفير",
        "سلام",
        "سلمى",
        "سليماني",
        "سليمي",
        "سماح",
        "سماعيلي",
        "سنور",
        "سنوسي",
        "سني مخالفية",
        "سهتالي",
        "سومية",
        "سيد العزارة",
        "سيدي معمر",
        "سيلام",
        "سيلم",
        "شادلي",
        "شارف",
        "شاشوة",
        "شايب",
        "شتيح",
        "شحات",
        "شرابي",
        "شراراق",
        "شرك",
        "شروالي",
        "شريف",
        "شريفي",
        "شريقي",
        "شعبان",
        "شعبان شاوش",
        "شعشوع",
        "شعلال",
        "شلابي",
        "شلالي",
        "شلباب",
        "شملال",
        "شنان",
        "شناني",
        "شنينة",
        "شيبان",
        "شيخي",
        "شيراحيل",
        "شيروال",
        "شين",
        "صابري",
        "صافية",
        "صالحي",
        "صحراوي",
        "صديقي",
        "صغير",
        "صيفي",
        "صيلع",
        "طارقي",
        "طالب",
        "طالبي",
        "طالحي",
        "طالي",
        "طراش",
        "طلال",
        "طلاي",
        "طهراوي",
        "طوبال",
        "طيب",
        "طير",
        "طيلب",
        "عابد",
        "عاشور",
        "عاصم",
        "عاصمي",
        "عالم",
        "عباس",
        "عباسي",
        "عبدا",
        "عبدات",
        "عبد السلام",
        "عبد العزيز",
        "عبد اللاوي",
        "عبد النور",
        "عبدلي",
        "عبدون",
        "عبلة",
        "عبيب",
        "عثماني",
        "عجو",
        "عرعار",
        "عرقوب",
        "عزوز",
        "عزوق",
        "عزون",
        "عزي",
        "عسكر",
        "عشيط",
        "عطال",
        "عقاب",
        "عقيب",
        "عكاشة",
        "عكموش",
        "عكوش",
        "علال",
        "علواش",
        "علوان",
        "عليلي",
        "عليليش",
        "عليم",
        "عليوات",
        "عليوان",
        "عمار",
        "عمارة",
        "عماري",
        "عمام",
        "عماني",
        "عمران",
        "عمراني",
        "عمروش",
        "عموري",
        "عمي",
        "عميرات",
        "عميراش",
        "عميش",
        "عنصر",
        "عوادي",
        "عوشار",
        "عوف",
        "عون",
        "عياد",
        "عيدون",
        "عيس",
        "عيسات",
        "عيساني",
        "عيساوي",
        "عيش",
        "عيشون",
        "عينوش",
        "غازي",
        "غالب",
        "غانم",
        "غربي",
        "غرناوط",
        "غزالي",
        "فارس",
        "فايلي",
        "فراج",
        "فراجي",
        "فراش",
        "فرحات",
        "فرحي",
        "فرشيشي",
        "فرقاني",
        "فرندي",
        "فلاح",
        "فودي",
        "فوضيل",
        "فوناس",
        "قادوش",
        "قارة",
        "قارو",
        "قاسم",
        "قاسمي",
        "قاسي",
        "قاسيمي",
        "قاضي",
        "قالية",
        "قايد",
        "قدوش",
        "قراش",
        "قراوي",
        "قرباص",
        "قربي",
        "قرواني",
        "قروج",
        "قرور",
        "قريشي",
        "قريفي",
        "قرين",
        "قسوم",
        "قشطولي",
        "قصري",
        "قصوري",
        "قطيط",
        "قعلول",
        "قلاز",
        "قلال",
        "قليل",
        "قمراوي",
        "قميري",
        "قنفود",
        "قواوي",
        "قوداح",
        "قوزي",
        "قويدر",
        "قويزي",
        "قويسم",
        "قيراط",
        "قيواس",
        "كاتب",
        "كحلوش",
        "كراوة",
        "كربوعة",
        "كرغلي",
        "كرفالي",
        "كركود",
        "كرمية",
        "كرنان",
        "كروى",
        "كريم",
        "كشادي",
        "كشكار",
        "كشوط",
        "كعوان",
        "كلول",
        "كنان",
        "كوجن",
        "كوشاح",
        "كيرفالي",
        "لاج مرابط",
        "لاحقي",
        "لاسن",
        "لبانجي",
        "لحسن",
        "لحقي",
        "لحماني",
        "لريك",
        "لطرش",
        "لعجال",
        "لعجالي",
        "لعربي شريف",
        "لعريبي",
        "لعزوزي",
        "لعمارة",
        "لعميري",
        "لعواري",
        "لفقي",
        "لقواق",
        "لكحل",
        "لنوار",
        "لواشرية",
        "لوزي",
        "لوصيف",
        "لوعيدي",
        "لولمي",
        "لوناس",
        "لوناسي",
        "لونيس",
        "لونيسي",
        "لويزي",
        "ليمام",
        "مادي",
        "ماقري",
        "مالكي",
        "مامش",
        "ماني",
        "مبارك",
        "مباركي",
        "متيجي",
        "مجدوب",
        "مجراس",
        "مجقوح",
        "مجول",
        "محفوض",
        "محفوظ",
        "محفوف",
        "محمدي",
        "محمودي",
        "مخازني",
        "مختاري",
        "مخطاري",
        "مخفي",
        "مخلوف",
        "مخلوفي",
        "مدات",
        "مداح",
        "مداحي",
        "مداني",
        "مدني",
        "مديني",
        "مرابطي",
        "مراد",
        "مرزوق",
        "مرسي",
        "مروش",
        "مزاري",
        "مزعي",
        "مزليخ",
        "مزهود",
        "مزيان",
        "مزياني",
        "مزيلي",
        "مزين",
        "مزيود",
        "مساس",
        "مسبوعة",
        "مسدور",
        "مسعودي",
        "مسلم",
        "مسيلي",
        "مشتم",
        "مشطام",
        "مشو",
        "مصيد",
        "مطاري",
        "معاش",
        "معاندي",
        "معتوق",
        "معزوز",
        "معلاوي",
        "معماش",
        "معمري",
        "معوش",
        "معيوف",
        "مغني",
        "مقداد",
        "مقدود",
        "مقراح",
        "مقراني",
        "مقراوي",
        "مقلاتي",
        "مقني",
        "مقنين",
        "مكتوب",
        "مكي",
        "ملوان",
        "ملوكي",
        "ملولي",
        "مليكش",
        "مليكشي",
        "منصر",
        "منصور خوجة",
        "منصوري",
        "منقلاتي",
        "مني",
        "موزاوي",
        "موساوي",
        "موسوني",
        "موعني",
        "مولاي",
        "مولى",
        "موهوب",
        "ميدات",
        "ميدو",
        "ميدون",
        "ميدونة",
        "ميلودي",
        "ميهوبي",
        "نابي",
        "ناجي",
        "ناصر باي",
        "ناصف",
        "نامون",
        "ناوي",
        "نبهي",
        "نجام",
        "نجاو",
        "نعمان",
        "نملي",
        "نور",
        "نوي",
        "هابل",
        "هبول",
        "هلال",
        "همال",
        "همالي",
        "هندل",
        "هني",
        "وابد",
        "واحبراش",
        "وادي",
        "وادي مرابط",
        "واضح",
        "واكلي",
        "والي",
        "وزناجي",
        "وشان",
        "وعراب",
        "وكاد",
        "ولد اعمر",
        "ولد علي",
        "ولدعمر",
        "ولد عمروش",
        "وهاب",
        "وهابي",
        "يحياوي",
        "يزيد",
        "يسكر",
        "يعقوب",
        "يعيش",
        "يوشبابة",
        "يونسي",
      ],
    };
  }

  @override
  List<String> get telephoneFormats {
    return const [
      "05########",
      "06########",
      "07########",
      "(+213) 05########",
      "(+213) 06########",
      "(+213) 07########",
    ];
  }

  @override
  List<String> titles({required Gender gender, required TitleType titleType}) {
    return switch (gender) {
      Gender.female =>
        titleType == TitleType.typical
            ? const ["السيدة"]
            : const ["الدكتورة", "الاستاذة"],
      Gender.male =>
        titleType == TitleType.typical
            ? const ["السيد"]
            : const ["الدكتور", "الاستاذ"],
    };
  }

  @override
  List<String> get universities {
    return const [
      "جامعة البويرة",
      "جامعة الجلفة",
      "جامعة غرداية",
      "جامعة خميس مليانة",
      "جامعة المدية",
      "جامعة الجزائر هواري بومدين للعلوم و التكنولوجيا",
      "جامعة بجاية",
      "جامعة بومرداس",
      "جامعة تيزي وزو",
      "جامعة الأغواط",
      "جامعة البليدة 1",
      "جامعة البليدة 2",
      "جامعة الجزائر 1",
      "جامعة الجزائر 2",
      "جامعة الجزائر 3",
      "جامعة التكوين المتواصل",
      "جامعة تامنغست",
      "جامعة جيجل",
      "جامعة تبسة",
      "جامعة برج بوعريريج",
      "جامعة الطارف",
      "جامعة خنشلة",
      "جامعة أم البواقي",
      "جامعة الوادي",
      "جامعة سوق أهراس",
      "جامعة عنابة",
      "جامعة سكيكدة",
      "جامعة قالمة",
      "جامعة باتنة 1",
      "جامعة بسكرة",
      "جامعة المسيلة",
      "جامعة ورقلة",
      "جامعة قسنطينة للعلوم الإسلامية",
      "جامعة سطيف 1",
      "جامعة سطيف 2",
      "جامعة قسنطينة 1",
      "جامعة قسنطينة 2",
      "جامعة قسنطينة 3",
      "جامعة باتنة 2",
      "جامعة طاهري محمد بشار",
      "جامعة مصطفى اسطمبولي معسكر",
      "جامعة الدكتور مولاي الطاهر سعيدة",
      "جامعة أبو بكر بلقايد تلمسان",
      "جامعة احمد دراية أدرار",
      "جامعة بن خلدون تيارت",
      "جامعة جيلالي ليابس سيدي بلعباس",
      "جامعة عبد الحميد ابن باديس مستغانم",
      "جامعة احمد بن بلة وهران 1",
      "جامعة محمد بوضياف العلوم والتكنولوجيا",
      "جامعة وهران 2",
      "جامعة الشلف",
      "جامعة تيسمسيلت",
      "جامعة عين تموشنت",
      "جامعة غليزان",
      "المدرسة الوطنية المتعددة التقنيات",
      "المدرسة الوطنية العليا للري",
      "المدرسة الوطنية العليا للأشغال العمومية",
      "المدرسة الوطنية العليا للبيطرة",
      "المدرسة المتعددة العلوم للهندسة المعمارية والعمران",
      "المدرسة الوطنية العليا لعلوم الزراعة",
      "مدرسة الدراسات العليا التجارية",
      "المدرسة الوطنية العليا للإعلام الآلي",
      "المدرسة الوطنية العليا للإحصاء والاقتصاد التطبيقي",
      "المدرسة العليا للتجارة",
      "المدرسة الوطنية العليا لعلوم البحر و تهيئة الساحل",
      "المدرسة الوطنية العليا للمناجمنت",
      "المدرسة الوطنية العليا للتكنولوجيا",
      "المدرسة الوطنية العليا للعلوم السياسية",
      "المدرسة الوطنية العليا للصحافة وعلوم الإعلام",
      "المدرسة العليا للعلوم التطبيقية",
      "المدرسة الوطنية العليا للمناجم والمعادن",
      "المدرسة الوطنية المتعددة التقنيات بقسنطينة",
      "المدرسة الوطنية العليا في البيوتكنولوجيا بقسنطينة",
      "المدرسة العليا علوم التسير بعنابة",
      "المدرسة العليا التكنولوجيات الصناعية بعنابة",
      "المدرسة العليا المحاسبة والمالية بقسنطينة",
      "المدرسة الوطنية المتعددة التقنيات بوهران",
      "المدرسة العليا للإعلام الآلي بسيدي بلعباس",
      "المدرسة العليا في علوم التطبيقية بتلمسان",
      "المدرسة العليا لإدارة الأعمال بتلمسان",
      "المدرسة العليا في الإقتصاد بوهران",
      "المدرسة العليا في الهندسة الكهروبائية والطاقوية بوهران",
      "المدرسة العليا في علوم الفلآحة بمستغانم",
      "المدرسة العليا للعلوم البيولوجية بوهران",
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

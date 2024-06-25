// ignore_for_file: lines_longer_than_80_chars

import 'package:imitatio/src/datasets/models/text.dart';

class FaTextData extends TextDataset {
  @override
  List<String> alphabet({required bool isLowerCase}) {
    return switch (isLowerCase) {
      true => const [
          "ا",
          "ب",
          "پ",
          "ت",
          "ث",
          "ج",
          "چ",
          "ح",
          "خ",
          "د",
          "ذ",
          "ر",
          "ز",
          "ژ",
          "س",
          "ش",
          "ص",
          "ض",
          "ط",
          "ظ",
          "ع",
          "غ",
          "ف",
          "ق",
          "ک",
          "گ",
          "ل",
          "م",
          "ن",
          "و",
          "ه",
          "ی",
        ],
      false => const [
          "ا",
          "ب",
          "پ",
          "ت",
          "ث",
          "ج",
          "چ",
          "ح",
          "خ",
          "د",
          "ذ",
          "ر",
          "ز",
          "ژ",
          "س",
          "ش",
          "ص",
          "ض",
          "ط",
          "ظ",
          "ع",
          "غ",
          "ف",
          "ق",
          "ک",
          "گ",
          "ل",
          "م",
          "ن",
          "و",
          "ه",
          "ی",
        ],
    };
  }

  @override
  List<String> get answers {
    return const [
      "بله",
      "خیر",
      "شاید",
    ];
  }

  @override
  List<String> get colors {
    return const [
      "آبی",
      "آبی آسمانی",
      "آبی درباری",
      "آبی دریایی",
      "آبی کاربنی",
      "آبی لجنی",
      "آبی نفتی",
      "آجری",
      "آل",
      "آلبالویی",
      "اخرایی (زرد تیره)",
      "ارغوانی",
      "استخوانی",
      "بادمجونی",
      "برگ سنجدی",
      "برنجی",
      "برنزی",
      "بژ",
      "بنفش",
      "پرکلاغی",
      "پوست پیازی",
      "پوست گرگی",
      "تاج خروسی",
      "تریاکی",
      "جگری",
      "حنایی",
      "خاکستری",
      "خاکی",
      "خردلی",
      "خرمایی",
      "دارچینی",
      "دودی",
      "دوغی",
      "دلفینی",
      "روناسی",
      "زرد",
      "زرد کهربایی",
      "زرشکی",
      "زعفرانی",
      "زغالی",
      "زیتونی",
      "سبز",
      "سبز ایرانی",
      "سبز چمنی",
      "سبز درباری",
      "سبز کاهویی",
      "سبز کلخنگی",
      "سبز لجنی",
      "سدری",
      "سربی",
      "سرخ",
      "سرخ آتشی",
      "سرخ گلی",
      "سرخابی",
      "سرمه‌ای",
      "سفید",
      "سفید یخچالی",
      "سیاه (مشکی)",
      "شرابی",
      "شفقی",
      "شکلاتی",
      "شنگرفی",
      "شیرشکری",
      "شیری",
      "صورتی",
      "طلایی (زرین)",
      "طوسی",
      "عنابی",
      "فندقی",
      "فولادی",
      "فیروزه‌ای",
      "فیلی",
      "قرمز (سرخ)",
      "قرمز ایرانی",
      "قرمز فالونی",
      "قهوه‌ای",
      "كاراملي",
      "کرم",
      "کله غازی",
      "گردویی",
      "گلبهی",
      "گیلاسی",
      "لاجوردی",
      "لجنی",
      "لیمویی",
      "ماشی",
      "مرجانی",
      "مسی",
      "مشکی (سیاه)",
      "مغزپسته‌ای",
      "نارنجی",
      "نخودی",
      "نقره‌ای (سیمین)",
      "نوک مدادی",
      "نیلی",
      "نیلی سیر",
      "هلویی",
      "یاسی",
      "یاقوتی",
      "یخی",
      "یشمی",
    ];
  }

  @override
  List<String> get levels {
    return const [
      "کم",
      "متوسط",
      "بالا",
      "بسیار بالا",
      "شدید",
      "بحرانی",
    ];
  }

  @override
  List<String> get quotes {
    return const [
      "همه دین‌ها، هنرها و علم‌ها شاخه‌های یک درخت‌اند.. - آلبرت اینشتین",
      "خشم فقط در آغوش احمق‌ها جای می‌گیرد. - آلبرت اینشتین",
      "قوانین ریاضیات در آنجایی که به واقعیت وابسته است، قطعی نیستند؛ آنگاه قطعی انگاشته می‌شوند که به واقعیت وابسته نشود. - آلبرت اینشتین",
      "موزش آن چیزی است که فرد پس از فراموشی آنچه در مدرسه آموخته، به یاد می‌آورد. - آلبرت اینشتین",
      "چه کم‌اند آنان که با چشمان خود می‌نگرد و با قلب‌های خود احساس می‌کنند. - آلبرت اینشتین",
      "ما همه در برابر خداوند به طور یکسان عاقل هستیم، و به طور یکسان نادان. - آلبرت اینشتین",
      "خدا به مشکلات ریاضیات ما اهمیت نمی‌دهد، او به طور عملی انتگرال می‌گیرد. - آلبرت اینشتین",
      "من آن قدر هنرمند هستم که در خیالم آزادانه ترسیم کنم. خیال مهم تر از دانش است. دانش محدود است اما خیال همه دنیا را دربرمی‌گیرد. - آلبرت اینشتین",
      "این دیگر چه معمایی است که هیچ‌کس مرا درک نمی‌کند ولی همگان مرا می‌پذیرند. - آلبرت اینشتین",
      "باید شرم کنند، کسانی که بدون کم‌ترین تأمل و تفکر از پدیده‌های معجزه‌آسای علم و فن بهره می‌گیرند و سفیهانه از درک مضمون هوشمندانه آن عاجزند، همانند گاوی که از لذت نشخوار گیاهان برخوردار است ولی از علم گیاه‌شناسی خبری ندارد. - آلبرت اینشتین",
      "نهایت فرومایگی است اگر رفتار آدمی منحصر به ترس از تنبیه یا امید به پاداش باشد. - آلبرت اینشتین",
      "من نمی‌توانم فرضیه «بی‌اخلاقی انسان» را بپذیرم، و من اخلاق را منحصرا امری انسانی و متعلق به انسان می‌دانم که هیچ نوع قدرت مافوق انسانی در پشت آن وجود ندارد. - آلبرت اینشتین",
      "البته آنچه درباره اعتقادات دینی من گفته‌اند دروغ است. دروغی که به طور سیستماتیک تکرار شده است. من به خدایی شخص‌وار اعتقاد ندارم و هرگز منکر این بی‌اعتقادی‌ام نمی‌شوم بلکه آن را آشکارا بیان می‌کنم. - آلبرت اینشتین",
      "در برابر یک قدرت متشکل و منظم، تنها یک قدرت متشکل و منظم دیگر تاب ایستادگی دارد. هرچند مایه تأسف است، ولی من راه دیگری نمی‌بینم. - آلبرت اینشتین",
      "درک صورت‌مسئله از حل آن مهم‌تر است، چون تشریح دقیق صورت‌مسئله، خودبه‌خود راه‌حل آن را نشان می‌دهد. - آلبرت اینشتین",
      "من همیشه علیه استیلای زور مبارزه کرده‌ام. متأسفانه فرضیه‌های من، انسانیت را به‌سلاح قدرت‌طلبی مجهز نموده که برای من عذاب وجدان به‌ارمغان آورده‌است. - آلبرت اینشتین",
      "من هیچ‌گونه استعداد برجسته‌ای ندارم، فقط مشتاقانه کنجکاوم. - آلبرت اینشتین",
      "اگر نظریه نسبیت من به اثبات برسد آلمان مدعی آلمانی بودنم می‌شود و فرانسه اعلام می‌کند من شهروند جهانم. اما اگر نظریه‌ام درست نباشد فرانسه مرا آلمانی و آلمان یهودی ام خواهند خواند. - آلبرت اینشتین",
      "نامه روز دهم ژوئن تو را دریافت کردم. من در طول حیاتم با کشیش یسوعی صحبت نکرده‌ام، من از این گستاخی متحیرم که این چنین درباره من دروغ می‌گوید. از نظر کشیش یسوعی من آتئیستم، البته، که هستم و همیشه بوده‌ام. - آلبرت اینشتین",
      "آموزش چیزی است که بعد از فراموش کردن چیزهایی که در مدرسه آموخته‌اید باقی می‌ماند. - آلبرت اینشتین",
      "یکنواختی و تنهایی یک زندگی آرام، ذهن خلاق را تحریک می‌کند. - آلبرت اینشتین",
      "اگر انسان‌ها در طول عمر خویش فعالیت مغزشان به اندازه یک میلیونیوم معده‌شان بود، اکنون کره زمین تعریف دیگری داشت. - آلبرت اینشتین",
      "اگر واقعیات با نظریات هماهنگی ندارند، واقعیت‌ها را تغییر بده. - آلبرت اینشتین",
      "تا زمانی که حتی یک کودک ناخرسند روی زمین وجود دارد، هیچ کشف و پیشرفت جدی برای بشر وجود نخواهد داشت. - آلبرت اینشتین",
      "تخیل مهمتر از دانش است. علم محدود است اما تخیل دنیا را دربر می‌گیرد. - آلبرت اینشتین",
      "سعی نکن انسان موفقی باشی، بلکه سعی کن انسان ارزشمندی باشی. - آلبرت اینشتین",
      "سخت‌ترین کار در دنیا درک مالیات بر درآمد است. - آلبرت اینشتین",
      "سه قدرت بر جهان حکومت می‌کند:۱-ترس ۲-حرص ۳-حماقت. - آلبرت اینشتین",
      "علم زیباست وقتی هزینه گذران زندگی از آن تأمین نشود. - آلبرت اینشتین",
      "مسائلی که به دلیل سطح فعلی تفکر ما بوجود می‌آیند، نمی‌توانند با همان سطح تفکر حل گردند. - آلبرت اینشتین",
      "من با شهرت بیشتر و بیشتر احمق شدم. البته این یک پدیده نسبی است. - آلبرت اینشتین",
      "مهم آن است که هرگز از پرسش بازنایستیم. - آلبرت اینشتین",
      "هیچ کاری برای انسان سخت‌تر از فکرکردن نیست. - آلبرت اینشتین",
      "دین بدون علم کور است و علم بدون دین لنگ است. - آلبرت اینشتین",
      "جاذبه زمین، مسئول به دامان عشق افتادن نیست. - آلبرت اینشتین",
      "در سقوط افراد در چاه عشق، قانون جاذبه تقصیری ندارد. - آلبرت اینشتین",
      "خداوند برای اداره جهان تاس نمی‌ریزد. - آلبرت اینشتین",
      "ثابت کیهانی بزرگترین اشتباه من بود. - آلبرت اینشتین",
      "هرکس می‌تواند هر چیزی را بزرگتر، پیچیده‌تر و خشن تر کند. برای حرکت در عکس کمی نبوغ نیاز است. - آلبرت اینشتین",
      "به کسی که حقیقت را در امور جزئی جدی نگیرد، نمی‌توان در امور بزرگ اعتماد کرد. - آلبرت اینشتین",
      "اگر می‌دانستیم که چکار می‌کنیم که به آن تحقیق نمی‌گفتیم. - آلبرت اینشتین",
      "روشنفکران مشکلات را حل می‌کنند ولی نوابغ از برزو آن جلوگیری می‌کنند. - آلبرت اینشتین",
      "منطق شما را از A به B می‌برد، ولی تخیل شما را به همه جا می‌برد. - آلبرت اینشتین",
      "مردم {عام مردم} عاشق شکستن چوب هستند. زیرا این کاریست که نتیجه اش بلافاصله معلوم می‌شود. - آلبرت اینشتین",
      "همه دانش چیزی بیش از پالایش افکار روزمره نیست. - آلبرت اینشتین",
      "تنها دلیل وجود زمان آن است که همه چیز با هم اتفاق نیفتد. - آلبرت اینشتین",
      "زندگی مثل دوچرخه سواریست. برای حفظ تعادل باید حرکت کرد. - آلبرت اینشتین",
      "عاشق سفرم، ولی از رسیدن متنفرم. - آلبرت اینشتین",
      "بدترین چیز جوانی این است که من دیگر به آن تعلق ندارم! - آلبرت اینشتین",
      "هیچ وقت چیزی رو خوب نمی‌فهمی مگر اینکه بتونی به مادربزرگت توضیحش بدی! - آلبرت اینشتین",
      "دشواری‌های بزرگی که ما با آن‌ها روبرو هستیم، نمی‌توان با همان دیدگاهی که آن‌ها را پدیدآورده است، از بین برد. - آلبرت اینشتین",
    ];
  }

  @override
  List<String> get texts {
    return const [
      'آیا شما در حال حاضر زبان فارسی را فاهم می خواهید ؟',
      'کتاب جالبی در بازار پیدا کردم',
      'آقای جانی با خوبی حال می باشد',
      'دختران بسیار خوب بازی کردند',
      'کتاب فارسی زبانی را دوست دارم',
      'چیزهای خوب برای شما در فروشگاه وجود دارد',
      'شما باید بیشتر از این کتاب بخوانید',
    ];
  }

  @override
  List<String> get words {
    return const [
      'دانش',
      'دوست',
      'کتاب',
      'خواهش',
      'بچه',
      'دیدار',
      'سال',
      'روز',
      'شب',
      'هفته',
      'ماه',
      'باز',
      'بسته',
      'خوب',
      'بد',
      'سیب',
      'نارنج',
      'آب',
      'هوا',
      'زمین',
      'آسمان',
      'روزگار',
      'مرد',
      'زن',
      'بچگان',
      'کار',
      'شهر',
      'دهستان',
      'خورشید',
      'ماه',
      'ستاره',
      'گل',
      'درخت',
      'پیر',
      'جوان',
      'سیب',
      'گرافه',
      'قلم',
      'دفتر',
      'مدرسه',
      'دانشگاه',
      'بیمارستان',
      'فروشگاه',
      'مسجد',
      'کلیسا',
      'سینما',
      'مکان',
      'وقت',
      'هجده',
      'صد',
    ];
  }
}
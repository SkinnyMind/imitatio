// It's ok to have long strings in that file
// ignore_for_file: lines_longer_than_80_chars

import 'package:imitatio/src/datasets/models/text.dart';

class UkTextData extends TextDataset {
  @override
  List<String> alphabet({required bool isLowerCase}) {
    return switch (isLowerCase) {
      true => const [
        "а",
        "б",
        "в",
        "г",
        "ґ",
        "д",
        "е",
        "є",
        "ж",
        "з",
        "и",
        "і",
        "ї",
        "й",
        "к",
        "л",
        "м",
        "н",
        "о",
        "п",
        "р",
        "с",
        "т",
        "у",
        "ф",
        "х",
        "ц",
        "ч",
        "ш",
        "щ",
        "ь",
        "ю",
        "я",
      ],
      false => const [
        "А",
        "Б",
        "В",
        "Г",
        "Ґ",
        "Д",
        "Е",
        "Є",
        "Ж",
        "З",
        "И",
        "І",
        "Ї",
        "Й",
        "К",
        "Л",
        "М",
        "Н",
        "О",
        "П",
        "Р",
        "С",
        "Т",
        "У",
        "Ф",
        "Х",
        "Ц",
        "Ч",
        "Ш",
        "Щ",
        "Ь",
        "Ю",
        "Я",
      ],
    };
  }

  @override
  List<String> get answers {
    return const ["Так", "Ні", "Можливо", "Мабуть"];
  }

  @override
  List<String> get colors {
    return const [
      "аквамариновий",
      "амарантового",
      "аметистовий",
      "античний білий",
      "білий",
      "бургундський",
      "блакитний",
      "зелений",
      "коричневий",
      "коричний",
      "червоний",
      "латунний",
      "мідний",
      "помаранчевий",
      "рожевий",
      "синій",
      "спаржа",
      "фіолетовий",
      "хакі",
      "чорний",
      "бурштиновий",
    ];
  }

  @override
  List<String> get levels {
    return const [
      "низький",
      "помірний",
      "високий",
      "дуже високий",
      "екстремальний",
      "критичний",
    ];
  }

  @override
  List<String> get quotes {
    return const [
      "Людина в світ зерно нести повинна, як зерно носить людям колосок.",
      "Чого варті наші тамерлани та наполеони без коня?",
      "Світ ловив мене, та не спіймав.",
      "Вічна слава безсмертю хоробрих, які кличуть на подвиг живих!",
      "Магнат, як магніт, кожен добре знає: Сей залізо, а той золото притягає.",
      "У вбогого трохи є,в жебрака нічого. Понад міру в богача, а досить – ні в кого.",
      "Ніяка в світі сила нас не зламає, бо нас коріння наше в землі тримає.",
      "Як не буде птахів,то і людське серце стане черствішим.",
      "Життя не кінчається смертю, якщо залишається сад.",
      "Я знаю: мова мамина – свята, в ній вічний, незнищенний дух народу.",
      "Найпрекрасніша мати щаслива, найсолодші кохані вуста, найчистіша душа незрадлива, найскладніша людина проста.",
      "Любов до книжки виявляється в тому, що з шостого класу Франко починає збирати свою бібліотеку.",
      "Хочу, щоб ніколи, ніколи не зачерствіло серце.",
      "Поганий той школяр який учителя не переважить.",
      "Ми працю любимо, що в творчість перейшла.",
      "Знай, що в світі найтяжче – це серце носити студене!",
      "Той, хто зневажливо ставиться до рідної мови, не може й сам викликати поваги до себе.",
      "Той, хто по-справжньому любить свою Батьківщину, з усякого погляду справжня людина.",
      "Хліб і сіль для друга й брата, а для ката – грім.",
      "Учітесь, читайте, і чужому научайтесь, й свого не цурайтесь.",
      "О мово вкраїнська! Хто любить ії , той любить мою Україну!",
      "Добру науку приймай, хоч її від простого чуєш; злої ж на ум не бери, хоч би й святий говорив.",
      "Можна вибрати друга і по духу брата, та не можна рідну матір вибирати.",
      "Праця людини – окраса і слава, праця людини – безсмертя її.",
      "Коли не зможу нічим любій вітчизні прислужитись, в усякому разі з усієї сили намагатимусь ніколи ні в чому не шкодити.",
      "Мову чудову, глибинне і пружне слово, немов гостру зброю, дав нам народ.",
      "Не жди ніколи слушної пори – твоя мовчанка може стать ганьбою!",
      "Похибки друзів ми повинні вміти виправляти або зносити, коли вони несерйозні.",
      "Зло нічого не дає, крім зла.",
      "Шукаймо в людях хороше, мов скарби, що давно забуті.",
      "Не високо мудруй, але твердо держись, а хто правду лама, з тим ти сміло борись!",
      "В обіймах з радістю журба. Одна летить, друга спиня…І йде між ними боротьба, і дужчий хто не знаю я…",
      "Хай живе неоднаковість, слава відмінностям!",
      "Лиш мати – вміє жити, аби світитися, немов зоря.",
      "Не скажу, що й досі вірю я у справедливість юних дум.",
      "Ти приймеш знов життя і так захочеш жити, його пізнавши глибоко, до дна.",
      "Щоб юнацтво України присягало свято на прапори жовто-сині за свій край вмирати.",
      "Ти могутня, рідна мово! Мово – пісня колискова, мово – матері уста.",
      "Дивлюсь я на небо та й думку гадаю: Чому я не сокіл, чому не літаю, чому мені, Боже, ти крилець не дав! Я б землю покинув і в небо злітав.",
      "Все ж російський язик, зіпсутий навмання, це ще не українська мова!",
      "Тайна дрож пронимає народи,- мабуть благодатная хвиля надходить.",
      "Все гине – слава не поляже.",
      "Діла добрих оновлюються – діла злих гинуть.",
      "Не завидуй багатому: багатий не знає ні приязні, ні любові…",
      "І гнів, і муку неозору співаю я в ці дні журби, коли лакеї йдуть угору й мовчать раби…",
      "Поезія жити не може на смітнику, а без неї життя злочин.",
      "Хай юність догорить – ми віддані життю і нам воздасться в славі.",
      "Мужича правда єсть колюча, а панська на всі боки гнуча.",
      "При щирості між людьми при глибокій і міцній симпатії, ніякий риск не страшний.",
      "Орлині крила маєм за плечима, самі ж кайданами прикуті до землі.",
      "Мужність не дається напрокат.",
      "Я додам вам раду щиру: і при щасті майте міру.",
      "Як не мудруй, а правди ніде діти.",
      "Якщо ти за все життя не посадив жодного дерева – плати за чисте повітря.",
      "Щоб жить – ні в кого права не питаюсь. Щоб жить – я всі кайдани розірву.",
      "Ліпше вмерти біжучи, ніж жити гниючи.",
      "Пан гуляв у себе в замку – у ярмі стогнали люди.",
      "Всі великі творіння Данте, Рафаеля, Сервантеса, Шевченка – це теж творіння не пера і пензля, а творіння духу.",
      "В нас вважається хорошим письменником той, хто гарно себе піарить.",
      "Мистецтво має людину підтягувати і піднімати, воно не має ії опускати.",
      "Ми мусимо навчитися чути себе українцями – не галицькими, не буковинськими українцями, а українцями без офіційних кордонів.",
    ];
  }

  @override
  List<String> get texts {
    return const [
      "Haskell- стандартизована чиста функціональна мова програмування загального призначення.",
      "Є одним з найпоширеніших мов програмування з підтримкою відкладених обчислень.",
      "Повнотипове програмування - стиль програмування, що відрізняється великим використанням інформації про типи з тим, щоб механізм перевірки узгодження типів забезпечив раннє виявлення максимальної кількості всіляких різновидів багів.",
      "Повнотипове програмування може підтримуватися на рівні системи типів мови або вводитися програмістом ідеоматично.",
      "Відмінна риса мови - серйозне ставлення до типізації.",
      "REPL - форма організації простий інтерактивного середовища програмування в інструментами інтерфейсу командного рядка.",
      "Python - високорівнева мова програмування загального призначення, орієнтована на підвищення продуктивності розробника і читання коду.",
      "Синтаксис ядра Python мінімалістичний.",
      "У той же час стандартна бібліотека включає великий обсяг корисних функцій.",
      "Python підтримує кілька парадигм програмування, в тому числі структурне, об'єктно-орієнтоване, функціональне, імперативне і аспектно-орієнтоване.",
      "Парадигма програмування - це сукупність ідей і понять, що визначають стиль написання комп'ютерних програм.",
      "Це спосіб концептуалізації, що визначає організацію обчислень і структурування роботи, що виконується комп'ютером.",
      "Java - строго типізована об'єктно-орієнтована мова програмування, розроблена компанією Sun Microsystems.",
      "Застосунок Java зазвичай транслюються в спеціальний байт-код, тому вони можуть працювати на будь-якої комп'ютерної архітектурі, за допомогою віртуальної Java-машини.",
      "Erlang - функціональна мова програмування з сильною динамічною типізацією, призначена для створення розподілених обчислювальних систем.",
      "Розроблено і підтримується компанією Ericsson.",
      "Мова включає в себе кошти породження паралельних легковагих процесів і їх взаємодії через обмін асинхронними повідомленнями відповідно до моделі акторів.",
      "Erlang був цілеспрямовано розроблений для застосування в розподілених, відмовостійких, паралельних системах реального часу, для яких є стандартна бібліотека модулів і бібліотека шаблонних рішень (так званих поводжень) - фреймворк OTP.",
      "Свій синтаксис і деякі концепції Erlang успадкував від мови логічного програмування Пролог.",
      "У наш вік інформації занадто багато, щоб зрозуміти хто правий, а хто лукавить.",
      "Популярність Erlang почала зростати в зв'язку з розширенням його області застосування (телекомунікаційні системи) на високонавантажених паралельні розподілені системи, які обслуговують мільйони користувачів WWW, такі як чати, системи управління вмістом, веб-сервери і розподілені, що вимагають масштабування бази даних.",
      "Erlang застосовується в декількох NoSQL-базах даних високої доступності.",
      "Erlang є декларативною мовою програмування, яка швидше за все використовується для опису того, що повинно бути обчислено ніж як.",
      "Наприклад, визначення функції, яке використовує зіставлення зі зразком, для вибору одного з варіантів обчислення або вилучення елемента даних з складовою структури, нагадує рівняння.",
      "Зіставлення зі зразком поширене навіть на бітові рядки, що спрощує реалізацію телекомунікаційних протоколів.",
    ];
  }

  @override
  List<String> get words {
    return const [
      "аблатив",
      "агенезія",
      "агрофітоценоз",
      "адсорбовність",
      "аеронавтика",
      "ампер",
      "анабаптист",
      "асиметрія",
      "аудіограф",
      "афектація",
      "багатозабійність",
      "бархан",
      "безмір",
      "безтабельність",
      "безуспішність",
      "благальність",
      "болість",
      "будівельник",
      "букса",
      "біоорієнтація",
      "вава",
      "валок",
      "вальок",
      "вахтерка",
      "взаємопізнавання",
      "вибухопопередження",
      "вихованка",
      "вожак",
      "вуглярство",
      "вульгаризація",
      "галліцизм",
      "геліоустановка",
      "гема",
      "годівник",
      "голосина",
      "голубочка",
      "грімниця",
      "гуртоправ",
      "гідроліт",
      "гіпермаркет",
      "давильня",
      "делегатка",
      "деревостан",
      "дифманометр",
      "довантаження",
      "довговічність",
      "дружка",
      "дрібноквітковість",
      "дрібномаєтність",
      "духоборство",
      "екзаменування",
      "екстензія",
      "електрооснащеність",
      "елементарність",
      "ельбор",
      "епістаз",
      "ерготизм",
      "естроз",
      "естрон",
      "етерифікація",
      "етикетаж",
      "етмоїдит",
      "етноніміка",
      "етноцентризм",
      "етрол",
      "етюдність",
      "еукаріот",
      "ефект",
      "ефіопка",
      "ефіроманія",
      "ефіронос",
      "ехолалія",
      "ехолот",
      "ехінокактус",
      "ешафот",
      "жалість",
      "жебрак",
      "женоподібність",
      "жердина",
      "жердя",
      "жерміналь",
      "жирнуватість",
      "житловідділ",
      "жовтень",
      "жучище",
      "забавляння",
      "заглибленість",
      "заглядання",
      "загрубіння",
      "законознавство",
      "запинання",
      "затишність",
      "заіржавілість",
      "згірклість",
      "золотопромисловець",
      "ймення",
      "ймовірність",
      "йогурт",
      "йодатометрія",
      "йодемболіт",
      "йодинол",
      "йодит",
      "йодоаурат",
      "йододерма",
      "йодометрія",
      "каламбурист",
      "капіталець",
      "китичка",
      "композиційність",
      "конектор",
      "кристалооптика",
      "кулуари",
      "кунак",
      "кількадесят",
      "кінчак",
      "лайба",
      "листя",
      "любуня",
      "люди",
      "люмінесценція",
      "лінон",
      "лісовпорядкування",
      "літр",
      "ліфтер",
      "ліцензіар",
      "манірниця",
      "меліоратор",
      "морж",
      "морквяник",
      "мрець",
      "мураха",
      "мурашник",
      "мікросекунда",
      "мінута",
      "містицизм",
      "нагрібальник",
      "нагрівник",
      "налатування",
      "напруження",
      "небосхил",
      "недосипляння",
      "незамаскованість",
      "неподобство",
      "непринадність",
      "нескерованість",
      "обголеність",
      "обманність",
      "обнародування",
      "образливість",
      "однойменність",
      "одноколісність",
      "однорідність",
      "окраєць",
      "онуча",
      "оторопілість",
      "педометр",
      "перебрех",
      "переупорядковування",
      "повішеник",
      "посілість",
      "придання",
      "продуктообмін",
      "проникливість",
      "піддомен",
      "пітніння",
      "радіопередавач",
      "раціонування",
      "ректорство",
      "рибознавство",
      "робототехніка",
      "розгортання",
      "розкладка",
      "розносник",
      "розсівання",
      "розігрівання",
      "світличка",
      "сириця",
      "скромничання",
      "спецвзуття",
      "спонсорство",
      "спурт",
      "стабілізування",
      "стадіон",
      "сульфамід",
      "суперклей",
      "тайнопис",
      "тамування",
      "танкіст",
      "тернослив",
      "трагедійність",
      "трагікомедія",
      "транскрипція",
      "транспірація",
      "трирядність",
      "туя",
      "убивчість",
      "угоряння",
      "удмурт",
      "узнавання",
      "ультрафіолет",
      "умовчання",
      "унизаність",
      "урегульованість",
      "урегулювання",
      "уславленість",
      "фальцет",
      "фенотип",
      "фліпер",
      "фотоприймач",
      "фрагмент",
      "франтуватість",
      "фрондер",
      "фруктоза",
      "фундаторка",
      "фітоклімат",
      "хазарин",
      "халат",
      "халцедон",
      "характеристичність",
      "хвилеріз",
      "хвиля",
      "хлюпотання",
      "хостинг",
      "хризоберил",
      "хуторянка",
      "цвяшок",
      "цебрик",
      "церемоніальність",
      "цитоліз",
      "цитра",
      "цурупалок",
      "цуценятко",
      "цуцик",
      "ціль",
      "ціп",
      "чаїнка",
      "чекальня",
      "червонавість",
      "черевиченьки",
      "черствіння",
      "чинник",
      "чипсет",
      "чудасія",
      "чумак",
      "чіпляння",
      "шаноба",
      "шевцювання",
      "шевченкознавство",
      "шедевр",
      "шкварка",
      "шовкопряд",
      "шовкопрядіння",
      "шовківництво",
      "шорник",
      "шукання",
      "щавель",
      "щасливчик",
      "щастя",
      "щебетушечка",
      "щеміння",
      "щит",
      "щомісячник",
      "щотижневик",
      "щупальце",
      "щілинність",
      "югослав",
      "юдоль",
      "юнак",
      "юніор",
      "юність",
      "юрба",
      "юрик",
      "юрта",
      "юстиція",
      "юхта",
      "ядерність",
      "язичок",
      "яйце",
      "ямища",
      "японка",
      "ясен",
      "ясність",
      "яструб",
      "яструбок",
      "ячмінь",
      "європеєць",
      "єдиновірець",
      "єфрейтор",
      "ізобутилен",
      "іконостасик",
      "імідж",
      "інвектива",
      "індіанець",
      "іноземка",
      "іномарка",
      "інтер'єр",
      "іскріння",
      "істерик",
      "істеричка",
      "істик",
      "історик",
      "історичність",
      "ітератив",
      "іудаїзм",
      "іфігенія",
      "іхтіол",
      "іхтіорніс",
      "їдиш",
      "їдок",
      "їжа",
      "їжак",
      "їжачиха",
      "їжачок",
      "їждження",
      "їзда",
      "їздецтво",
      "їздка",
      "ґава",
      "ґаволов",
      "ґаночок",
      "ґелґотуха",
      "ґноття",
      "ґринджоли",
      "ґудзикар",
      "ґудзикарка",
      "ґуля",
      "ґуральник",
    ];
  }
}

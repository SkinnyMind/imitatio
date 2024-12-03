// ignore_for_file: lines_longer_than_80_chars

import 'package:imitatio/src/datasets/models/text.dart';

class ArQaTextData extends TextDataset {
  @override
  List<String> alphabet({required bool isLowerCase}) {
    return switch (isLowerCase) {
      true => const [
          "أ",
          "ب",
          "ت",
          "ث",
          "ج",
          "ح",
          "خ",
          "د",
          "ذ",
          "ر",
          "ز",
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
          "ك",
          "ل",
          "م",
          "ن",
          "هـ",
          "و",
          "ي",
        ],
      false => const [
          "أ",
          "ب",
          "ت",
          "ث",
          "ج",
          "ح",
          "خ",
          "د",
          "ذ",
          "ر",
          "ز",
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
          "ك",
          "ل",
          "م",
          "ن",
          "هـ",
          "و",
          "ي",
        ],
    };
  }

  @override
  List<String> get answers {
    return const ["نعم", "لا", "ربما"];
  }

  @override
  List<String> get colors {
    return const [
      "مشمشي",
      "زبرجدي",
      "كستنائي",
      "لوزي",
      "كهرماني",
      "رمادي داكن",
      "رمادي رملي",
      "فضي",
      "باذنجاني",
      "بني محمر",
      "أزرق",
      "بني داكن",
      "بني محمر",
      "بني",
      "قرفة",
      "بابونج",
      "كراميل",
      "قرمزي",
      "جزر",
      "بني فاتح",
      "برتقالي",
      "برونزي",
      "أسود",
      "رمادي",
      "أخضر زيتي",
      "ذهبي",
      "أرجواني",
      "أصفر",
      "لازوردي",
      "خزامي",
      "ليموني",
      "زعفراني",
      "أزرق غامق",
      "تركوازي",
      "بني رمادي",
      "زيتوني",
      "برتقالي",
      "بنفسجي",
      "أرجواني فاتح",
      "وردي",
      "صدأ",
      "نحاسي",
      "سماوي",
    ];
  }

  @override
  List<String> get levels {
    return const ["منخفض", "معتدل", "عالي", "مرتفع جداً"];
  }

  @override
  List<String> get quotes {
    return const [
      "شفق عليك في شبابك حتى تجد من يشفق عليك وأنت رجل كبير",
      "من صاحب العلماء وقر - مثل لبناني",
      "قال الإمام علي بن أبي طالب: ليس اليتيم من مات والده إن اليتيم يتيم العلم والأدب",
      "النجاح لا يحتاج إلى أقدام بل إلى إقدام",
      "روى الأصمعي في أحد مؤلفاته: أول العلم الصمت والثاني الاستماع والثالث الحفظ والرابع العمل والخامس نشره",
      "من لم يتعلم في صغره لم يتقدم في كبره",
      "قال نابليون بونابرت: من فتح مدرسة أقفل سجنًا",
      "اطلب العلم من المهد إلى اللحد",
      "العلم في الصِّغَرِ كالنقش على الحجر",
      "العلم دواء لسموم الخرافات",
      "من طول الغيبات جاب الغنايم",
      "لكلّ داء دواء يستطب به، إلا الحماقة أعيت من يداويها",
      "كل المصائب قد تمر على الفتى، فتهون، غير شماتة الأعداء",
      "لا بد من فقد ومن فاقد، هيهات ما في الناس من خالد",
      "رُب رمية من غير رام",
      "عداوة العاقل أقل ضرراً من مودة الجاهل",
      "لا تجادل بليغاً ولا سفيهاً، فالبليغ يغلبك والسفيه يؤذيك",
      "الكلمة كالرصاصة، إذا خرجت فات الأوان على إرجاعها",
      "إذا أردت أن تطاع فأمر بما يستطاع",
      "في سعة الأخلاق كنوز الأرزاق",
      "إذا المرء لم يدنس من اللؤم عرضه فكل رداء يرتديه جميل",
      "لا يمكن للإنسان أن يصبح عالماً قبل أن يكون إنساناً",
      "من راقب الناس مات هما",
      "إن كان لك عند الكلب حاجة قل له يا سيدي",
      "الصياح على قدر الألم",
      "أسأل مجرب ولا تسأل طبيب",
      "اللي ما يعرف الصقر يشويه",
      "البشاشة سيّدة محترمة تطلب ألا تخدمها أيد قذرة",
      "أن الشجرة المثمرة هي التي يهاجمها الناس",
      "بالابتسامة تذلل الصعاب",
      "بلاء الإنسان من اللسان",
      "ما تريد نيله بالإرهاب يسهل عليك نيله بالابتسام",
      "أن الإنسان لا يستطيع أن يتطور، إذا لم يجرب شيئاً غير معتاد عليه",
      "ليس كل ما في القلب يحكى، فبعض الصّمت أجمل",
      "كثرة اللوم والعتاب تورث البغضاء",
      "ليكن وجهك باسماً وكلامك ليناً، تكن أحب إلى الناس ممن يعطيهم الذهب والفضة",
      "نفس جميلة في جسد جميل هو المثل الأعلى للجمال",
      "أن الفاشلين يقولون: إن النجاح هو مجرد عملية حظ",
      "وراء كل رجل عظيم أم وأب عظيمان",
      "كل إناء ينضح بما فيه",
      "من لا خير فيه لأهله، لا خير فيه لأحد",
      "من يستعجل قطف العنب قبل نضوجه، يأكله حامضاً",
      "دوام الحال من المحال",
      "من استهان بالوقت نبذه الزمن",
      "يهب الله كل طائر رزقه ولكنه لا يلقيه له في العش",
      "لولا العمل لانقرض الناس",
      "فكر سنة وتحدث ثانية",
      "لا تبح بسرك لخادمك",
      "تعلم الكتابة ولو بعد الستين",
      "إذا شاورت العاقل، صار عقله لك",
      "التكرار أبو المهارات",
      "من يستيقظ متأخراً يركض طوال النهار",
      "كلام الليل يمحوه النهار",
      "الحب أعمى، ولكن الزواج يعيد إليه البصر",
      "ساعة الغضب ليس لها عقارب",
      "استعد لعدوك وكأنه أسد، حتى لو كان فأراً",
      "من لا يفهم النظرة لن يفهم الشرح الطويل",
      "شيل من التل يختل",
      "حُسن السوق ولا حُسن البضاعة",
      "الصبر مفتاح الفرج",
      "أحشفاً وسوء كيلة",
      "غلبونا بالمال غلبناهم بالجلوس",
      "القفة التي لها أذنين يشيلوها اثنين",
      "طباخ السم يذوقه",
      "اللي خلف ما مات",
      "كثرة الدق يفك اللحام",
      "هذا الشبل من ذاك الأسد",
      "يا داخل بين البصلة وقشرتها ما ينوبك غير ريحتها",
      "ما كل ما يتمنى المرء يدركه ~ تجري الرياح بما لا تشتهي السفن",
      "من تدخل في ما لا يعنيه لقى ما لا يرضيه",
      "ارضى بقردك لا يجيك أقرد منه",
      "قديمك نديمك ولو الجديد أغناك",
      "الطمع قل ما جمع",
      "صادق نفسك فهي الوحيدة التي لن تخونك مهما فعلت بها ودائماً ما تدلك على ما بداخلك بكل صدق وبدون رياء",
      "لو سكتت الأسود عن زئيرها لأقبلت الغربان بنعيقها",
      "الكثير من الشيء يقلل من ثمنه إلا العقل الناضج كلما زادت ثقافته ندر وعلا شأنه",
      "خادم سيدين يكذب على أحدهما",
      "أسد عليّ وفي الحروب نعامة",
      "آفة الحديث الكذب",
      "كلما ارتفع الشريف تواضع، وكلما ارتفع الحقير تكبر",
      "العتاب هدية للأحباب",
      "الجزع عند المصيبة مصيبة",
      "أن توقد شمعة خير من أن تعيش حياتك وأنت تلعب في الظلام",
      "من أمنك لا تخونه وإن كنت خوان",
      "من احتمل عيوبي أعتبره سيدي ولو كان خادمي",
      "كل شيء إذا كثر رخص إلا الأدب فإنه إذا كثر غلا",
      "يصبح الوجع بسيطاً حينما تجد من يعتني بك",
      "ليست حقيقة الإنسان بما يظهره لك، بل بما لا يستطيع أن يظهره، لذلك إذا أردت أن تعرفه، فلا تصغِ إلى ما يقوله بل إلى ما لا يقوله",
      "ما أنبل القلب الحزين الذي لا يمنعه حزنه على أن ينشد أغنية مع القلوب الفرحى",
      "أعز مكان في الدنيا سرج سابح وخير جليس في الزمان كتاب",
      "إذا سمعت الرجل يقول فيك من الخير ما ليس فيك فلا تأمن أن يقول فيك من الشر ما ليس فيك",
      "أعلمه الرماية كل يوم فلما اشتد ساعده رماني",
      "العلم زين فكن للعلم مكتسباً وكن له طالباً ما عشت مقتبسا",
      "اطلب من العلوم علماً ينفعك ينفي الأذى والعيب ثم يرفعك",
      "إن ضحكت يضحك العالم معك، وإن بكيت ستبكي وحدك",
      "لا تقل يا رب عندي هم كبير، ولكن قل يا هم عندي رب كبير",
      "في كثير من الأحيان، خسارة معركة تعلمك كيف تربح الحرب",
      "لا يجب أن تقول كل ما تعرف ولكن يجب أن تعرف كل ما تقول",
      "لا تبصق في البئر، فقد تشرب منه يوماً",
      "ليست الألقاب هي التي تكسب المجد بل الناس من يكسبون الألقاب مجداً",
      "يوجد كثير من المتعلمين، ولكن قلة منهم مثقفون",
      "ليس من الصعب أن تضحي من أجل صديق ولكن من الصعب أن تجد الصديق الذي يستحق التضحية",
      "أن مفتاح الفشل هو محاولة إرضاء كل شخص تعرفه",
      "إذا ركلك أحد من خلفك، فاعلم أنك في المقدمة",
      "من أحب الله، رأى كل شيء جميلًا",
      "ليس كل ما يلمع ذهباً",
      "رحم الله امرئ عرف قدر نفسه",
      "مد رجليك على قد لحافك",
      "الإهانة لا تأتيك ممن يسيء إليك، بل من حكمك الذي يجعلك تعتقد أنّه يهينك",
      "المتكبر والبخيل مهما تكن مزاياهما فإنّهما لا يستحقان الاهتمام",
      "الدموع لآلئ، ونحن لا نظهر إلّا الزائفة منها",
      "من عجائب الإنسان أنّه يفر من سماع النصيحة وينصت لسماع الفضيحة",
      "البسطاء يمتلكون أرواحاً نادرة جداً تجدهم بمظهر متواضع، لكنهم بمحتوى باهظٍ وراقٍ، ينعمون بهدوء النفس؛ لأنهم يمتلكون كنز القناعة",
      "الحياة لوحة فنية ألوانها أقوالك، أشكالها أعمالك والرسام هو أنت فأبدع في رسم لوحتك فما زالت الفرشاة في يدك",
      "الطبيعة تمنحنا العديد من الدروس الحياتية، لكن القليل من يتعلم منها",
      "تذكر أن السعادة ليست في المال، بل في مدى رضاك عن حياتك",
      "من تعلم لغة قوم أمن مكرهم",
      "الأمل لا يتوقف، مهما كانت الظروف",
      "من يمتلك الإرادة يستطيع تحقيق أي هدف",
      "الابتسامة هي أقصر طريق إلى القلوب",
      "من اجتهد في عمله نال النجاح",
      "الجهل أكبر من الفقر",
      "العقل زينة",
      "الإرادة تصنع المعجزات",
      "الوقت كالسيف إن لم تقطعه قطعك",
      "العمل عبادة",
      "من طلب العلا سهر الليالي",
      "السفر يفيد العقل",
      "الاحتراف سر النجاح",
      "الطموح ينير الطريق",
      "لا شيء يستحق البكاء من أجله",
      "العلم يرفع بيوتا لا عماد لها",
      "كل بداية صعبة",
      "تجارب الحياة تعلمنا أكثر من الكتب",
      "كل شيء بالمثابرة يتحقق",
      "الصديق وقت الضيق",
      "الأمانة رأس المال",
      "الحكمة في الصمت",
      "الهدوء يصنع السلام",
      "لا تعطي الأعداء فرصة للنيل منك",
      "من لا يشكر الناس لا يشكر الله",
      "الطموح يقود إلى النجاح",
      "السعادة من صنع الذات",
      "النية الطيبة تفتح أبواب الخير",
      "العمل الشاق هو مفتاح النجاح",
      "الفشل هو خطوة نحو النجاح",
      "الأمل يبني المستقبل",
      "التعلم المستمر يجعلك دائماً على القمة",
      "الحب أساس كل نجاح",
      "الإخلاص هو سر التميز",
      "الفرص تأتي لمن يستغلها",
      "التفاؤل ينير الطريق",
      "الحياة مدرسة، والعقل هو المعلم",
    ];
  }

  @override
  List<String> get texts {
    return const [
      "منتخب البرازيل لكرة القدم هو ممثل البرازيل في كرة القدم الرجالية الدولية",
      "منتخب البرازيل تحت رقابة الاتحاد البرازيلي لكرة القدم وهو الهيئة الإدارية لكرة القدم في البرازيل",
      "منتخب البرازيل عضو في الاتحاد الدولي لكرة القدم منذ 1923، وكذلك عضو اتحاد أمريكا الجنوبية لكرة القدم منذ عام 1916",
      "البرازيل هو أكثر المنتخبات فوزاً بكأس العالم لكرة القدم بخمس بطولات: 1958، 1962، 1970، 1994 و2002",
      "يتمتع منتخب البرازيل بأفضل أداء عام في مسابقة كأس العالم من حيث القيمة النسبية أو المطلقة",
      "حقق منتخب البرازيل 76 انتصارًا في 114 مباراة، وفارق الأهداف 129، و247 نقطة، و19 خسارة",
      "منتخب البرازيل هو المنتخب الوطني الوحيد الذي لعب في جميع نسخ كأس العالم دون غياب أو الحاجة إلى التصفيات",
      "كما أن منتخب البرازيل هو الأكثر فوزاً بكأس القارات بأربع بطولات",
      "فازت البرازيل بتسع بطولات كوبا أمريكا",
      "تعتبر البرازيل ثالث المنتخبات من حيث عدد بطولات كوبا أمريكا بعد أوروغواي والأرجنتين",
      "توجت البرازيل بلقب بطل كأس القارات في 2005 و2009 و2013",
      "تعتبر البرازيل دائماً أحد أقوى فرق كرة القدم في العالم",
      "تعتبر البرازيل أيضاً واحدة من أكثر الفرق التنافسية منذ عقد الستينات",
      "منتخب البرازيل هو المنتخب الوحيد الذي لعب في جميع نهائيات كأس العالم",
      "البرازيل وإسبانيا وإيطاليا وأوروغواي وألمانيا والأرجنتين وفرنسا هي المنتخبات الوحيدة التي فازت بكأس العالم خارج أراضيها",
      "البرازيل هو المنتخب الوحيد الذي فاز بكأس العالم في أربع قارات مختلفة",
      "أول مباراة دولية للبرازيل كانت عام 1914 أمام الأرجنتين وانتهت بفوز الأرجنتين 3 مقابل 0",
      "أكبر فوز للبرازيل كان عام 1975 على نيكاراغوا بنتيجة 14 مقابل 0",
      "بيليه ونيمار هما هدافا المنتخب البرازيلي عبر التاريخ برصيد 77 هدفاً",
      "كافو هو أكثر لاعبي المنتخب البرازيلي مشاركة برصيد 142 مباراة دولية",
      "البرازيل هو المنتخب الوحيد الذي نجح في التأهل لجميع نهائيات كأس العالم منذ عام 1930",
      "فازت البرازيل بكأس العالم لكرة القدم 5 مرات",
      "المنتخب البرازيلي لم يفز بكأس العالم على أرضه رغم ألقابه الخمسة",
      "البرازيل حصلت على الترتيب الثاني عامي 1950 و1998",
      "حصلت البرازيل على الترتيب الثالث عامي 1938 و1978",
      "حصلت البرازيل على الترتيب الرابع عامي 1974 و2014",
      "وصلت البرازيل إلى الدور ربع النهائي أعوام 1954، 1986، 2006، 2010، و2018",
      "رونالدو ثاني هدافي كأس العالم عبر التاريخ برصيد 15 هدفاً",
      "البرازيل شاركت في 6 نسخ من كأس القارات وفازت بها 4 مرات",
      "فازت البرازيل بكأس كوبا أمريكا 9 مرات",
      "فرضت البرازيل سيطرتها على بطولة كوبا أمريكا في الفترة الأخيرة",
      "ملعب ماراكانا في البرازيل يتسع لحوالي 82,000 متفرج",
      "في نهاية القرن التاسع عشر انتشرت لعبة كرة القدم في مختلف أنحاء العالم حيث نشرها البحارة والتجار البريطانيين، ومن مختلف المسافرين الأوروبيين",
      "أدى النمو الشامل لكرة القدم إلى تكوين الاتحاد الدولي لكرة القدم في باريس في 21 مايو 1904",
      "أصبحت كرة القدم لعبة عالمية",
      "كان أول رئيس للاتحاد الدولي لكرة القدم الفرنسي روبير غيرين",
      "ترجع فكرة إقامة كأس العالم لكرة القدم إلى أول اجتماع للاتحاد الدولي لكرة القدم عام 1904 في باريس، وبحضور سبع دول هي: سويسرا، بلجيكا، الدانمارك، فرنسا، هولندا، إسبانيا، والسويد",
      "تبنى للاتحاد الدولي فكرة إقامة بطولة عالمية لكرة القدم، بعد أن استغرق القرار وقتاً طويلاً للاتفاق عليه",
      "عمل المحامي الفرنسي جول ريميه جاهداً لإطلاق أول بطولة عالمية لكرة القدم",
      "تقدمت الأوروغواي بطلب تنظيم بطولة كأس العالم، وتمت الموافقة نظرا لأنها كانت رائدة المنتخبات في ذلك الوقت وبطلة آخر دورتين أولمبيتين، وقدمت تسهيلات للمنتخبات المشاركة، وتكفل الاتحاد الدولي بدفع مصاريف الفرق وتنقلاتها الصعبة في ذلك الوقت",
      "قبل عامين من انطلاق منافسات أول كأس عالم، اشترطت التعليمات وجوب وجود جائزة ثمينة تقدم للمنتخب الفائز بالبطولة العالمية، مما دفعهم إلى إنشاء كأس النصر (كأس جول ريميه)",
      "وانطلقت بطولة كأس العالم لأول مرة عام 1930 ولا زالت مستمرة كل 4 سنوات حتى اليوم",
      "ومع إشراف الاتحاد الدولي لكرة القدم على كأس العالم لكرة القدم والألعاب الأولمبية، فإن الاتحاد قد نظم العديد من البطولات الأخرى مثل كأس العالم لكرة القدم تحت 17 سنة وكأس العالم لكرة القدم تحت 20 سنة",
      "نظم الفيفا بطولة كأس القارات لكرة القدم، وقد كانت فكرة كأس القارات والتي كان اسمها في السابق بطولة الكأس الذهبية",
      "مع تطور كرة القدم النسائية، أنشأ الفيفا كأس العالم لكرة القدم للنساء في عام 1991، وكأس العالم لكرة القدم للنساء تحت 20 سنة في عام 2002، انتهت بطولة كأس العالم لكرة القدم تحت 17 ربيعا",
      "نظم الفيفا بطولة كرة قدم للأندية اسمها كأس العالم للأندية، وتقام البطولة بين أبطال القارات الستة وبطل الدوري في الدولة المستضيفه للبطولة",
      "وينظم الفيفا العديد من المسابقات لكرة القدم الشاطئية وكرة القدم داخل الصالات",
      "ولايوجد بطولة لايعترف فيها الفيفا لكن يوجد بطولات لايشرف عليها الفيفا بسبب عدم وجود دخل مادي كافي لها مثل دورات الخليج العربي",
      "أسرت مباريات كرة القدم بين أعوام 1870 و1880 معظم المشاهدين وازداد إعجابهم بسحر الكرة المستديرة فتم وضع القوانين الأساسية من قبلهم إضافة إلى القوانين الجديدة مثل رمي الكرة من خط التماس باليدين وركلة الجزاء",
      "كان بالإمكان مهاجمة حراس المرمى ولكن الآن لم يعد ذلك ممكنا إلا إذا كان الحارس يملك الكرة",
      "وكان بإمكان الحراس التقاط الكرة من أي نقطة من الملعب ولكن تم تغيير هذه القاعدة بعد أن سجلت عدة أهداف من قبل حراس المرمى عام 1910 في شباك الخصم",
      "أُنشئ الاتحاد الدولي لكرة القدم تحت نظم القوانين السويسرية، وتقوم الهيئة العليا في الفيفا بالتواصل مع كل اتحاد محلي",
      "تعقد الهيئة العليا في الفيفا اجتماعا كل أربع سنوات منذ عام 1998 لمناقشة تغيير بعض قوانين كرة القدم",
      "تختار الهيئة العليا رئيس الفيفا، والسكرتارية التابعة له، وأعضاء الفيفا، ويهتم رئيس الفيفا بالأعمال المكتبية في الفيفا، بينما يقوم السكرتارية بالاهتمام بقضايا ال209 أعضاء",
      "قام الاتحاد الدولي لكرة القدم بإنشاء العديد من الاتحادات، ومنها الاتحادات القارية، ويجب على الاتحادات الوطنية أن تكون عضوا في الاتحاد القاري لكرة القدم والاتحاد الدولي لكرة القدم وفقا لتصنيفها الجغرافي",
      "هناك عدد من الدول مثل روسيا وتركيا وأرمينيا وأذربيجان اختارت الانضمام إلى أوروبا، بالرغم من أن بلادهم تقع في قارة آسيا",
      "انضمت إسرائيل إلى الاتحاد الأوروبي لكرة القدم في عام 1994 بالرغم من كونها في قارة آسيا بعد أن حدثت العديد من المشاكل بينها وبين العديد من الدول في الشرق الأوسط",
      "انضمت كازاخستان إلى قارة أوروبا في عام 2002",
      "تعتبر دولتا سورينام وغيانا أعضاء في اتحاد أمريكا الشمالية وأمريكا الوسطى والبحر الكاريبي لكرة القدم بالرغم من كونهم في قارة أمريكا الجنوبية",
      "وانضمت أستراليا إلى الاتحاد الآسيوي لكرة القدم في بداية عام 2006، وذلك بسبب عدم وجود أي مقعد خاص لكأس العالم لكرة القدم لقارة أوقيانوسيا",
      "قدّمت الفيفا جائزة أفضل لاعب في العالم لكرة القدم للاعب الأبرز في العام",
      "وفي عام 2010 توحدت الفيفا مع مجلة فرانس فوتبول لتقديم جائزة الكرة الذهبية حتى عام 2015 عندما انفصلا ورجعت المجلة لنظامها القديم في الجائزة",
      "ما يميز الحواسيب الحديثة اليوم عن كل الآلات الأخرى هو إمكانية البرمجة",
      "يمكن للحواسيب أن تعالج (تُنفِّض) الملايين من التعليمات كل ثانية من غير وجود أخطاء",
      "بما أن ذاكرة الحاسوب تخزِّن الأرقام، فإنها قادرة على تخزين التعليمات أيضاً",
      "برنامج الحاسوب بأكمله هو مجموعة من الأرقام",
      "في معمارية هارفارد تكون الذاكرة التي تُخزِّن البيانات مفصولة تماماً عن الذاكرة التي تخزن التعليمات",
      "كتبت البرامج في الحواسيب المبكرة بلغة الآلة مباشرة",
      "تستعمل لغات البرمجة لكتابة البرامج التي تنفذها الحواسيب",
      "تُصمم لغات البرمجة، على خلاف اللغات الطبيعية، لتُعبِّر عن المراد بجلاء وإيجاز",
      "لغات البرمجة كلها مكتوبة، وتصعب قراءتها جهاراً",
      "تترجم إلى لغة الآلة قبل تنفيذها باستعمال مُصرِّف أو مُجمِّع، أو تترجم مباشرة عند تنفيذها باستعمال مُفسِّر",
      "تشمل اللغات منخفضة المستوى لغات الآلة ولغات التجميع",
      "تكون كل لغة تجميع متخصصة بمعمارية فريدة لوحدة المعالجة المركزية في الحاسوب",
      "وحدة المعالجة المركزية في معمارية آرم، الموجودة عادة في الهواتف الذكية لا يمكنها أن تفهم لغة الآلة المستعملة في معمارية إكس 86 الموجودة عادة في الحواسيب الشخصية",
      "كتابة البرامج بلغة التجميع أسهل من كتابتها بلغة الآلة",
      "كتابة البرامج بلغة التجميع صعبة وكثيرة الأخطاء ومستهلكة للوقت",
      "لذلك، فإن البرامج تكتب عادةً بلغات أكثر تجريداً تُسمَّى لغات البرمجة عالية المستوى",
      "تُصرَّف البرامج المكتوبة بلغات البرمجة عالية المستوى إلى لغة الآلة مباشرةً أو مروراً بلغة تجميع",
      "ويُسمَّى البرنامج الذي يُصرِّف البرامج المكتوبة بلغة برمجة الى لغة الالة بالمُصِّرف",
      "تكون اللغات عالية المستوى أقل ارتباطاً بالحاسوب الهدف الذي تعمل عليه مقارنةً بلغات التجميع",
      "من الممكن استعمال مُصرِّفات متعددة لترجمة برنامج واحد إلى لغة الآلة لحواسيب مختلفة",
      "يمكن مثلاً توفير لعبة فيديو ما على مشغلات ألعاب فيديو مختلفة باستعمال مُصرِّفات مختلفة تترجم النص البرمجي للعبة، المكتوب بلغة عالية المستوى، للغات آلة المُشغِّلات المطلوبة",
      "طوَّرت جريس هوبر أول مُصرِّف للغة برمجة",
      "تصميم البرامج الصغيرة بسيط، ويتضمن تحليل المشكلة وجمع المدخلات ثم استعمال لغة البرمجة لتنفيذ الخوارزميات وكتابة الإجرائيات، ثم طباعة البيانات الناتجة على أداة الخرج",
      "تُستعمل ميزات مثل البرامج الفرعية والتوثيق عندما تصبح المشكلة أعقد وأكبر حجماً",
      "تتألف البرامج الكبيرة من آلاف السطور، وتحتاج إلى منهج عمل متناسق لتطويرها",
      "إن مهمة إنتاج برمجيات مقبولة ذات موثوقية عالية في إطار زمني محدد ما تزال صعبة المنال",
      "إنتاج برمجيات هو موضوع بحث يدرسه اختصاص هندسة البرمجيات وتحدٍ تسعى شركات البرمجة للتغلب عليه",
      "عثة وجدت محصورة بين نقطتي تلامس في المُرحلة 70 في اللوحة في الحاسوب مارك الثاني في أثناء الاختبار في جامعة هارفارد في 9 أكتوبر سنة 1947م",
      "توجد الأخطاء البرمجية في البرامج، وقد تكون حميدة لا أثر لها على عمل البرنامج، أو قد تكون ذات أثر محدود ولكنها قد تؤدي أيضاً إلى تجمَّد البرنامج وجعله لا يستجيب للمستخدم",
      "قد يستغل بعض قراصنة الحاسوب الأخطاء الحميدة لتطوير برمجيات استغلال وتعطيل التنفيذ السليم لتنفيذ البرنامج",
      "ليست الأخطاء وليدة الحواسيب التي تنفِّذ فقط التعليمات التي تُعطى لها، لكنها نتيجة لخطأ ارتكبه المبرمج عند كتابة البرنامج",
      "تمثيل مرئي لجزء من المسارات في الإنترنت",
      "استعملت الحواسيب لنقل المعلومات بين مواقع عديدة منذ خمسينيات القرن العشرين",
      "كانت بيئة الأرض نصف الآلية المعروفة اختصاراً بالاسم الرمزي ساج المثال الأول لنظام شبكة بيانات",
      "بدأ مهندسو الحاسوب في مراكز الأبحاث في الولايات المتحدة بربط شبكاتهم المحلية معاً باستعمال تقانات الاتصال البُعدي",
      "موَّلت وكالة مشاريع أبحاث الدفاع المتقدمة، التي كانت تُعرَف بالاسم المُختصر أربا هذه الجهود",
      "وبُنيت شبكة الحاسوب أربانت نتيجة لأبحاث الدفاع المتقدمة",
      "شاعت التقانات التي استعملت لبناء أربانت خارج النطاقين البحثي والعسكري، وتطورت لتكون الأساس للإنترنت",
      "ساهم صعود شبكات البيانات في إعادة تعريف طبيعة الحاسوب وحدوده وإمكانياته",
      "عُدِّلت أنظمة التشغيل والبرامج لتسمح بالنفاذ إلى موارد موجودة في حواسيب أخرى على الشبكة أو لتخزين البيانات وقراءتها من مخدِّمات متصلة مع الشبكة",
      "انتشار التطبيقات البسيطة التي لا تتطلب معرفة تقنية متقدمة مثل البريد الإلكترونية وخدمات الوب بالإضافة لتطوير تقنيات شبكة سريعة مثل الإثرنت وخط المشترك الرقمي غير المتناظر جعل استعمال الحواسيب في بيئات العمل كلها أمراً لا مفر منه بدءاً من تسعينيات القرن العشرين",
      "أصبح اتصال الحواسيب مع الإنترنت لنقل البيانات في العمل والمنزل أمراً واسع الانتشار",
      "تطورت شبكات البيانات اللاسلكية مثل واي فاي وشبكات الاتصال الخلوية؛ مما سمح باتصال أسهل مع الإنترنت",
      "ليس بالضرورة أن يكون الحاسوب مكوناً من عناصر إلكترونية ولا أن يحتوي على معالج أو ذاكرة وصول عشوائي أو قرص صلب",
      "الاستعمال الدارج لكلمة الحاسوب مرتبط بالحاسوب الشخصي الإلكتروني، إلا أن تعريف الحاسوب هو: 'أي آلة تقوم بثلاث مهمات: تتلقى مدخلات ذات بنية مُعرَّفة، وتعالجها وفق قواعد معرَّفة سلفاً، وتولَّد النتائج كمخرجات",
      "إن أي جهاز يعالج المعلومات يمكن أن يُصنَّف على أنه حاسوب",
      "الأبحاث جارية لصناعة حواسيب غير تقليدية باستعمال تقانات مختلفة، مثل الحواسيب البصرية وحواسيب الحمض النووي والحواسيب العصبونية والحواسيب الكمومية",
      "الغالب الأعم من الحواسيب عامٌ قادرٌ على حساب الدوال الحَسُوبَة، ويكون كل منها محدوداً بسعة ذاكرته وبسرعة إنجاز العمليات الحسابية",
      "تستطيع الحواسيب الكمومية استخراج مُعمَّى خوارزمية تعمية حديثة، مثل خوارزمية شور بسرعة كبيرة",
      "أعدت سارة الفطور",
      "غسلت مريم وجهها",
      "رسمت فاطمة لوحة",
      "قرأ يوسف المقال",
      "ركب علي الدراجة",
      "أكل أحمد العشاء",
      "زار عادل المدينة",
      "شاهدت نجلاء الفيلم",
      "سافرت ليلى إلى القاهرة",
      "نظف خالد الحديقة",
      "زرع سامي الزهور",
      "شربت هند العصير",
      "استمع محمد إلى الموسيقى",
      "أرسل فهد الرسالة",
      "رقصت مريم في الحفل",
      "كتب علي الكتاب",
      "حملت سارة الحقيبة",
      "نظف يوسف السيارة",
      "صمم عادل الموقع",
      "اشتريت نورة الملابس",
      "أصدر المجلس القرار",
      "غسلت هند الصحون",
      "حضر يوسف الاجتماع",
      "أعدت هند عشاء لذيذا",
      "زار محمد الأصدقاء",
      "رتب سليم الأوراق",
      "استمعت فاطمة إلى المحاضرة",
      "ركب سامي الحافلة",
      "زار أحمد المتحف",
      "طهى خالد اللحم",
      "غسلت نجلاء الملابس",
      "رقصت ليلى في الحفل",
      "نظف يوسف الغرفة",
      "زرع عادل الأشجار",
      "اشترى سامي الكتاب",
      "قرأت نورة الرواية",
      "حملت هند الصندوق",
      "زار علي المدرسة",
      "شربت سارة الماء",
      "شربت سارة العصير",
      "شربت سارة الحليب",
      "قرأت محمد الرسالة",
      "سافرت نجلاء إلى دبي",
      "سافرت سارة  إلى فرنسا",
      "شربت فاطمة القهوة",
      "أعدت ليلى الغداء",
      "زار عادل أهله",
      "ركب يوسف الدراجة",
      "نظف سامي الغرفة",
      "قرأ فهد الرواية",
      "طهى محمد الطعام",
      "حملت نورة الأكياس",
      "زار أحمد عائلته",
      "رقصت سارة في الحفل",
      "قرأ سليم الكتاب",
      "كتب يوسف التقرير",
      "شربت ليلى العصير",
      "زار فهد المدينة",
      "نظف علي المكتب",
      "شربت نجلاء الشاي",
      "نظف سليم المكتب",
      "كتب عادل التقرير",
      "قرأت يوسف المقال",
      "زار فهد مدينة الألعاب",
    ];
  }

  @override
  List<String> get words {
    return const [
      "يتخلى",
      "تماماً",
      "يقبل",
      "حادث",
      "يرافق",
      "اتفاق",
      "يشتري",
      "ممثل",
      "عمل",
      "يحب",
      "عنوان",
      "مسألة",
      "وكيل",
      "يعمل",
      "يتحسر",
      "مساعدة",
      "يساعد",
      "في مكان آخر",
      "هكذا",
      "هواء",
      "ألو",
      "إذن",
      "يأخذ",
      "صديق",
      "حب",
      "عاشق",
      "يمرح",
      "سنة",
      "قديم",
      "ملاك",
      "حيوان",
      "عيد ميلاد",
      "شقة",
      "ينتمي",
      "مكالمة",
      "يتصل",
      "يأتي",
      "يتعلم",
      "يقترب",
      "يقدر",
      "بعد",
      "شجرة",
      "مال",
      "سلاح",
      "جيش",
      "ينظم",
      "يصل",
      "يوقف",
      "فن",
      "يجلس",
      "كافٍ",
      "يؤمن",
      "يهاجم",
      "ينتظر",
      "اهتمام",
      "يمسك",
      "إلى",
      "لا أحد",
      "اليوم",
      "أيضاً",
      "بقدر",
      "حول",
      "آخر",
      "آخرون",
      "تقدم",
      "يواصل",
      "أمام",
      "مع",
      "مستقبل",
      "طائرة",
      "رأي",
      "محامي",
      "استحمام",
      "كرة",
      "فرقة",
      "بنك",
      "بار",
      "منخفض",
      "قارب",
      "يخفق",
      "جميل",
      "كثير",
      "جمال",
      "حاجة",
      "قريباً",
      "تذكرة",
      "غريب",
      "بيرة",
      "نكتة",
      "أبيض",
      "يجرح",
      "أزرق",
      "يشرب",
      "خشب",
      "قنبلة",
      "جيد",
      "سعادة",
      "مرحبا",
      "مساء",
      "حافة",
      "فم",
      "يتحرك",
      "طرف",
      "علبة",
      "ذراع",
      "صوت",
      "يحترق",
      "مكتب",
      "هدف",
      "طفل",
      "يخفي",
      "هدية",
      "قهوة",
      "هدوء",
      "يهدئ",
      "رفيق",
      "معسكر",
      "قادر",
      "قائد",
      "لأن",
      "خريطة",
      "حالة",
      "يكسر",
      "سبب",
      "هذا",
      "ذلك",
      "تلك",
      "مؤكد",
      "هؤلاء",
      "يتوقف",
      "كل واحد",
      "غرفة",
      "فرصة",
      "يغير",
      "أغنية",
      "يغني",
      "كل",
      "يحمل",
      "قطة",
      "ساخن",
      "حذاء",
      "رئيس",
      "طريق",
      "عزيز",
      "يبحث",
      "حصان",
      "شعر",
      "عند",
      "كلب",
      "يختار",
      "اختيار",
      "سماء",
      "سجائر",
      "خمسة",
      "واضح",
      "صف",
      "عميل",
      "نادي",
      "مفتاح",
      "زاوية",
      "عقيد",
      "غضب",
      "قتال",
      "كم",
      "مثل",
      "يبدأ",
      "كيف",
      "شركة",
      "يفهم",
      "مفهوم",
      "حساب",
      "يحسب",
      "يقدّر",
      "ثقة",
      "يعرف",
      "هراء",
      "نصيحة",
      "يبني",
      "اتصال",
      "راضٍ",
      "ضد",
      "تحكم",
      "جسم",
      "يأوي",
      "لون",
      "ضربة",
      "يقطع",
      "فناء",
      "شجاعة",
      "مستمر",
      "يجري",
      "دورة",
      "سباق",
      "ابن عم",
      "يغطي",
      "يكلف",
      "يخاف",
      "يموت",
      "يصرخ",
      "جريمة",
      "يعتقد",
      "يخلق",
      "مطبخ",
      "جانب",
      "قلب",
      "أولاً",
      "سيدة",
      "خطر",
      "خطير",
      "يرقص",
      "واقف",
      "داخل",
      "خارج",
      "غداً",
      "طلب",
      "يسأل",
      "سن",
      "منذ",
      "أخيراً",
      "خلف",
      "ينزل",
      "فوق",
      "اثنان",
      "يصبح",
      "يخمن",
      "يجب",
      "شيطان",
      "إله",
      "صعب",
      "مختلف",
      "أحد",
      "مدير",
      "يدير",
      "يناقش",
      "يختفي",
      "عشر",
      "طبيب",
      "إصبع",
      "دولار",
      "خسارة",
      "يعطي",
      "من",
      "ينام",
      "ظهر",
      "ملف",
      "ببطء",
      "ألم",
      "شك",
      "يشتبه",
      "لطيف",
      "صحيح",
      "طريف",
      "يستمر",
      "بداية",
      "يقرر",
      "قرار",
      "يكتشف",
      "يدافع",
      "يحرر",
      "بالفعل",
      "رحيل",
      "يستعجل",
      "يزعج",
      "يرغب",
      "يعتذر",
      "آسف",
      "يكره",
      "يدمر",
      "عشاء",
      "ماء",
      "تأثير",
      "أوه",
      "هن",
      "يمنع",
      "مرة أخرى",
      "جحيم",
      "يهرب",
      "يشرك",
      "عدو",
      "ملل",
      "معاً",
      "ثم",
      "يسمع",
      "كامل",
      "بين",
      "يدخل",
      "رغبة",
      "يرسل",
      "خطأ",
      "أمل",
      "عقل",
      "نوع",
      "يأمل",
      "يجرّب",
      "هو",
      "هل",
      "هم",
      "دقيق",
      "بالضبط",
      "ممتاز",
      "مثال",
      "يعيش",
      "يشرح",
      "تجربة",
      "وجه",
      "سهل",
      "جوع",
      "فعل",
      "عائلة",
      "تعب",
      "كاذب",
      "طريقة",
      "امرأة",
      "نافذة",
      "مزرعة",
      "إغلاق",
      "نار",
      "فخور",
      "خيط",
      "يسرق",
      "فتاة",
      "فيلم",
      "ابن",
      "نهاية",
      "ينهي",
      "زهرة",
      "شرطي",
      "مرة",
      "أساس",
      "قوة",
      "يُجبر",
      "شكل",
      "قوي",
      "مجنون",
      "يضرب",
      "برد",
      "أخ",
      "يدخن",
      "عيد",
      "يفوز",
      "صغير",
      "يحرس",
      "يحافظ",
      "شاب",
      "صبي",
      "يسار",
      "ناس",
      "ثلج",
      "كبير",
      "جدة",
      "ينمو",
      "جدي",
      "عظيم",
      "كبيرة",
      "تقدير",
      "حرب",
      "رائع",
      "عام",
      "عالي",
      "أين",
      "ساعة",
      "سعيد",
      "أمس",
      "تاريخ",
      "رجل",
      "شرف",
      "خجل",
      "فظيع",
      "إنسان",
      "يا",
      "بطل",
      "مستشفى",
      "فندق",
      "هنا",
      "أحمق",
      "فكرة",
      "يتجاهل",
      "صورة",
      "يتخيل",
      "مهم",
      "يستورد",
      "مستحيل",
      "انطباع",
      "مذهل",
      "يقلق",
      "مفتش",
      "يثبت",
      "فوري",
      "غير مفيد",
      "يدعو",
      "أبداً",
      "ساق",
      "يضع",
      "لعب",
      "فرح",
      "يوم",
      "صحيفة",
      "قاضي",
      "يخادع",
      "يجعل",
      "يبقى",
      "يترك",
      "لغة",
      "التي",
      "يغسل",
      "الذي",
      "رسالة",
      "لهم",
      "يرفع",
      "حرية",
      "حر",
      "مكان",
      "ملازم",
      "خط",
      "يقرأ",
      "قائمة",
      "سرير",
      "كتاب",
      "قانون",
      "بعيد",
      "طويل",
      "طويل الأمد",
      "نور",
      "هناك",
      "في الداخل",
      "أعلى",
      "آلة",
      "آنسة",
      "يد",
      "الآن",
      "يحتفظ",
      "منزل",
      "سيء",
      "مريض",
      "مرض",
      "أمي",
      "يأكل",
      "يفتقد",
      "يمشي",
      "سوق",
      "زوج",
      "زواج",
      "يتزوج",
      "صباح",
      "معلم",
      "أفضل",
      "يؤدي",
      "يكذب",
      "بحر",
      "شكراً",
      "وسط",
      "مليون",
      "دقيقة",
      "مهمة",
      "أنا",
      "بنفسه",
      "أقل",
      "شهر",
      "نصف",
      "لحظة",
      "عالم",
      "سيد",
      "يصعد",
      "يظهر",
      "يسخر",
      "قطعة",
      "موت",
      "كلمة",
      "وسيلة",
      "جدار",
      "موسيقى",
      "أم",
      "يستحق",
      "نفسه",
      "يولد",
      "تسعة",
      "أنف",
      "لا",
      "أسود",
      "اسم",
      "طبيعي",
      "نحن",
      "خاصتنا",
      "جديد",
      "جديدة",
      "ليل",
      "رقم",
      "يجبر",
      "يحصل على",
      "يشغل",
      "يقدم",
      "طائر",
      "حسناً",
      "عم",
      "ذهب",
      "ترتيب",
      "أذن",
      "يجرؤ",
      "أو",
      "نعم",
      "فتح",
      "خبز",
      "سلام",
      "أب",
      "ورقة",
      "عذر",
      "يغفر",
      "نفس",
      "والد",
      "أحياناً",
      "يتراهن",
      "يتحدث",
      "يشارك",
      "جزء",
      "يغادر",
      "في كل مكان",
      "يمر",
      "ماضي",
      "فقير",
      "يدفع",
      "بلد",
      "جلد",
      "عقوبة",
      "أثناء",
      "يفكر",
      "يخسر",
      "يسمح",
      "شخص",
      "قليل",
      "شعب",
      "خوف",
      "ربما",
      "قدم",
      "حجر",
      "أسوأ",
      "شفقة",
      "يرضي",
      "يمزح",
      "متعة",
      "خطة",
      "ممتلئ",
      "يبكي",
      "يمطر",
      "عدة",
      "بدلاً",
      "نقطة",
      "سمك",
      "شرطة",
      "باب",
      "ممكن",
      "منصب",
      "لماذا",
      "يتابع",
      "ومع ذلك",
      "أول",
      "تقريباً",
      "دليل",
      "يصلح",
      "أمير",
      "سجن",
      "سعر",
      "على الأرجح",
      "مشكلة",
      "مقبل",
      "أستاذ",
      "يستفيد",
      "مشروع",
      "يعد",
      "موضوع",
      "يقترح",
      "نظيف",
      "يحمى",
      "قريب",
      "يفضل",
      "موجود",
      "يحذر",
      "يتوقع",
      "جاهز",
      "متى",
      "حي",
      "أربعة",
      "أي",
      "شخص ما",
      "بعض",
      "سؤال",
      "ماذا",
      "يحكي",
      "راديو",
      "يعيد",
      "يذكر",
      "تقرير",
      "يخطئ",
      "يسعد",
      "يتلقى",
      "بحث",
      "يبدأ من جديد",
      "يرفض",
      "يشعر",
      "يحترم",
      "يتنفس",
      "يشبه",
      "باقٍ",
      "تأخير",
      "يسحب",
      "عودة",
      "يعود",
      "يرى مرة أخرى",
      "غني",
      "لا شيء",
      "يضحك",
      "يخاطر",
      "فستان",
      "ملك",
      "أحمر",
      "شارع",
      "قاعدة",
      "ينجز",
      "يسترجع",
      "يجيب",
      "يحقق",
      "استيقظ",
      "حلم",
      "يحلم",
      "دور",
      "يفعل",
      "خاص",
      "جيب",
      "أكياس",
    ];
  }
}

// It's ok to have long strings in that file
// ignore_for_file: lines_longer_than_80_chars

import 'package:imitatio/src/datasets/models/text.dart';

class DeTextData extends TextDataset {
  @override
  List<String> alphabet({required bool isLowerCase}) {
    return switch (isLowerCase) {
      true => const [
        "a",
        "ä",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "j",
        "k",
        "l",
        "m",
        "n",
        "o",
        "ö",
        "p",
        "q",
        "r",
        "s",
        "ß",
        "t",
        "u",
        "ü",
        "v",
        "w",
        "x",
        "y",
        "z",
      ],
      false => const [
        "A",
        "Ä",
        "B",
        "C",
        "D",
        "E",
        "F",
        "G",
        "H",
        "I",
        "J",
        "K",
        "L",
        "M",
        "N",
        "O",
        "Ö",
        "P",
        "Q",
        "R",
        "S",
        "T",
        "U",
        "Ü",
        "V",
        "W",
        "X",
        "Y",
        "Z",
      ],
    };
  }

  @override
  List<String> get answers {
    return const ["Ja", "Nein", "Vielleicht"];
  }

  @override
  List<String> get colors {
    return const [
      "Beige",
      "Blau",
      "Braun",
      "Dunkelblau",
      "Gelb",
      "Gold",
      "Grau",
      "Grün",
      "Orange",
      "Rosa",
      "Rot",
      "Schwarz",
      "Silber",
      "Türkis",
      "Violett",
      "Weiß",
    ];
  }

  @override
  List<String> get levels {
    return const [
      "extrem",
      "hoch",
      "kritisch",
      "mäßig",
      "niedrig",
      "sehr hoch",
    ];
  }

  @override
  List<String> get quotes {
    return const [
      "Aller Anfang ist schwer.",
      "Anfangen ist leicht, Beharren eine Kunst.",
      "Aus Schaden wird man klug.",
      "Das Billige ist immer das Teuerste.",
      "Der Hunger kommt beim Essen.",
      "Des Teufels liebstes Möbelstück ist die lange Bank.",
      "Dienst ist Dienst und Schnaps ist Schnaps.",
      "Du siehst den Wald vor lauter Bäumen nicht.",
      "Erst denken, dann handeln.",
      "Glück ist: zu begreifen, wie alles zusammenhängt.",
      "Krummes Holz gibt auch gerades Feuer.",
      "Kümmere Dich nicht um ungelegte Eier.",
      "Man muss die Dinge nehmen, wie sie kommen.",
      "Man muss die Tatsachen kennen, bevor man sie verdrehen kann.",
      "Morgenstund hat Gold im Mund.",
      "Selbst ist der Mann. Selbst ist die Frau.",
      "Taten sagen mehr als Worte.",
      "Wer A sagt, muss auch B sagen.",
      "Wer nach dem Haar sucht, dem entgeht die Suppe.",
      "Wer rastet, der rostet.",
      "Wer zwei Hasen auf einmal jagt, bekommt keinen.",
      "Übung macht den Meister.",
    ];
  }

  @override
  List<String> get texts {
    return const [
      "Als Gregor Samsa eines Morgens aus unruhigen Träumen erwachte, fand er sich in seinem Bett zu einem ungeheueren Ungeziefer verwandelt.",
      "Und es war ihnen wie eine Bestätigung ihrer neuen Träume und guten Absichten, als am Ziele ihrer Fahrt die Tochter als erste sich erhob und ihren jungen Körper dehnte.",
      "Es ist ein eigentümlicher Apparat, sagte der Offizier zu dem Forschungsreisenden und überblickte mit einem gewissermaßen bewundernden Blick den.",
      "Eine wunderbare Heiterkeit hat meine ganze Seele eingenommen, gleich den süßen Frühlingsmorgen, die ich mit ganzem Herzen genieße.",
      "Ich bin allein und freue mich meines Lebens in dieser Gegend, die für solche Seelen geschaffen ist wie die meine.",
      "Ich bin so glücklich, mein Bester, so ganz in dem Gefühle von ruhigem Dasein versunken, daß meine Kunst darunter leidet.",
      "Ich könnte jetzt nicht zeichnen, nicht einen Strich, und bin nie ein größerer Maler gewesen als in diesen Augenblicken.",
      "Wenn das liebe Tal um mich dampft, und die hohe Sonne an der Oberfläche der undurchdringlichen Finsternis meines Waldes ruht, und nur einzelne.",
      "Weit hinten, hinter den Wortbergen, fern der Länder Vokalien und Konsonantien leben die Blindtexte.",
      "Abgeschieden wohnen sie in Buchstabhausen an der Küste des Semantik, eines großen Sprachozeans.",
      "Ein kleines Bächlein namens Duden fließt durch ihren Ort und versorgt sie mit den nötigen Regelialien.",
      "Es ist ein paradiesmatisches Land, in dem einem gebratene Satzteile in den Mund fliegen.",
      "Nicht einmal von der allmächtigen Interpunktion werden die Blindtexte beherrscht – ein geradezu unorthographisches Leben.",
      "Eines Tages aber beschloß eine kleine Zeile Blindtext, ihr Name war Lorem Ipsum, hinaus zu gehen in die weite Grammatik.",
      "Der große Oxmox riet ihr davon ab, da es dort wimmele von bösen Kommata, wilden Fragezeichen und hinterhältigen Semikoli, doch das Blindtextchen ließ sich nicht beirren.",
      "Es packte seine sieben Versalien, schob sich sein Initial in den Gürtel und machte sich auf den Weg.",
      "Als es die ersten Hügel des Kursivgebirges erklommen hatte, warf es einen letzten Blick zurück auf die Skyline seiner Heimatstadt Buchstabhausen, die Headline von Alphabetdorf und die Subline seiner eigenen Straße, der Zeilengasse.",
      "Wehmütig lief ihm eine rhetorische Frage über die Wange, dann setzte es seinen Weg fort.",
      "Unterwegs traf es eine Copy.",
      "Die Copy warnte das Blindtextchen, da, wo sie herkäme wäre sie.",
      "Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können.",
      "Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen?",
      "Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht?",
      "Es gibt im Moment in diese Mannschaft, oh, einige Spieler vergessen ihnen Profi was sie sind.",
      "Ich lese nicht sehr viele Zeitungen, aber ich habe gehört viele Situationen.",
      "Erstens: wir haben nicht offensiv gespielt.",
      "Es gibt keine deutsche Mannschaft spielt offensiv und die Name offensiv wie Bayern.",
      "Letzte Spiel hatten wir in Platz drei Spitzen: Elber, Jancka und dann Zickler.",
      "Wir müssen nicht vergessen Zickler.",
      "Zickler ist eine Spitzen mehr, Mehmet eh mehr Basler.",
      "Ist klar diese Wörter, ist möglich verstehen, was ich hab gesagt? Danke.",
      "Offensiv, offensiv ist wie machen wir in Platz.",
      "Zweitens: ich habe erklärt mit diese zwei Spieler: nach Dortmund brauchen vielleicht Halbzeit Pause.",
      "Ich habe auch andere Mannschaften gesehen in Europa nach diese Mittwoch.",
      "Ich habe gesehen auch zwei Tage die Training.",
      "Ein Trainer ist nicht ein Idiot! Ein Trainer sei sehen was passieren in Platz.",
      "In diese Spiel es waren zwei, drei diese Spieler waren schwach wie eine Flasche leer! Haben Sie gesehen Mittwoch, welche Mannschaft hat gespielt Mittwoch?",
      "Hat gespielt Mehmet oder gespielt Basler oder hat gespielt Trapattoni? Diese Spieler beklagen mehr als sie spielen! Wissen Sie, warum die Italienmannschaften kaufen nicht diese Spieler? Weil wir haben gesehen viele Male solche Spiel!",
      "Haben gesagt sind nicht Spieler für die italienisch Meisters! Strunz! Strunz ist zwei Jahre hier, hat gespielt 10 Spiele, ist immer verletzt! Was erlauben Strunz? Letzte Jahre Meister Geworden mit Hamann, eh, Nerlinger.",
      "Diese Spieler waren Spieler!",
      "Waren Meister geworden! Ist immer verletzt! Hat gespielt 25 Spiele in diese Mannschaft in diese Verein.",
      "Muß respektieren die andere Kollegen! haben viel nette kollegen! Stellen Sie die Kollegen die Frage! Haben keine Mut an Worten, aber ich weiß, was denken über diese Spieler.",
      "Mussen zeigen jetzt, ich will, Samstag, diese Spieler müssen zeigen mich, seine Fans, müssen alleine die Spiel gewinnen.",
      "Muß allein.",
      "Er hörte leise Schritte hinter sich.",
      "Das bedeutete nichts Gutes.",
      "Wer würde ihm schon folgen, spät in der Nacht und dazu noch in dieser engen Gasse mitten im übel beleumundeten Hafenviertel?",
      "Gerade jetzt, wo er das Ding seines Lebens gedreht hatte und mit der Beute verschwinden wollte!",
      "Hatte einer seiner zahllosen Kollegen dieselbe Idee gehabt, ihn beobachtet und abgewartet, um ihn nun um die Früchte seiner Arbeit zu erleichtern?",
      "Oder gehörten die Schritte hinter ihm zu einem der unzähligen Gesetzeshüter dieser Stadt, und die stählerne Acht um seine Handgelenke würde gleich zuschnappen? Er konnte die Aufforderung stehen zu bleiben schon hören.",
      "Gehetzt sah er sich um.",
      "Plötzlich erblickte er den schmalen Durchgang.",
      "Blitzartig drehte er sich nach rechts und verschwand zwischen den beiden Gebäuden.",
      "Beinahe wäre er dabei über den umgestürzten Mülleimer gefallen, der mitten im Weg lag.",
      "Er versuchte, sich in der Dunkelheit seinen Weg zu ertasten und erstarrte: Anscheinend gab es keinen anderen Ausweg aus diesem kleinen Hof als den Durchgang, durch den er gekommen war.",
      "Die Schritte wurden lauter und lauter, er sah eine dunkle Gestalt um die Ecke biegen.",
      "Fieberhaft irrten seine Augen durch die nächtliche Dunkelheit und suchten einen Ausweg.",
      "War jetzt wirklich alles vorbei, waren alle Mühe und alle Vorbereitungen umsonst?",
      "Er presste sich ganz eng an die Wand hinter ihm und hoffte, der Verfolger würde ihn übersehen, als plötzlich neben ihm mit kaum wahrnehmbarem Quietschen eine Tür im nächtlichen Wind hin und her schwang.",
      "Könnte dieses der flehentlich herbeigesehnte Ausweg aus seinem Dilemma sein? Langsam bewegte er sich auf die offene Tür zu, immer dicht an die Mauer gepresst.",
      "Würde diese Tür seine Rettung werden? Er hörte leise Schritte hinter sich.",
      "Das bedeutete nichts Gutes.",
      "Wer würde ihm schon folgen, spät in der Nacht und dazu noch in dieser engen Gasse mitten im übel beleumundeten Hafenviertel? Gerade jetzt, wo er das Ding seines Lebens gedreht hatte und mit der Beute verschwinden wollte!",
      "Hatte einer seiner zahllosen Kollegen dieselbe Idee gehabt, ihn beobachtet und abgewartet, um ihn nun um die Früchte seiner Arbeit zu erleichtern?",
      "Oder gehörten die Schritte hinter ihm zu einem der unzähligen Gesetzeshüter dieser Stadt, und die stählerne Acht um seine Handgelenke würde gleich zuschnappen? Er konnte die Aufforderung stehen zu bleiben schon hören.",
      "Gehetzt sah er sich um.",
      "Plötzlich erblickte er den schmalen Durchgang.",
      "Blitzartig drehte er sich nach rechts und verschwand zwischen den beiden Gebäuden.",
      "Beinahe wäre er dabei über den umgestürzten Mülleimer gefallen, der mitten im Weg lag.",
      "Er versuchte, sich in der Dunkelheit seinen Weg zu ertasten und erstarrte: Anscheinend gab es keinen anderen Ausweg aus diesem kleinen Hof als den Durchgang, durch den er gekommen war.",
      "Die Schritte wurden lauter und lauter, er sah eine dunkle Gestalt um die Ecke biegen.",
      "Fieberhaft irrten seine Augen durch die nächtliche Dunkelheit und suchten einen Ausweg.",
      "War jetzt wirklich alles vorbei, waren alle Mühe und alle Vorbereitungen umsonst?",
      "Er presste sich ganz eng an die Wand hinter ihm und hoffte, der Verfolger würde ihn übersehen, als plötzlich neben ihm mit kaum wahrnehmbarem Quietschen eine Tür im nächtlichen Wind hin und her schwang.",
      "Könnte dieses der flehentlich herbeigesehnte Ausweg aus seinem Dilemma sein?",
      "Langsam bewegte er sich auf die offene Tür zu, immer dicht an die Mauer gepresst.",
      "Würde diese Tür seine Rettung werden? Er hörte leise Schritte hinter sich.",
      "Das bedeutete nichts Gutes.",
      "Wer würde ihm schon folgen, spät in der Nacht und dazu noch in dieser engen Gasse mitten im übel beleumundeten Hafenviertel?",
      "Gerade jetzt, wo er das Ding seines Lebens gedreht hatte und mit der Beute verschwinden wollte! Hatte einer seiner zahllosen Kollegen dieselbe Idee gehabt, ihn beobachtet und abgewartet, um ihn nun um die Früchte seiner Arbeit zu erleichtern?",
      "Oder gehörten die Schritte hinter ihm zu einem der unzähligen Gesetzeshüter dieser Stadt, und die stählerne Acht um seine Handgelenke würde gleich zuschnappen? Er konnte die Aufforderung stehen zu bleiben schon hören.",
      "Gehetzt sah er sich um.",
      "Plötzlich erblickte er den schmalen Durchgang.",
      "Blitzartig drehte er sich nach rechts und verschwand zwischen den beiden Gebäuden.",
      "Beinahe wäre er dabei über den umgestürzten Mülleimer gefallen, der mitten im Weg lag.",
      "Er versuchte, sich in der Dunkelheit seinen Weg zu ertasten und erstarrte: Anscheinend gab es keinen anderen Ausweg.",
      "Überall dieselbe alte Leier.",
      "Das Layout ist fertig, der Text lässt auf sich warten.",
      "Damit das Layout nun nicht nackt im Raume steht und sich klein und leer vorkommt, springe ich ein: der Blindtext.",
      "Genau zu diesem Zwecke erschaffen, immer im Schatten meines großen Bruders »Lorem Ipsum«, freue ich mich jedes Mal, wenn Sie ein paar Zeilen lesen.",
      "Denn esse est percipi - Sein ist wahrgenommen werden.",
      "Und weil Sie nun schon die Güte haben, mich ein paar weitere Sätze lang zu begleiten, möchte ich diese Gelegenheit nutzen, Ihnen nicht nur als Lückenfüller zu dienen, sondern auf etwas hinzuweisen, das es ebenso verdient wahrgenommen zu werden: Webstandards nämlich.",
      "Sehen Sie, Webstandards sind das Regelwerk, auf dem Webseiten aufbauen.",
      "So gibt es Regeln für HTML, CSS, JavaScript oder auch XML; Worte, die Sie vielleicht schon einmal von Ihrem Entwickler gehört haben.",
      "Diese Standards sorgen dafür, dass alle Beteiligten aus einer Webseite den größten Nutzen ziehen.",
      "Im Gegensatz zu früheren Webseiten müssen wir zum Beispiel nicht mehr zwei verschiedene Webseiten für den Internet Explorer und einen anderen Browser programmieren.",
      "Es reicht eine Seite, die - richtig angelegt - sowohl auf verschiedenen Browsern im Netz funktioniert, aber ebenso gut für den Ausdruck oder die Darstellung auf einem Handy geeignet ist.",
      "Wohlgemerkt: Eine Seite für alle Formate.",
      "Was für eine Erleichterung.",
      "Standards sparen Zeit bei den Entwicklungskosten und sorgen dafür, dass sich Webseiten später leichter pflegen lassen.",
      "Natürlich nur dann, wenn sich alle an diese Standards halten.",
      "Das gilt für Browser wie Firefox, Opera, Safari und den Internet Explorer ebenso wie für die Darstellung in Handys.",
      "Und was können Sie für Standards tun? Fordern Sie von Ihren Designern und Programmieren einfach standardkonforme Webseiten.",
      "Ihr Budget wird es Ihnen auf Dauer danken.",
      "Ebenso möchte ich Ihnen dafür danken, dass Sie mich bin zum Ende gelesen haben.",
      "Meine Mission ist erfüllt.",
      "Ich werde hier noch die Stellung halten, bis der geplante Text eintrifft.",
      "Ich wünsche Ihnen noch einen schönen Tag.",
      "Und arbeiten Sie nicht zuviel! Überall dieselbe alte Leier.",
      "Das Layout ist fertig, der Text lässt auf sich warten.",
      "Damit das Layout nun nicht nackt im Raume steht und sich klein und leer vorkommt, springe ich ein: der Blindtext.",
      "Genau zu diesem Zwecke erschaffen, immer im Schatten meines großen Bruders »Lorem Ipsum«, freue ich mich jedes Mal, wenn Sie ein paar Zeilen lesen.",
      "Denn esse est percipi - Sein ist wahrgenommen werden.",
      "Und weil Sie nun schon die Güte haben, mich ein paar weitere Sätze lang zu begleiten, möchte ich diese Gelegenheit nutzen, Ihnen nicht nur als Lückenfüller zu dienen, sondern auf etwas hinzuweisen, das es ebenso verdient wahrgenommen zu werden: Webstandards nämlich.",
      "Sehen Sie, Webstandards sind das Regelwerk, auf dem Webseiten aufbauen.",
      "So gibt es Regeln für HTML, CSS, JavaScript oder auch XML; Worte, die Sie vielleicht schon einmal von Ihrem Entwickler gehört haben.",
      "Diese Standards sorgen dafür, dass alle Beteiligten aus einer Webseite den größten Nutzen ziehen.",
    ];
  }

  @override
  List<String> get words {
    return const [
      "ab",
      "abend",
      "aber",
      "acht",
      "alle",
      "allein",
      "allen",
      "aller",
      "allerdings",
      "alles",
      "als",
      "also",
      "alt",
      "alte",
      "alten",
      "am",
      "amerikanische",
      "amerikanischen",
      "andere",
      "anderen",
      "anderer",
      "anderes",
      "anders",
      "angesichts",
      "arbeiten",
      "auch",
      "auf",
      "aufgrund",
      "aus",
      "außerdem",
      "bald",
      "bedeutet",
      "begann",
      "beginnt",
      "bei",
      "beide",
      "beiden",
      "beim",
      "beispielsweise",
      "bekannt",
      "bekommen",
      "bereit",
      "bereits",
      "berichtet",
      "berichtete",
      "besonders",
      "besser",
      "besteht",
      "besten",
      "betonte",
      "bevor",
      "bezeichnet",
      "bieten",
      "bietet",
      "bin",
      "bis",
      "bisher",
      "bislang",
      "bleiben",
      "bleibt",
      "blieb",
      "braucht",
      "bringen",
      "bringt",
      "bzw",
      "coupon",
      "da",
      "dabei",
      "dadurch",
      "dafür",
      "dagegen",
      "daher",
      "damals",
      "damit",
      "danach",
      "dann",
      "daran",
      "darauf",
      "darf",
      "darin",
      "darum",
      "darunter",
      "darüber",
      "das",
      "dass",
      "date",
      "davon",
      "dazu",
      "daß",
      "dem",
      "den",
      "denen",
      "denn",
      "dennoch",
      "der",
      "deren",
      "derzeit",
      "des",
      "deshalb",
      "dessen",
      "deutlich",
      "deutsche",
      "deutschen",
      "die",
      "dies",
      "diese",
      "diesem",
      "diesen",
      "dieser",
      "dieses",
      "direkt",
      "dividende",
      "division",
      "doch",
      "dollar",
      "donner",
      "dort",
      "dossier",
      "drei",
      "dritten",
      "du",
      "durch",
      "durchaus",
      "dürfen",
      "dürfte",
      "eben",
      "ebenfalls",
      "ebenso",
      "ehemalige",
      "ehemaligen",
      "eher",
      "eigene",
      "eigenen",
      "eigentlich",
      "ein",
      "eine",
      "einem",
      "einen",
      "einer",
      "eines",
      "einfach",
      "einige",
      "einigen",
      "einmal",
      "einst",
      "einzelnen",
      "einzige",
      "elle",
      "endlich",
      "entscheiden",
      "entschieden",
      "entwickelt",
      "er",
      "erhalten",
      "erklärt",
      "erklärte",
      "erneut",
      "erreichen",
      "erreicht",
      "erst",
      "erste",
      "ersten",
      "erstmals",
      "erwarten",
      "erwartet",
      "erzählt",
      "es",
      "etc",
      "etwa",
      "etwas",
      "eu",
      "euro",
      "europäischen",
      "faible",
      "fast",
      "fax",
      "fest",
      "filiale",
      "film",
      "finden",
      "findet",
      "fond",
      "fonds",
      "fordert",
      "forderte",
      "französischen",
      "frei",
      "freilich",
      "früher",
      "früheren",
      "fut",
      "fällt",
      "führen",
      "führt",
      "fünf",
      "für",
      "gab",
      "ganz",
      "ganze",
      "ganzen",
      "gar",
      "garantie",
      "gebe",
      "geben",
      "gebracht",
      "gefunden",
      "geführt",
      "gegeben",
      "gegen",
      "gegenüber",
      "gehen",
      "geht",
      "gehören",
      "gehört",
      "gekommen",
      "gelten",
      "gemacht",
      "gemeinsam",
      "genannt",
      "genau",
      "genommen",
      "genug",
      "geplant",
      "geplanten",
      "gerade",
      "gesagt",
      "gesamte",
      "gesamten",
      "gesehen",
      "gesetzt",
      "gestellt",
      "gestern",
      "gestion",
      "gewesen",
      "gewinnen",
      "geworden",
      "gibt",
      "gilt",
      "ging",
      "gleich",
      "gleichen",
      "gleichzeitig",
      "groß",
      "große",
      "großen",
      "großer",
      "größte",
      "größten",
      "gut",
      "gute",
      "guten",
      "habe",
      "haben",
      "halten",
      "handelt",
      "hat",
      "hatte",
      "hatten",
      "haut",
      "haute",
      "heißt",
      "helfen",
      "her",
      "heraus",
      "heures",
      "heute",
      "heutigen",
      "hier",
      "hieß",
      "hin",
      "hinaus",
      "hingegen",
      "hinter",
      "hoch",
      "hohe",
      "hohen",
      "hält",
      "hätte",
      "hätten",
      "häufig",
      "ich",
      "ihm",
      "ihn",
      "ihnen",
      "ihr",
      "ihre",
      "ihrem",
      "ihren",
      "ihrer",
      "ihres",
      "im",
      "immer",
      "immer wieder",
      "immerhin",
      "in",
      "indem",
      "informations",
      "innerhalb",
      "ins",
      "insbesondere",
      "insgesamt",
      "inzwischen",
      "ist",
      "ja",
      "jede",
      "jedem",
      "jeden",
      "jedenfalls",
      "jeder",
      "jedes",
      "jedoch",
      "jetzt",
      "jeweils",
      "junge",
      "jungen",
      "jährlich",
      "kam",
      "kamen",
      "kann",
      "kaum",
      "kein",
      "keine",
      "keinen",
      "keiner",
      "klar",
      "kleine",
      "kleinen",
      "knapp",
      "kommen",
      "kommenden",
      "kommt",
      "konnte",
      "konnten",
      "kurz",
      "könne",
      "können",
      "könnte",
      "könnten",
      "künftig",
      "lang",
      "lange",
      "langen",
      "lassen",
      "laut",
      "leben",
      "lediglich",
      "leicht",
      "letzte",
      "letzten",
      "liegen",
      "liegt",
      "ließ",
      "längst",
      "läuft",
      "läßt",
      "machen",
      "macht",
      "machte",
      "mag",
      "management",
      "marketing",
      "maximum",
      "mehr",
      "mehrere",
      "meine",
      "meint",
      "meinte",
      "meist",
      "meisten",
      "mich",
      "milieu",
      "mit",
      "mittlerweile",
      "mode",
      "moment",
      "muß",
      "mußte",
      "mußten",
      "möchte",
      "möglich",
      "müsse",
      "müssen",
      "müßten",
      "nach",
      "nachdem",
      "nahm",
      "natur",
      "natürlich",
      "neben",
      "nehmen",
      "neu",
      "neue",
      "neuen",
      "neuer",
      "neues",
      "neun",
      "nicht",
      "nicht nur",
      "nichts",
      "nie",
      "niemand",
      "nimmt",
      "niveau",
      "noch",
      "nun",
      "nur",
      "nächsten",
      "nämlich",
      "ob",
      "oben",
      "obwohl",
      "oder",
      "offen",
      "offenbar",
      "oft",
      "ohne",
      "ohnehin",
      "papier",
      "passage",
      "personal",
      "plan",
      "position",
      "presse",
      "pro",
      "rapport",
      "recherche",
      "rechnen",
      "recht",
      "richtig",
      "rund",
      "russischen",
      "sagen",
      "sagt",
      "sagte",
      "sah",
      "schaffen",
      "scheint",
      "schließlich",
      "schnell",
      "schon",
      "schwer",
      "sechs",
      "sehen",
      "sehr",
      "sei",
      "seien",
      "sein",
      "seine",
      "seinem",
      "seinen",
      "seiner",
      "seines",
      "seit",
      "selbst",
      "service",
      "services",
      "setzen",
      "setzt",
      "sich",
      "sicher",
      "sie",
      "sieben",
      "sieht",
      "sind",
      "situation",
      "sofort",
      "sogar",
      "sogenannten",
      "solche",
      "solchen",
      "soll",
      "solle",
      "sollen",
      "sollte",
      "sollten",
      "sondern",
      "sonst",
      "sowie",
      "sowohl",
      "spielen",
      "spielt",
      "sprach",
      "sprechen",
      "spricht",
      "später",
      "stand",
      "stark",
      "statt",
      "stehen",
      "steht",
      "stellen",
      "stellt",
      "stellte",
      "stets",
      "style",
      "stärker",
      "suchen",
      "tatsächlich",
      "technik",
      "technologie",
      "teilte",
      "terrain",
      "texte",
      "total",
      "tragen",
      "trotz",
      "um",
      "und",
      "uns",
      "unsere",
      "unserer",
      "unter",
      "unter anderem",
      "vergangenen",
      "verhindern",
      "verkauft",
      "verlassen",
      "verletzt",
      "verloren",
      "vers",
      "verschiedenen",
      "version",
      "versucht",
      "verwendet",
      "viel",
      "viele",
      "vielen",
      "vielleicht",
      "vier",
      "vom",
      "von",
      "vor",
      "vor allem",
      "vorbei",
      "völlig",
      "war",
      "waren",
      "warum",
      "was",
      "weder",
      "wegen",
      "weil",
      "weit",
      "weiter",
      "weitere",
      "weiteren",
      "weiterhin",
      "weiß",
      "welche",
      "weltweit",
      "wenig",
      "wenige",
      "wenigen",
      "weniger",
      "wenn",
      "wer",
      "werde",
      "werden",
      "wichtig",
      "wie",
      "wieder",
      "will",
      "wir",
      "wird",
      "wirklich",
      "wissen",
      "wo",
      "wohl",
      "wolle",
      "wollen",
      "wollte",
      "wollten",
      "worden",
      "wurde",
      "wurden",
      "wählen",
      "während",
      "wäre",
      "wären",
      "würde",
      "würden",
      "z.B.",
      "zehn",
      "zeigen",
      "zeigt",
      "zeigte",
      "ziehen",
      "zu",
      "zudem",
      "zufolge",
      "zugleich",
      "zuletzt",
      "zum",
      "zum Beispiel",
      "zumindest",
      "zunächst",
      "zur",
      "zurück",
      "zusammen",
      "zuvor",
      "zwar",
      "zwei",
      "zweite",
      "zweiten",
      "zwischen",
      "zwölf",
      "Öffentlichkeit",
      "Über",
      "ändern",
      "öffentlichen",
      "über",
      "überhaupt",
      "übernehmen",
    ];
  }
}

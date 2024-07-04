import 'package:imitatio/src/enums.dart';

class UkraineSpecificData {
  List<String> patronymics({required Gender gender}) {
    return switch (gender) {
      Gender.female => const [
          "Ааронівна",
          "Абрамівна",
          "Августівна",
          "Овдіївна",
          "Аверьяновна",
          "Адамівна",
          "Адріанівна",
          "Аксёновна",
          "Олександрівна",
          "Олексіївна",
          "Анатоліївна",
          "Андріївна",
          "Анисимовна",
          "Антипівна",
          "Антонівна",
          "Онуфріївна",
          "Арсеновна",
          "Арсеньевна",
          "Артемівна",
          "Артемьевна",
          "Артурівна",
          "Архипівна",
          "Опанасівна",
          "Бенедіктовна",
          "Богданівна",
          "Боріславна",
          "Бориславівна",
          "Борисівна",
          "Броніславівна",
          "Вадимівна",
          "Валентинівна",
          "Валериановна",
          "Валеріївна",
          "Валерьяновна",
          "Василівна",
          "Венедиктівна",
          "Веніамінівна",
          "Викентьевна",
          "Вікторівна",
          "Віленівна",
          "Вілоровна",
          "Віталіївна",
          "Владиленівна",
          "Володимирівна",
          "Владиславівна",
          "Владленівна",
          "Власівна",
          "Всеволодівна",
          "В'ячеславівна",
          "Гаврилівна",
          "Гаврилівна",
          "Геннадіївна",
          "Геннадіївна",
          "Георгіївна",
          "Герасимівна",
          "Германівна",
          "Гертрудовна",
          "Глебовна",
          "Гордіївна",
          "Григорівна",
          "Гуріївна",
          "Давидівна",
          "Давидівна",
          "Данилівна",
          "Данилівна",
          "Демидівна",
          "Дем'янівна",
          "Денисівна",
          "Дмитрівна",
          "Дорофіївна",
          "Євсіївна",
          "Евстігнеевна",
          "Єгорівна",
          "Елізаровна",
          "Єлисеївна",
          "Еремеевна",
          "Ерміловна",
          "Єрмолаївна",
          "Єрофіївна",
          "Юхимівна",
          "Ефімьевна",
          "Єфремівна",
          "Ефстафьевна",
          "Жанівна",
          "Жоресовна",
          "Захарівна",
          "Зіновіївна",
          "Гнатівна",
          "Гнатівна",
          "Ігорівна",
          "Ізмаіловна",
          "Ізотовна",
          "Іларіоновна",
          "Ільясовна",
          "Йосипівна",
          "Йосипівна",
          "Ісідоровна",
          "Матвіївна",
          "Михайлівна",
          "Петрівна",
          "Семенівна",
          "Сидорівна",
          "Тарасівна",
          "Теймуразовна",
          "Терентіївна",
          "Тимуровна",
          "Тихонівна",
          "Трифонівна",
          "Трохимівна",
          "Устинівна",
          "Фадеївна",
          "Федорівна",
          "Федосіївна",
          "Федосьевна",
          "Федотівна",
          "Феліксівна",
          "Феодосьевна",
          "Феоктістовна",
          "Феофанівна",
          "Філатовна",
          "Филимонівна",
          "Пилипівна",
          "Фроловна",
          "Харитонівна",
          "Харламовна",
          "Харламповна",
          "Харлампьевна",
          "Чеславовна",
          "Едгардовна",
          "Едгаровна",
          "Едуардівна",
          "Юліанівна",
          "Юліївна",
          "Яківна",
          "Якубівна",
          "Ярославівна",
        ],
      Gender.male => const [
          "Ааронович",
          "Абрамович",
          "Августович",
          "Авдеевич",
          "Аверьяновіч",
          "Адамович",
          "Адріанович",
          "Олександрович",
          "Олексійович",
          "Анатолійович",
          "Андрійович",
          "Онисимович",
          "Антипович",
          "Антонович",
          "Онуфрійович",
          "Арсенович",
          "Арсенійович",
          "Артемович",
          "Артемович",
          "Артурович",
          "Архипович",
          "Опанасович",
          "Бенедиктович",
          "Богданович",
          "Бориславич",
          "Бориславович",
          "Борисович",
          "Броніславович",
          "Вадимович",
          "Валентинович",
          "Валеріанович",
          "Валерійович",
          "Валер'янович",
          "Васильович",
          "Венедиктович",
          "Веніамінович",
          "Вікентійович",
          "Вікторович",
          "Віленович",
          "Вілоровіч",
          "Віталійович",
          "Владиленович",
          "Володимирович",
          "Владиславович",
          "Владленович",
          "Власович",
          "Всеволодович",
          "Вячеславович",
          "Гаврилович",
          "Гаврилович",
          "Геннадійович",
          "Геннадійович",
          "Георгійович",
          "Герасимович",
          "Германович",
          "Гертрудовіч",
          "Глібович",
          "Гордійович",
          "Григорович",
          "Гурійович",
          "Давидович",
          "Давидович",
          "Данилович",
          "Данилович",
          "Демидович",
          "Дем'янович",
          "Денисович",
          "Дмитрович",
          "Дмитрович",
          "Дорофійович",
          "Овсійович",
          "Євстигнійович",
          "Єгорович",
          "Єлизаровича",
          "Єлисейович",
          "Яремович",
          "Єрмилович",
          "Єрмолайович",
          "Єрофійович",
          "Юхимович",
          "Ефімьевіч",
          "Єфремович",
          "Ефстафьевіч",
          "Жанович",
          "Жоресовіч",
          "Захарович",
          "Зіновійович",
          "Ігнатович",
          "Гнатович",
          "Ігорович",
          "Ізмаїлович",
          "Ізотович",
          "Іларіонович",
          "Ілліч",
          "Ильясович",
          "Йосипович",
          "Йосипович",
          "Сидорович",
          "Матвійович",
          "Михайлович",
          "Петрович",
          "Семенович",
          "Сидорович",
          "Тарасович",
          "Теймуразовіч",
          "Терентійович",
          "Тімуровіч",
          "Тихонович",
          "Трифонович",
          "Трохимович",
          "Устинович",
          "Фадеевич",
          "Федорович",
          "Федосійович",
          "Федосовича",
          "Федотович",
          "Феліксович",
          "Феодосійович",
          "Феоктистович",
          "Феофанович",
          "Філатович",
          "Филимонович",
          "Пилипович",
          "Фокич",
          "Фомич",
          "Фролович",
          "Харитонович",
          "Харламович",
          "Харлампович",
          "Харлампьевіч",
          "Чеславович",
          "Едгардовіч",
          "Едгаровіч",
          "Едуардович",
          "Юліанович",
          "Юлійович",
          "Якович",
          "Якубович",
          "Ярославович",
        ],
    };
  }
}

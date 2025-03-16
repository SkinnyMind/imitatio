import 'package:imitatio/src/datasets/models/person.dart';
import 'package:imitatio/src/enums.dart';

class EsPersonData extends PersonDataset {
  @override
  List<String> get academicDegrees {
    return const ["Grado", "Máster", "Doctorado"];
  }

  @override
  List<String> get genders {
    return const ["Masculino", "Femenino", "Neutro"];
  }

  @override
  List<String> get languages {
    return const [
      "Abjasio",
      "Acadio",
      "Acoli",
      "Adigeo",
      "Afar",
      "Aghem",
      "Aimara",
      "Ainu",
      "Akan",
      "Akoose",
      "Albanés",
      "Alemán",
      "Amárico",
      "Angika",
      "Arameo",
      "Araona",
      "Armenio",
      "Asamés",
      "Asu",
      "Atsam",
      "Avadhi",
      "Avar",
      "Azerí",
      "Badaga",
      "Bafia",
      "Bafut",
      "Bambara",
      "Bamun",
      "Banjar",
      "Basa",
      "Bashkir",
      "Beja",
      "Bemba",
      "Bena",
      "Bengalí",
      "Betawi",
      "Bicol",
      "Bini",
      "Birmano",
      "Bislama",
      "Blin",
      "Bodo",
      "Bosnio",
      "Brahui",
      "Braj",
      "Bretón",
      "Bulu",
      "Buriat",
      "Búlgaro",
      "Cabila",
      "Caddo",
      "Canarés",
      "Caribe",
      "Catalán",
      "Cayuga",
      "Checo",
      "Chiga",
      "Chino",
      "Chuvash",
      "Copto",
      "Coreano",
      "Corso",
      "Cree",
      "Creek",
      "Croata",
      "Córnico",
      "Dakota",
      "Danés",
      "Dargva",
      "Dazaga",
      "Dinka",
      "Diula",
      "Divehi",
      "Dogri",
      "Dogrib",
      "Duala",
      "Efik",
      "Ekajuk",
      "Embu",
      "Erzya",
      "Español",
      "Estonio",
      "Euskera",
      "Ewondo",
      "Ewé",
      "Fang",
      "Fanti",
      "Feroés",
      "Finés",
      "Fiyiano",
      "Fon",
      "Frafra",
      "Francés",
      "Fula",
      "Ga",
      "Gallego",
      "Galés",
      "Ganda",
      "Gayo",
      "Gbaya",
      "Geez",
      "Gilaki",
      "Gondi",
      "Grebo",
      "Griego",
      "Guaraní",
      "Gusii",
      "Gótico",
      "Haida",
      "Hausa",
      "Hebreo",
      "Herero",
      "Hindi",
      "Hitita",
      "Hmong",
      "Hupa",
      "Húngaro",
      "Iban",
      "Ibibio",
      "Ido",
      "Igbo",
      "Inglés",
      "Ingush",
      "Inupiaq",
      "Japonés",
      "Javanés",
      "Jemer",
      "Jju",
      "Jutish",
      "Kachin",
      "Kako",
      "Kalmyk",
      "Kamba",
      "Kanuri",
      "Kawi",
      "Kazajo",
      "Khasi",
      "Khowar",
      "Kikuyu",
      "Kirguís",
      "Kom",
      "Komi",
      "Kongo",
      "Koro",
      "Kotava",
      "Kpelle",
      "Krio",
      "Kumyk",
      "Kurdo",
      "Kurukh",
      "Kwasio",
      "Kölsch",
      "Ladino",
      "Lahnda",
      "Lakota",
      "Lamba",
      "Langi",
      "Latín",
      "Laz",
      "Letón",
      "Lingala",
      "Lituano",
      "Lojban",
      "Lozi",
      "Lunda",
      "Luo",
      "Lushai",
      "Luyia",
      "Maba",
      "Mafa",
      "Magahi",
      "Malayo",
      "Maltés",
      "Manchú",
      "Mandar",
      "Maorí",
      "Marathi",
      "Marí",
      "Masái",
      "Mende",
      "Meru",
      "Meta’",
      "Micmac",
      "Mohawk",
      "Moksha",
      "Mongo",
      "Mongol",
      "Mossi",
      "Myene",
      "Nama",
      "Navajo",
      "Ndonga",
      "Nepalí",
      "Newari",
      "Ngomba",
      "Nias",
      "Nogai",
      "Noruego",
      "Novial",
      "Nuer",
      "Nyanja",
      "Nyoro",
      "Nzima",
      "N’ko",
      "Ojibwa",
      "Oriya",
      "Oromo",
      "Osage",
      "Osético",
      "Pali",
      "Pastún",
      "Persa",
      "Picard",
      "Polaco",
      "Pontic",
      "Punjabí",
      "Quechua",
      "Quiché",
      "Raíz",
      "Romaní",
      "Rombo",
      "Rumano",
      "Ruso",
      "Rusyn",
      "Rwa",
      "Saho",
      "Sakha",
      "Samoano",
      "Sango",
      "Sangu",
      "Sardo",
      "Sasak",
      "Selkup",
      "Sena",
      "Seneca",
      "Serbio",
      "Serer",
      "Seri",
      "Shan",
      "Shona",
      "Sidamo",
      "Sindhi",
      "Siswati",
      "Slave",
      "Soga",
      "Somalí",
      "Sueco",
      "Sukuma",
      "Susu",
      "Swahili",
      "Tagalo",
      "Taita",
      "Talysh",
      "Tamil",
      "Taroko",
      "Tayiko",
      "Telugu",
      "Temne",
      "Tereno",
      "Teso",
      "Tetún",
      "Tigriña",
      "Tigré",
      "Tiv",
      "Tongano",
      "Trukés",
      "Tsonga",
      "Tulu",
      "Turco",
      "Turoyo",
      "Twi",
      "Tyap",
      "Tártaro",
      "Udmurt",
      "Uigur",
      "Urdu",
      "Uzbeko",
      "Vai",
      "Valón",
      "Venda",
      "Veps",
      "Volapük",
      "Vótico",
      "Võro",
      "Walamo",
      "Walser",
      "Waray",
      "Washo",
      "Wayuu",
      "Wólof",
      "Xhosa",
      "Yao",
      "Yapés",
      "Yemba",
      "Yoruba",
      "Yídish",
      "Zarma",
      "Zazaki",
      "Zenaga",
      "Zhuang",
      "Zulú",
      "Zuni",
      "Árabe",
    ];
  }

  @override
  List<String> names(Gender gender) {
    return switch (gender) {
      Gender.female => const [
        "Ababa",
        "Abigaíl",
        "Adela",
        "Adelaida",
        "Adelia",
        "Adelina",
        "Adisoda",
        "Adriana",
        "Agustina",
        "Aida",
        "Aina",
        "Ainara",
        "Ainhoa",
        "Ainoa",
        "Alba",
        "Alejandra",
        "Alexandra",
        "Alicia",
        "Alma",
        "Almudena",
        "Alodia",
        "Alondra",
        "Altagracia",
        "Amalia",
        "Amanda",
        "Amaya",
        "Amelia",
        "Amparo",
        "Ana",
        "Ana María",
        "Anabel",
        "Andrea",
        "Ane",
        "Angela",
        "Angélica",
        "Anita",
        "Anna",
        "Antonia",
        "Antonieta",
        "Araceli",
        "Arantxa",
        "Ariadna",
        "Ascensión",
        "Asunción",
        "Aurelia",
        "Aurora",
        "Azucena",
        "Aída",
        "Bea",
        "Beatriz",
        "Begoña",
        "Belen",
        "Belén",
        "Benita",
        "Berta",
        "Blanca",
        "Brunilda",
        "Bárbara",
        "Camila",
        "Caridad",
        "Carito",
        "Carla",
        "Carlota",
        "Carmen",
        "Caro",
        "Carolina",
        "Catalina",
        "Catrina",
        "Cecilia",
        "Celia",
        "Chaxiraxi",
        "Citlali",
        "Clara",
        "Claudia",
        "Clotilde",
        "Clàudia",
        "Cobura",
        "Concepción",
        "Concha",
        "Consolación",
        "Consuelo",
        "Covadonga",
        "Cristina",
        "Cruz",
        "Cándida",
        "Dalila",
        "Daniela",
        "Daritza",
        "Dayana",
        "Delia",
        "Desamparados",
        "Diana",
        "Dionisia",
        "Dolores",
        "Dominga",
        "Dorotea",
        "Débora",
        "Elena",
        "Elisa",
        "Elvira",
        "Emelda",
        "Emilia",
        "Emma",
        "Encarnación",
        "Enka",
        "Enriqueta",
        "Ernestina",
        "Esperanza",
        "Estefanía",
        "Estela",
        "Ester",
        "Esther",
        "Eufemia",
        "Eugenia",
        "Eulalia",
        "Eva",
        "Evita",
        "Fabiana",
        "Fabricia",
        "Facunda",
        "Fatima",
        "Feliciana",
        "Felicidad",
        "Felipa",
        "Felisa",
        "Fermina",
        "Fernanda",
        "Filomena",
        "Flavia",
        "Flora",
        "Florencia",
        "Floria",
        "Frida",
        "Froilana",
        "Fulberta",
        "Fulca",
        "Fátima",
        "Gabriela",
        "Gara",
        "Gema",
        "Geo",
        "Ginebra",
        "Gloria",
        "Graciela",
        "Gretel",
        "Guadalupe",
        "Guillermina",
        "Haydée",
        "Hañagua",
        "Helena",
        "Hilda",
        "Hortensia",
        "Ilda",
        "Imelda",
        "Inma",
        "Inmaculada",
        "Inés",
        "Irati",
        "Irene",
        "Isa",
        "Isabel",
        "Itahisa",
        "Jacinta",
        "Jacqueline",
        "Javiera",
        "Jennifer",
        "Jessica",
        "Jesusa",
        "Jimena",
        "Joaquina",
        "Jorgelina",
        "Josefa",
        "Josefina",
        "Juana",
        "Juanita",
        "Judit",
        "Judith",
        "Julia",
        "Juliana",
        "Julieta",
        "Kaori",
        "Karina",
        "Keiko",
        "Laia",
        "Lali",
        "Lara",
        "Laura",
        "Lea",
        "Leire",
        "Leonor",
        "Leticia",
        "Licha",
        "Lidia",
        "Lilia",
        "Liliana",
        "Lola",
        "Lolita",
        "Lorena",
        "Lorenza",
        "Lourdes",
        "Lucha",
        "Lucia",
        "Luciana",
        "Lucía",
        "Luisa",
        "Luna",
        "Lupita",
        "Luz",
        "Lía",
        "Macarena",
        "Magdalena",
        "Maite",
        "Manuela",
        "Manuelita",
        "Mar",
        "Marcela",
        "Marcelina",
        "Margarita",
        "Mari",
        "Maria",
        "Mariana",
        "Maribel",
        "Marina",
        "Marta",
        "Martina",
        "Martita",
        "María",
        "María Jesús",
        "María José",
        "María Juana",
        "María Magdalena",
        "Matilde",
        "Mayte",
        "Meagens",
        "Mercedes",
        "Mery",
        "Micaela",
        "Miguela",
        "Mila",
        "Milagros",
        "Mireia",
        "Mirella",
        "Mireya",
        "Miriam",
        "Modesta",
        "Montserrat",
        "Mònica",
        "Mónica",
        "Naiara",
        "Narcisa",
        "Natalia",
        "Natividad",
        "Nerea",
        "Nieves",
        "Nilda",
        "Noe",
        "Noelia",
        "Noemí",
        "Nora",
        "Nuria",
        "Ofelia",
        "Olga",
        "Paloma",
        "Paqui",
        "Pascuala",
        "Patri",
        "Patricia",
        "Paula",
        "Paulette",
        "Paulina",
        "Paz",
        "Piedad",
        "Pilar",
        "Plga",
        "Purificación",
        "Pàola",
        "Rafaela",
        "Raimunda",
        "Ramira",
        "Ramona",
        "Raquel",
        "Rebeca",
        "Remedios",
        "Ricarda",
        "Rocío",
        "Rodolfa",
        "Rosa",
        "Rosalía",
        "Rosario",
        "Roxana",
        "Rut",
        "Ruth",
        "Sandra",
        "Sara",
        "Selena",
        "Serafina",
        "Shizuko",
        "Silvia",
        "Sofía",
        "Soledad",
        "Sonia",
        "Soraya",
        "Stella",
        "Susana",
        "Tamara",
        "Tania",
        "Teodora",
        "Teresa",
        "Thiare",
        "Tiare",
        "Tomasa",
        "Triana",
        "Trinidad",
        "Trysta",
        "Ulrica",
        "Uxue",
        "Valentina",
        "Vane",
        "Vanesa",
        "Vanessa",
        "Verónica",
        "Vicenta",
        "Vicky",
        "Victoria",
        "Violeta",
        "Virginia",
        "Ximena",
        "Xóchitl",
        "Yaiza",
        "Yesenia",
        "Yolanda",
        "Zulma",
        "África",
        "Águeda",
        "Álvara",
        "Ángela",
        "Ángeles",
        "Úrsula",
      ],
      Gender.male => const [
        "Aarón",
        "Adrián",
        "Agapetus",
        "Agustín",
        "Aimon",
        "Alan",
        "Albert",
        "Alberto",
        "Alejandro",
        "Alex",
        "Alexander",
        "Alonso",
        "Ander",
        "Andrés",
        "Andy",
        "Angel",
        "Antonio",
        "Arnau",
        "Asier",
        "Axel",
        "Bautista",
        "Beltran",
        "Benjamín",
        "Berto",
        "Beñat",
        "Borja",
        "Bronco",
        "Bruno",
        "Caleb",
        "Camilo",
        "Carlos",
        "Christopher",
        "Cipriano",
        "Cisco",
        "Cortez",
        "Cristóbal",
        "Cruz",
        "Cuba",
        "Damián",
        "Daniel",
        "Dante",
        "Dario",
        "David",
        "Desiderio",
        "Diego",
        "Diego Alejandro",
        "Dimos",
        "Domingo",
        "Dylan",
        "Eduardo",
        "Elías",
        "Emiliano",
        "Emilio",
        "Emmanuel",
        "Eneko",
        "Enrique",
        "Esteban",
        "Facundo",
        "Fanuco",
        "Federico",
        "Felipe",
        "Fernando",
        "First names",
        "Fraco",
        "Fran",
        "Francisco",
        "Franco",
        "Frisco",
        "Gabriel",
        "Gael",
        "Gervasio",
        "Gig",
        "Gonzalo",
        "Gorka",
        "Guido",
        "Guillermo",
        "Hernan",
        "Hilario",
        "Hugo",
        "Ian",
        "Ignacio",
        "Ignado",
        "Iker",
        "Isaac",
        "Isidro",
        "Ismael",
        "Ivan",
        "Iván",
        "Jacobo",
        "Jaguar",
        "Jaime",
        "Jair",
        "Javi",
        "Javier",
        "Jerrold",
        "Jerónimo/Gerónimo",
        "Jesús",
        "Joan",
        "Joaquin",
        "Joaquín",
        "Jon",
        "Jorge",
        "Jose",
        "Jose luis",
        "Jose manuel",
        "Jose miguel",
        "Josep",
        "Josué",
        "José",
        "Juan",
        "Juan Carlos",
        "Juan David",
        "Juan Diego",
        "Juan Esteban",
        "Juan Felipe",
        "Juan Ignacio",
        "Juan José",
        "Juan Manuel",
        "Juan Pablo",
        "Juan Sebastián",
        "Juanma",
        "Julen",
        "Julián",
        "Kevin",
        "Kiki",
        "Larenzo",
        "Lautaro",
        "Leonardo",
        "Lisandro",
        "Loredo",
        "Lorenzo",
        "Lucas",
        "Luciano",
        "Luis",
        "Macario",
        "Malvolio",
        "Manolo",
        "Manu",
        "Manuel",
        "Marc",
        "Marcelo",
        "Marcos",
        "Mario",
        "Marjun",
        "Martín",
        "Mateo",
        "Matthew",
        "Matías",
        "Mauricio",
        "Max",
        "Maximiliano",
        "Miguel",
        "Miguel Angel",
        "Miguel Ángel",
        "Montana",
        "Montego",
        "Montel",
        "Montenegro",
        "Máximo",
        "Nacho",
        "Nasario",
        "Nemesio",
        "Neper",
        "Neron",
        "Nicolas",
        "Nicolás",
        "Pablo",
        "Paco",
        "Patricio",
        "Paul",
        "Pedro",
        "Pepe",
        "Rafa",
        "Rafael",
        "Raul",
        "Ricardo",
        "Roberto",
        "Rodrigo",
        "Ruben",
        "Salvador",
        "Samuel",
        "Santi",
        "Santiago",
        "Santino",
        "Sebastián",
        "Sergi",
        "Sergio",
        "Simón",
        "Thiago",
        "Tomas",
        "Tomás",
        "Toni",
        "VICTOR",
        "Valentino",
        "Vicente",
        "Vidal",
        "Xabat",
        "Xalvador",
        "Xaver",
        "Xaverius",
        "Xavier",
        "Xavion",
        "Xeres",
        "Ximen",
        "Zelipe",
        "Zenon",
        "adrian",
        "christian",
        "dani",
        "guille",
        "marco",
        "martin",
        "Álvaro",
        "Ángel",
        "Óscar",
      ],
    };
  }

  @override
  List<String> nationalities(Gender gender) {
    return switch (gender) {
      Gender.female => const [
        'Albana',
        'Afgana',
        'Argelina',
        'Andorrana',
        'Angolana',
        'Antiguana',
        'Argentina',
        'Armenia',
        'Australiana',
        'Austriaca',
        'Azerbaiyana',
        'Bahameña',
        'Bareiní',
        'Bangladesí',
        'Barbadense',
        'Bielorusa',
        'Belga',
        'Beliceña',
        'Beninesa',
        'Boliviana',
        'Bosnia',
        'Botsuana',
        'Brasileña',
        'Bruneana',
        'Búlgara',
        'Burkinesa',
        'Birmana',
        'Burundesa',
        'Camboyana',
        'Camerunesa',
        'Canadiense',
        'Caboverdiana',
        'Centroafricana',
        'Chadiana',
        'Chilena',
        'China',
        'Colombiana',
        'Comorense',
        'Congoleña',
        'Costarricense',
        'Croata',
        'Cubana',
        'Chipriota',
        'Checa',
        'Danesa',
        'Dominiquesa',
        'Dominicana',
        'Timorense',
        'Ecuatoriana',
        'Egipcia',
        'Salvadoreña',
        'Guineana',
        'Eritrea',
        'Estonia',
        'Etíope',
        'Finesa',
        'Francesa',
        'Gabonesa',
        'Gambiana',
        'Georgiana',
        'Alemana',
        'Ghanesa',
        'Granadina',
        'Griega',
        'Groenlandesa',
        'Guatemalteca',
        'Guayanesa',
        'Guineana',
        'Guineana',
        'Haitiana',
        'Hondureña',
        'Húngara',
        'Islandesa',
        'India',
        'Indonesia',
        'Iraní',
        'Iraquí',
        'Irlandesa',
        'Israelí',
        'Italiana',
        'Marfileña',
        'Jamaicana',
        'Japonesa',
        'Jordana',
        'Kazaja',
        'Keniata',
        'Kiribatiana',
        'Kuwaití',
        'Kirguís',
        'Laosiana',
        'Letona',
        'Libanesa',
        'Lesotense',
        'Liberiana',
        'Libia',
        'Liechtensteiniana',
        'Lituana',
        'Luxemburgesa',
        'Macedonia',
        'Malgache',
        'Malauí',
        'Malaya',
        'Maldiva',
        'Maliense',
        'Maltesa',
        'Marshalesa',
        'Mauriciana',
        'Mauritana',
        'Mexicana',
        'Moldava',
        'Monaquesa',
        'Mongola',
        'Montenegrina',
        'Marroquí',
        'Mozambiqueña',
        'Namibia',
        'Nauruana',
        'Holandesa',
        'Neozelandesa',
        'Nicaraguense',
        'Nigeriana',
        'Niuana',
        'Norcoreana',
        'Noruega',
        'Omanesa',
        'Pakistaní',
        'Panameña',
        'Papú',
        'Paraguaya',
        'Peruana',
        'Filipina',
        'Polaca',
        'Portuguesa',
        'Catarí',
        'Rumana',
        'Rusa',
        'Ruandesa',
        'Samoana',
        'Sanmarinense',
        'Saudí',
        'Senegalesa',
        'Serbia',
        'Seychelense',
        'Sierraleonesa',
        'Singapurense',
        'Eslovaca',
        'Eslovena',
        'Salomonense',
        'Somalí',
        'Sudafricana',
        'Surcoreana',
        'Española',
        'Ceilandesa',
        'Sanvicentina',
        'Sudanesa',
        'Surinamesa',
        'Suazi',
        'Sueca',
        'Suiza',
        'Siria',
        'Tanzana',
        'Tailandesa',
        'Togolesa',
        'Tongana',
        'Tunecina',
        'Turca',
        'Tuvaluana',
        'Ugandesa',
        'Ucraniana',
        'Británica',
        'Estadounidense',
        'Uruguaya',
        'Uzbeca',
        'Vanuatuense',
        'Vaticana',
        'Venezolana',
        'Vietnamita',
        'Yemení',
        'Zambiana',
        'Zimbabuense',
      ],
      Gender.male => const [
        'Albano',
        'Afgano',
        'Argelino',
        'Andorrano',
        'Angolano',
        'Antiguano',
        'Argentino',
        'Armenio',
        'Australiano',
        'Austriaco',
        'Azerbaiyano',
        'Bahameño',
        'Bareiní',
        'Bangladesí',
        'Barbadense',
        'Bieloruso',
        'Belga',
        'Beliceño',
        'Beninés',
        'Boliviano',
        'Bosnio',
        'Botsuano',
        'Brasileño',
        'Bruneano',
        'Búlgaro',
        'Burkinés',
        'Birmano',
        'Burundés',
        'Camboyano',
        'Camerunés',
        'Canadiense',
        'Caboverdiano',
        'Centroafricano',
        'Chadiano',
        'Chileno',
        'Chino',
        'Colombiano',
        'Comorense',
        'Congoleño',
        'Costarricense',
        'Croata',
        'Cubano',
        'Chipriota',
        'Checo',
        'Danés',
        'Dominiqués',
        'Dominicano',
        'Timorense',
        'Ecuatoriano',
        'Egipcio',
        'Salvadoreño',
        'Guineano',
        'Eritreo',
        'Estonio',
        'Etíope',
        'Finés',
        'Francés',
        'Gabonés',
        'Gambiano',
        'Georgiano',
        'Alemán',
        'Ghanés',
        'Granadino',
        'Griego',
        'Groenlandés',
        'Guatemalteco',
        'Guayanés',
        'Guineano',
        'Guineano',
        'Haitiano',
        'Hondureño',
        'Húngaro',
        'Islandés',
        'Indio',
        'Indonesio',
        'Iraní',
        'Iraquí',
        'Irlandés',
        'Israelí',
        'Italiano',
        'Marfileño',
        'Jamaicano',
        'Japonés',
        'Jordano',
        'Kazajo',
        'Keniata',
        'Kiribatiano',
        'Kuwaití',
        'Kirguís',
        'Laosiano',
        'Letón',
        'Libanés',
        'Lesotense',
        'Liberiano',
        'Libio',
        'Liechtensteiniano',
        'Lituano',
        'Luxemburgés',
        'Macedonio',
        'Malgache',
        'Malauí',
        'Malayo',
        'Malayo',
        'Maliense',
        'Maltés',
        'Marshalés',
        'Mauriciano',
        'Mauritano',
        'Mexicano',
        'Moldavo',
        'Monaqués',
        'Mongól',
        'Montenegrino',
        'Marroquí',
        'Mozambiqueño',
        'Namibio',
        'Nauruano',
        'Holandés',
        'Neozelandés',
        'Nicaraguense',
        'Nigeriano',
        'Niuano',
        'Norcoreano',
        'Noruego',
        'Omanés',
        'Pakistaní',
        'Panameño',
        'Papú',
        'Paraguayo',
        'Peruano',
        'Filipino',
        'Polaco',
        'Portugués',
        'Catarí',
        'Rumano',
        'Ruso',
        'Ruandés',
        'Samoano',
        'Sanmarinense',
        'Saudí',
        'Senegalés',
        'Serbio',
        'Seychelense',
        'Sierraleonés',
        'Singapurense',
        'Eslovaco',
        'Esloveno',
        'Salomonense',
        'Somalí',
        'Sudafricano',
        'Surcoreano',
        'Español',
        'Ceilandés',
        'Sanvicentino',
        'Sudanés',
        'Surinamés',
        'Suazi',
        'Sueco',
        'Suizo',
        'Sirio',
        'Tanzano',
        'Tailandés',
        'Togolés',
        'Tongano',
        'Tunecino',
        'Turco',
        'Tuvaluano',
        'Ugandés',
        'Ucraniano',
        'Británico',
        'Estadounidense',
        'Uruguayo',
        'Uzbeco',
        'Vanuatuense',
        'Vaticano',
        'Venezolano',
        'Vietnamita',
        'Yemení',
        'Zambiano',
        'Zimbabuense',
      ],
    };
  }

  @override
  List<String> get occupations {
    return const [
      "Abogado",
      "Actor",
      "Actriz",
      "Aduanero",
      "Agricultor",
      "Albañil",
      "Arquitecto",
      "Asesor",
      "Astronauta",
      "Azafata",
      "Basurero",
      "Bombero",
      "Camarero",
      "Camionero",
      "Cantante",
      "Capataz",
      "Carnicero",
      "Cartero",
      "Científico",
      "Cirujano",
      "Cocinero",
      "Conductor",
      "Contable",
      "Criado",
      "Cura",
      "Dentista",
      "Dependiente",
      "Electricista",
      "Empleado",
      "Empleado De Banco",
      "Enfermero",
      "Escritor",
      "Estudiante",
      "Farmacéutico",
      "Fontanero",
      "Granjero",
      "Ingeniero",
      "Jardinero",
      "Joyero",
      "Juez",
      "Librero",
      "Marinero",
      "Médico",
      "Mecánico",
      "Minero",
      "Modelo",
      "Monitor",
      "Monje",
      "Monja",
      "Niñera",
      "Obrero",
      "Oficinista",
      "Panadero",
      "Pastor",
      "Peluquero",
      "Periodista",
      "Pescador",
      "Piloto",
      "Pintor",
      "Político",
      "Policía",
      "Portero",
      "Profesor",
      "Psicólogo",
      "Psiquiatra",
      "Recepcionista",
      "Relojero",
      "Reportero",
      "Sacerdote",
      "Sastre",
      "Secretario",
      "Soldado",
      "Taquimeca",
      "Taxista",
      "Técnico",
      "Torero",
      "Traductor",
      "Vendedor",
      "Veterinario",
      "Zapatero",
      "Abogado",
      "Actor",
      "Actriz",
      "Aduanero",
      "Agricultor",
      "Albañil",
      "Arquitecto",
      "Asesor",
      "Astronauta",
      "Azafata",
      "Basurero",
      "Bombero",
      "Camarero",
      "Camionero",
      "Cantante",
      "Capataz",
      "Carnicero",
      "Cartero",
      "Científico",
      "Cirujano",
      "Cocinero",
      "Conductor",
      "Contable",
      "Criado",
      "Cura",
      "Dentista",
      "Dependiente",
      "Electricista",
      "Empleado",
      "Empleado De Banco",
      "Enfermero",
      "Escritor",
      "Estudiante",
      "Farmacéutico",
      "Fontanero",
      "Granjero",
      "Ingeniero",
      "Jardinero",
      "Joyero",
      "Juez",
      "Librero",
      "Marinero",
      "Médico",
      "Mecánico",
      "Minero",
      "Modelo",
      "Monitor",
      "Monje",
      "Monja",
      "Niñera",
      "Obrero",
      "Oficinista",
      "Panadero",
      "Pastor",
      "Peluquero",
      "Periodista",
      "Pescador",
      "Piloto",
      "Pintor",
      "Político",
      "Policía",
      "Portero",
      "Profesor",
      "Psicólogo",
      "Psiquiatra",
      "Recepcionista",
      "Relojero",
      "Reportero",
      "Sacerdote",
      "Sastre",
      "Secretario",
      "Soldado",
      "Taquimeca",
      "Taxista",
      "Técnico",
      "Torero",
      "Traductor",
      "Vendedor",
      "Veterinario",
      "Zapatero",
    ];
  }

  @override
  List<String> get politicalViews {
    return const [
      "Anarquista",
      "Liberal",
      "Comunista",
      "Moderato",
      "Socialista",
      "Conservador",
      "Libertario",
    ];
  }

  @override
  List<String> surnames(Gender gender) {
    return switch (gender) {
      _ => const [
        "Aguilar",
        "Alonso",
        "Alvarez",
        "Andres",
        "Arias",
        "Blanco",
        "Bravo",
        "Caballero",
        "Cabrera",
        "Calvo",
        "Campos",
        "Cano",
        "Carmona",
        "Carrasco",
        "Castillo",
        "Castro",
        "Cortes",
        "Crespo",
        "Cruz",
        "Delgado",
        "Diaz",
        "Diez",
        "Dominguez",
        "Duran",
        "Fernandez",
        "Ferrer",
        "Flores",
        "Fuentes",
        "Garcia",
        "Garrido",
        "Gil",
        "Gimenez",
        "Gomez",
        "Gonzalez",
        "Guerrero",
        "Gutierrez",
        "Hernandez",
        "Herrera",
        "Herrero",
        "Hidalgo",
        "Ibanez",
        "Iglesias",
        "Izquierdo",
        "Jimenez",
        "Leon",
        "Lopez",
        "Lorenzo",
        "Lozano",
        "Marcos",
        "Marin",
        "Marquez",
        "Martin",
        "Martinez",
        "Medina",
        "Mendez",
        "Menendez",
        "Merino",
        "Molina",
        "Montero",
        "Mora",
        "Morales",
        "Moreno",
        "Moya",
        "Munoz",
        "Name",
        "Navarro",
        "Nieto",
        "Nunez",
        "Ortega",
        "Ortiz",
        "Pardo",
        "Pascual",
        "Pastor",
        "Pena",
        "Perez",
        "Prieto",
        "Ramirez",
        "Ramos",
        "Redondo",
        "Rey",
        "Reyes",
        "Rodriguez",
        "Roman",
        "Romero",
        "Rubio",
        "Ruiz",
        "Saez",
        "Sanchez",
        "Santos",
        "Sanz",
        "Serrano",
        "Soler",
        "Soto",
        "Suarez",
        "Torres",
        "Vazquez",
        "Vega",
        "Velasco",
        "Vicente",
        "Vidal",
        "Vila",
      ],
    };
  }

  @override
  List<String> get telephoneFormats {
    return const [
      "+34 91# ## ## ##",
      "9##-###-###",
      "9##.###.###",
      "9## ### ###",
      "9########",
    ];
  }

  @override
  List<String> titles({required Gender gender, required TitleType titleType}) {
    return switch (gender) {
      Gender.female =>
        titleType == TitleType.academic
            ? const [
              "Doctorado",
              "Grado",
              "Máster",
              "Magíster",
              "MBA",
              "M.Sc",
              "M.A.",
              "MFA",
              "M.Jur.",
              "LL.M.",
              "BCL",
              "MBE",
              "M.Inv",
              "PSM",
            ]
            : const ["Doña", "D.ª"],
      Gender.male =>
        titleType == TitleType.academic
            ? const [
              "Doctorado",
              "Grado",
              "Máster",
              "Magíster",
              "MBA",
              "M.Sc",
              "M.A.",
              "MFA",
              "M.Jur.",
              "LL.M.",
              "BCL",
              "MBE",
              "M.Inv",
              "PSM",
            ]
            : const ["Don", "D."],
    };
  }

  @override
  List<String> get universities {
    return const [
      "Universidad Abad Oliva CEU",
      "Universidad Abierta de Cataluña",
      "Universidad Alfonso X el Sabio",
      "Universidad Antonio de Nebrija",
      "Universidad Autónoma de Barcelona",
      "Universidad Autónoma de Madrid",
      "Universidad CEU Cardenal Herrera",
      "Universidad CEU San Pablo",
      "Universidad Camilo José Cela",
      "Universidad Carlos III de Madrid",
      "Universidad Católica San Antonio",
      "Universidad Católica Santa Teresa de Jesús de Ávila",
      "Universidad Católica de Valencia San Vicente Mártir",
      "Universidad Complutense de Madrid",
      "Universidad Eclesiástica San Dámaso",
      "Universidad Europea Miguel de Cervantes",
      "Universidad Europea de Canarias",
      "Universidad Europea de Madrid",
      "Universidad Europea de Valencia",
      "Universidad Europea del Atlántico",
      "Universidad Fernando Pessoa-Canarias",
      "Universidad Francisco de Vitoria",
      "Universidad IE",
      "Universidad Internacional Isabel I de Castilla",
      "Universidad Internacional Menéndez Pelayo",
      "Universidad Internacional de Andalucía",
      "Universidad Internacional de Cataluña",
      "Universidad Internacional de La Rioja",
      "Universidad Internacional de Valencia",
      "Universidad Jaime I",
      "Universidad Loyola Andalucía",
      "Universidad Miguel Hernández de Elche",
      "Universidad Nacional de Educación a Distancia",
      "Universidad Pablo de Olavide",
      "Universidad Politécnica de Cartagena",
      "Universidad Politécnica de Cataluña",
      "Universidad Politécnica de Madrid",
      "Universidad Politécnica de Valencia",
      "Universidad Pompeu Fabra",
      "Universidad Pontificia Comillas",
      "Universidad Pontificia de Salamanca",
      "Universidad Pública de Navarra",
      "Universidad Ramon Llull",
      "Universidad Rey Juan Carlos",
      "Universidad Rovira i Virgili",
      "Universidad San Jorge",
      "Universidad a Distancia de Madrid",
      "Universidad de Alcalá",
      "Universidad de Alicante",
      "Universidad de Almería",
      "Universidad de Barcelona",
      "Universidad de Burgos",
      "Universidad de Cantabria",
      "Universidad de Castilla-La Mancha",
      "Universidad de Cádiz",
      "Universidad de Córdoba",
      "Universidad de Deusto",
      "Universidad de Extremadura",
      "Universidad de Gerona",
      "Universidad de Granada",
      "Universidad de Huelva",
      "Universidad de Jaén",
      "Universidad de La Coruña",
      "Universidad de La Laguna",
      "Universidad de La Rioja",
      "Universidad de Las Palmas de Gran Canaria",
      "Universidad de León",
      "Universidad de Lérida",
      "Universidad de Mondragón",
      "Universidad de Murcia",
      "Universidad de Málaga",
      "Universidad de Navarra",
      "Universidad de Oviedo",
      "Universidad de Salamanca",
      "Universidad de Santiago de Compostela",
      "Universidad de Sevilla",
      "Universidad de Valencia",
      "Universidad de Valladolid",
      "Universidad de Vich",
      "Universidad de Vigo",
      "Universidad de Zaragoza",
      "Universidad de las Islas Baleares",
      "Universidad del País Vasco",
    ];
  }

  @override
  List<String> get viewsOn {
    return const [
      "Negativo",
      "Muy negativo",
      "Positivo",
      "Neutral",
      "Compromisable",
    ];
  }

  @override
  List<String> get worldviews {
    return const [
      "Ateísmo",
      "Agnosticismo",
      "Deísmo",
      "Judaísmo",
      "Catolicismo",
      "Panteísmo",
      "Confucionismo",
      "Humanismo secular",
    ];
  }
}

import 'package:imitatio/src/datasets/models/finance.dart';

class EsMxFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "BBVA Bancomer",
      "Grupo Financiero Banorte",
      "Santander México",
      "Citibanamex",
      "HSBC México",
      "Scotiabank México",
      "Inbursa",
      "Banco Azteca",
      "Afirme Grupo Financiero",
      "Invex Grupo Financiero",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "ALFA",
      "AeroUnion",
      "Aeromexpress",
      "Aeroméxico",
      "Aeroméxico Connect",
      "Ah Cacao Real Chocolate",
      "Alpek",
      "Alpura",
      "Altos Hornos de México",
      "América Móvil",
      "Arca Continental",
      "Argos Comunicación",
      "Aurrerá",
      "Autobuses de Oriente",
      "Aviacsa",
      "Avolar",
      "Axtel",
      "Azteca",
      "BBVA Bancomer",
      "Bachoco",
      "BanRegio",
      "Banco Azteca",
      "Banco Inbursa",
      "Banco Santander",
      "Bancomext",
      "Banorte",
      "Barcel",
      "Benedetti's Pizza",
      "Cablemás",
      "Calimax",
      "Camino Real",
      "Carlos'n Charlie's",
      "Carso Global Telecom",
      "Casa Ley",
      "Cemento Cruz Azul",
      "Cemex",
      "Cervecería Baja California",
      "Cerveza Tijuana",
      "Chedraui",
      "Chocolate Mayordomo",
      "Cinemex",
      "Cinépolis",
      "City Club",
      "Comercial Mexicana",
      "Comex Group",
      "Comisión Federal de Electricidad",
      "Consejo Mundial de Lucha Libre",
      "Consorcio Ara",
      "Controladora Mabe",
      "Corporativo Interamericano de Entretenimiento",
      "Correos de México",
      "Corridor Insurgentes",
      "Cuauhtémoc Moctezuma Brewery",
      "DINA",
      "El Palacio de Hierro",
      "El Puerto de Liverpool",
      "Esperanto Filmoj",
      "Estafeta Carga Aérea",
      "Expansión (Mexico)",
      "FEMSA",
      "Falco Electronics",
      "Famsa",
      "Farmacias Benavides",
      "Gamesa",
      "Gorditas Doña Tota",
      "Gruma",
      "Grupo Aeroportuario del Sureste",
      "Grupo Anderson's",
      "Grupo Bimbo",
      "Grupo Carso",
      "Grupo Elektra",
      "Grupo Financiero Banamex",
      "Grupo Lala",
      "Grupo Modelo",
      "Grupo México",
      "Grupo Omnilife",
      "Grupo Posadas",
      "Grupo Reforma",
      "Grupo Salinas",
      "Grupo Sanborns",
      "HSBC",
      "Hydra Technologies",
      "Industrias Peñoles",
      "Interjet",
      "Italika",
      "Iusacell",
      "Jarritos",
      "Jumex",
      "Kyoto Electronics",
      "La Costeña",
      "Lanix",
      "Lucha Libre AAA World Wide",
      "MVS Comunicaciones",
      "Mastretta",
      "Meebox",
      "Mexicana de Aviación",
      "MexicanaClick",
      "Mexichem",
      "OXXO",
      "Ocesa Teatro",
      "PYOSA",
      "Paletería La Michoacana",
      "Pascual Boing",
      "Pemex",
      "Potzollcalli",
      "Restaurante Arroyo",
      "Sabritas",
      "San Luis Rassini",
      "Sangria Señorial",
      "Satmex",
      "Sauza Tequila",
      "Selther",
      "Semex",
      "Señor Frog's",
      "Sigma Alimentos",
      "Softtek",
      "Soriana",
      "TAESA",
      "Televisa",
      "Telmex",
      "Tenaris",
      "Tequila Cuervo La Rojeña",
      "Tequila Herradura",
      "Urbi",
      "Videxport",
      "VivaAerobus",
      "Volaris",
      "World Boxing Council",
      "Zonda Telecom",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "S.A.",
          "S. de R.L.",
          "S. en C.",
          "S. en C. por A. ",
          "S.A.B.",
          "S.A.P.I.",
        ],
      false => const [
          "Sociedad Anónima",
          "Sociedad de Responsabilidad Limitada",
          "Sociedad en Comandita Simple",
          "Sociedad en Comandita por Acciones",
          "Sociedad Anónima Bursátil",
          "Sociedad Anónima Promotora de Inversión",
        ],
    };
  }

  @override
  String get currencyCode => "MXN";

  @override
  String get currencySymbol => r'$';
}

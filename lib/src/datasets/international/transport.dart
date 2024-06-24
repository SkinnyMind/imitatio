import 'package:imitatio/src/enums.dart';

/// Provides all the data related to transports.
class IntTransportData {
  const IntTransportData._();

  static const cars = <String>[
    "Alfa Romeo 145",
    "Alfa Romeo 146",
    "Alfa Romeo 147",
    "Alfa Romeo 155",
    "Alfa Romeo 156",
    "Alfa Romeo 156 Sportwagon",
    "Alfa Romeo 159",
    "Alfa Romeo 159 Sportwagon",
    "Alfa Romeo 164",
    "Alfa Romeo 166",
    "Alfa Romeo 4C",
    "Alfa Romeo Brera",
    "Alfa Romeo Crosswagon",
    "Alfa Romeo GT",
    "Alfa Romeo GTV",
    "Alfa Romeo Giulia",
    "Alfa Romeo Giulietta",
    "Alfa Romeo MiTo",
    "Alfa Romeo Spider",
    "Audi 100",
    "Audi 100 Avant",
    "Audi 80",
    "Audi 80 Avant",
    "Audi 80 Cabrio",
    "Audi 90",
    "Audi A1",
    "Audi A2",
    "Audi A3",
    "Audi A3 Cabriolet",
    "Audi A3 Limuzina",
    "Audi A3 Sportback",
    "Audi A4",
    "Audi A4 Allroad",
    "Audi A4 Avant",
    "Audi A4 Cabriolet",
    "Audi A5",
    "Audi A5 Cabriolet",
    "Audi A5 Sportback",
    "Audi A6",
    "Audi A6 Allroad",
    "Audi A6 Avant",
    "Audi A7",
    "Audi A8",
    "Audi A8 Long",
    "Audi Q3",
    "Audi Q5",
    "Audi Q7",
    "Audi R8",
    "Audi RS4 Cabriolet",
    "Audi RS4/RS4 Avant",
    "Audi RS5",
    "Audi RS6 Avant",
    "Audi RS7",
    "Audi S3/S3 Sportback",
    "Audi S4 Cabriolet",
    "Audi S4/S4 Avant",
    "Audi S5/S5 Cabriolet",
    "Audi S6/RS6",
    "Audi S7",
    "Audi S8",
    "Audi SQ5",
    "Audi TT Coupé",
    "Audi TT Roadster",
    "Audi TTS",
    "BMW M3",
    "BMW M4",
    "BMW M5",
    "BMW M6",
    "BMW Rad 1",
    "BMW Rad 1 Cabrio",
    "BMW Rad 1 Coupé",
    "BMW Rad 2",
    "BMW Rad 2 Active Tourer",
    "BMW Rad 2 Coupé",
    "BMW Rad 2 Gran Tourer",
    "BMW Rad 3",
    "BMW Rad 3 Cabrio",
    "BMW Rad 3 Compact",
    "BMW Rad 3 Coupé",
    "BMW Rad 3 GT",
    "BMW Rad 3 Touring",
    "BMW Rad 4",
    "BMW Rad 4 Cabrio",
    "BMW Rad 4 Gran Coupé",
    "BMW Rad 5",
    "BMW Rad 5 GT",
    "BMW Rad 5 Touring",
    "BMW Rad 6",
    "BMW Rad 6 Cabrio",
    "BMW Rad 6 Coupé",
    "BMW Rad 6 Gran Coupé",
    "BMW Rad 7",
    "BMW Rad 8 Coupé",
    "BMW X1",
    "BMW X3",
    "BMW X4",
    "BMW X5",
    "BMW X6",
    "BMW Z3",
    "BMW Z3 Coupé",
    "BMW Z3 Roadster",
    "BMW Z4",
    "BMW Z4 Roadster",
    "BMW i3",
    "BMW i8",
    "Chevrolet Alero",
    "Chevrolet Aveo",
    "Chevrolet Camaro",
    "Chevrolet Captiva",
    "Chevrolet Corvette",
    "Chevrolet Cruze",
    "Chevrolet Cruze SW",
    "Chevrolet Epica",
    "Chevrolet Equinox",
    "Chevrolet Evanda",
    "Chevrolet HHR",
    "Chevrolet Kalos",
    "Chevrolet Lacetti",
    "Chevrolet Lacetti SW",
    "Chevrolet Lumina",
    "Chevrolet Malibu",
    "Chevrolet Matiz",
    "Chevrolet Monte Carlo",
    "Chevrolet Nubira",
    "Chevrolet Orlando",
    "Chevrolet Spark",
    "Chevrolet Suburban",
    "Chevrolet Tacuma",
    "Chevrolet Tahoe",
    "Chevrolet Trax",
    "Chrysler 300 C",
    "Chrysler 300 C Touring",
    "Chrysler 300 M",
    "Chrysler Crossfire",
    "Chrysler Grand Voyager",
    "Chrysler LHS",
    "Chrysler Neon",
    "Chrysler PT Cruiser",
    "Chrysler Pacifica",
    "Chrysler Plymouth",
    "Chrysler Sebring",
    "Chrysler Sebring Convertible",
    "Chrysler Stratus",
    "Chrysler Stratus Cabrio",
    "Chrysler Town & Country",
    "Chrysler Voyager",
    "Citroën Berlingo",
    "Citroën C-Crosser",
    "Citroën C-Elissée",
    "Citroën C-Zero",
    "Citroën C1",
    "Citroën C2",
    "Citroën C3",
    "Citroën C3 Picasso",
    "Citroën C4",
    "Citroën C4 Aircross",
    "Citroën C4 Cactus",
    "Citroën C4 Coupé",
    "Citroën C4 Grand Picasso",
    "Citroën C4 Sedan",
    "Citroën C5",
    "Citroën C5 Break",
    "Citroën C5 Tourer",
    "Citroën C6",
    "Citroën C8",
    "Citroën DS3",
    "Citroën DS4",
    "Citroën DS5",
    "Citroën Evasion",
    "Citroën Jumper",
    "Citroën Jumpy",
    "Citroën Nemo",
    "Citroën Saxo",
    "Citroën Xantia",
    "Citroën Xsara",
    "Dacia Dokker",
    "Dacia Duster",
    "Dacia Lodgy",
    "Dacia Logan",
    "Dacia Logan MCV",
    "Dacia Logan Van",
    "Dacia Sandero",
    "Dacia Solenza",
    "Daewoo Espero",
    "Daewoo Kalos",
    "Daewoo Lacetti",
    "Daewoo Lanos",
    "Daewoo Leganza",
    "Daewoo Lublin",
    "Daewoo Matiz",
    "Daewoo Nexia",
    "Daewoo Nubira",
    "Daewoo Nubira kombi",
    "Daewoo Racer",
    "Daewoo Tacuma",
    "Daewoo Tico",
    "Dodge Avenger",
    "Dodge Caliber",
    "Dodge Challenger",
    "Dodge Charger",
    "Dodge Grand Caravan",
    "Dodge Journey",
    "Dodge Magnum",
    "Dodge Nitro",
    "Dodge RAM",
    "Dodge Stealth",
    "Dodge Viper",
    "Fiat 1100",
    "Fiat 126",
    "Fiat 500",
    "Fiat 500L",
    "Fiat 500X",
    "Fiat 850",
    "Fiat Barchetta",
    "Fiat Brava",
    "Fiat Cinquecento",
    "Fiat Coupé",
    "Fiat Croma",
    "Fiat Doblo",
    "Fiat Doblo Cargo",
    "Fiat Doblo Cargo Combi",
    "Fiat Ducato",
    "Fiat Ducato Kombi",
    "Fiat Ducato Podvozok",
    "Fiat Ducato Van",
    "Fiat Florino",
    "Fiat Florino Combi",
    "Fiat Freemont",
    "Fiat Grande Punto",
    "Fiat Idea",
    "Fiat Linea",
    "Fiat Marea",
    "Fiat Marea Weekend",
    "Fiat Multipla",
    "Fiat Palio Weekend",
    "Fiat Panda",
    "Fiat Panda Van",
    "Fiat Punto",
    "Fiat Punto Cabriolet",
    "Fiat Punto Evo",
    "Fiat Punto Van",
    "Fiat Qubo",
    "Fiat Scudo",
    "Fiat Scudo Kombi",
    "Fiat Scudo Van",
    "Fiat Sedici",
    "Fiat Seicento",
    "Fiat Stilo",
    "Fiat Stilo Multiwagon",
    "Fiat Strada",
    "Fiat Talento",
    "Fiat Tipo",
    "Fiat Ulysse",
    "Fiat Uno",
    "Fiat X1/9",
    "Ford Aerostar",
    "Ford B-Max",
    "Ford C-Max",
    "Ford Cortina",
    "Ford Cougar",
    "Ford Edge",
    "Ford Escort",
    "Ford Escort Cabrio",
    "Ford Escort kombi",
    "Ford Explorer",
    "Ford F-150",
    "Ford F-250",
    "Ford Fiesta",
    "Ford Focus",
    "Ford Focus C-Max",
    "Ford Focus CC",
    "Ford Focus kombi",
    "Ford Fusion",
    "Ford Galaxy",
    "Ford Grand C-Max",
    "Ford Ka",
    "Ford Kuga",
    "Ford Maverick",
    "Ford Mondeo",
    "Ford Mondeo Combi",
    "Ford Mustang",
    "Ford Orion",
    "Ford Puma",
    "Ford Ranger",
    "Ford S-Max",
    "Ford Sierra",
    "Ford Street Ka",
    "Ford Tourneo Connect",
    "Ford Tourneo Custom",
    "Ford Transit",
    "Ford Transit",
    "Ford Transit Bus",
    "Ford Transit Connect LWB",
    "Ford Transit Courier",
    "Ford Transit Custom",
    "Ford Transit Tourneo",
    "Ford Transit Valnik",
    "Ford Transit Van",
    "Ford Transit Van 350",
    "Ford Transit kombi",
    "Ford Windstar",
    "Honda Accord",
    "Honda Accord Coupé",
    "Honda Accord Tourer",
    "Honda CR-V",
    "Honda CR-X",
    "Honda CR-Z",
    "Honda City",
    "Honda Civic",
    "Honda Civic Aerodeck",
    "Honda Civic Coupé",
    "Honda Civic Tourer",
    "Honda Civic Type R",
    "Honda FR-V",
    "Honda HR-V",
    "Honda Insight",
    "Honda Integra",
    "Honda Jazz",
    "Honda Legend",
    "Honda Prelude",
    "Hummer H2",
    "Hummer H3",
    "Hyundai Accent",
    "Hyundai Atos",
    "Hyundai Atos Prime",
    "Hyundai Coupé",
    "Hyundai Elantra",
    "Hyundai Galloper",
    "Hyundai Genesis",
    "Hyundai Getz",
    "Hyundai Grandeur",
    "Hyundai H 350",
    "Hyundai H1",
    "Hyundai H1 Bus",
    "Hyundai H1 Van",
    "Hyundai H200",
    "Hyundai Lantra",
    "Hyundai Matrix",
    "Hyundai Santa Fe",
    "Hyundai Sonata",
    "Hyundai Terracan",
    "Hyundai Trajet",
    "Hyundai Tucson",
    "Hyundai Veloster",
    "Hyundai i10",
    "Hyundai i20",
    "Hyundai i30",
    "Hyundai i30 CW",
    "Hyundai i40",
    "Hyundai i40 CW",
    "Hyundai ix20",
    "Hyundai ix35",
    "Hyundai ix55",
    "Infiniti EX",
    "Infiniti FX",
    "Infiniti G",
    "Infiniti G Coupé",
    "Infiniti M",
    "Infiniti Q",
    "Infiniti QX",
    "Jaguar Daimler",
    "Jaguar F-Pace",
    "Jaguar F-Type",
    "Jaguar S-Type",
    "Jaguar Sovereign",
    "Jaguar X-Type",
    "Jaguar X-type Estate",
    "Jaguar XE",
    "Jaguar XF",
    "Jaguar XJ",
    "Jaguar XJ12",
    "Jaguar XJ6",
    "Jaguar XJ8",
    "Jaguar XJ8",
    "Jaguar XJR",
    "Jaguar XK",
    "Jaguar XK8 Convertible",
    "Jaguar XKR",
    "Jaguar XKR Convertible",
    "Jeep Cherokee",
    "Jeep Commander",
    "Jeep Compass",
    "Jeep Grand Cherokee",
    "Jeep Patriot",
    "Jeep Renegade",
    "Jeep Wrangler",
    "Kia Avella",
    "Kia Besta",
    "Kia Carens",
    "Kia Carnival",
    "Kia Cee`d",
    "Kia Cee`d SW",
    "Kia Cerato",
    "Kia K 2500",
    "Kia Magentis",
    "Kia Opirus",
    "Kia Optima",
    "Kia Picanto",
    "Kia Pregio",
    "Kia Pride",
    "Kia Pro Cee`d",
    "Kia Rio",
    "Kia Rio Combi",
    "Kia Rio sedan",
    "Kia Sephia",
    "Kia Shuma",
    "Kia Sorento",
    "Kia Soul",
    "Kia Sportage",
    "Kia Venga",
    "Land Rover 109",
    "Land Rover Defender",
    "Land Rover Discovery",
    "Land Rover Discovery Sport",
    "Land Rover Freelander",
    "Land Rover Range Rover",
    "Land Rover Range Rover Evoque",
    "Land Rover Range Rover Sport",
    "Lexus CT",
    "Lexus GS",
    "Lexus GS 300",
    "Lexus GX",
    "Lexus IS",
    "Lexus IS 200",
    "Lexus IS 250 C",
    "Lexus IS-F",
    "Lexus LS",
    "Lexus LX",
    "Lexus NX",
    "Lexus RC F",
    "Lexus RX",
    "Lexus RX 300",
    "Lexus RX 400h",
    "Lexus RX 450h",
    "Lexus SC 430",
    "MINI Cooper",
    "MINI Cooper Cabrio",
    "MINI Cooper Clubman",
    "MINI Cooper D",
    "MINI Cooper D Clubman",
    "MINI Cooper S",
    "MINI Cooper S Cabrio",
    "MINI Cooper S Clubman",
    "MINI Countryman",
    "MINI Mini One",
    "MINI One D",
    "Mazda 121",
    "Mazda 2",
    "Mazda 3",
    "Mazda 323",
    "Mazda 323 Combi",
    "Mazda 323 Coupé",
    "Mazda 323 F",
    "Mazda 5",
    "Mazda 6",
    "Mazda 6 Combi",
    "Mazda 626",
    "Mazda 626 Combi",
    "Mazda B-Fighter",
    "Mazda B2500",
    "Mazda BT",
    "Mazda CX-3",
    "Mazda CX-5",
    "Mazda CX-7",
    "Mazda CX-9",
    "Mazda Demio",
    "Mazda MPV",
    "Mazda MX-3",
    "Mazda MX-5",
    "Mazda MX-6",
    "Mazda Premacy",
    "Mazda RX-7",
    "Mazda RX-8",
    "Mazda Xedox 6",
    "Mercedes-Benz 100 D",
    "Mercedes-Benz 115",
    "Mercedes-Benz 124",
    "Mercedes-Benz 126",
    "Mercedes-Benz 190",
    "Mercedes-Benz 190 D",
    "Mercedes-Benz 190 E",
    "Mercedes-Benz 200 - 300",
    "Mercedes-Benz 200 D",
    "Mercedes-Benz 200 E",
    "Mercedes-Benz 210 Van",
    "Mercedes-Benz 210 kombi",
    "Mercedes-Benz 230 - 300 CE Coupé",
    "Mercedes-Benz 260 - 560 SE",
    "Mercedes-Benz 260 - 560 SEL",
    "Mercedes-Benz 310 Van",
    "Mercedes-Benz 310 kombi",
    "Mercedes-Benz 500 - 600 SEC Coupé",
    "Mercedes-Benz A",
    "Mercedes-Benz A L",
    "Mercedes-Benz AMG GT",
    "Mercedes-Benz C",
    "Mercedes-Benz C Sportcoupé",
    "Mercedes-Benz C T",
    "Mercedes-Benz CL",
    "Mercedes-Benz CL",
    "Mercedes-Benz CLA",
    "Mercedes-Benz CLC",
    "Mercedes-Benz CLK Cabrio",
    "Mercedes-Benz CLK Coupé",
    "Mercedes-Benz CLS",
    "Mercedes-Benz Citan",
    "Mercedes-Benz E",
    "Mercedes-Benz E Cabrio",
    "Mercedes-Benz E Coupé",
    "Mercedes-Benz E T",
    "Mercedes-Benz G Cabrio",
    "Mercedes-Benz GL",
    "Mercedes-Benz GLA",
    "Mercedes-Benz GLC",
    "Mercedes-Benz GLE",
    "Mercedes-Benz GLK",
    "Mercedes-Benz MB 100",
    "Mercedes-Benz S",
    "Mercedes-Benz S Coupé",
    "Mercedes-Benz SL",
    "Mercedes-Benz SLC",
    "Mercedes-Benz SLK",
    "Mercedes-Benz SLR",
    "Mercedes-Benz Sprinter",
    "Mercedes-Benz Trieda A",
    "Mercedes-Benz Trieda B",
    "Mercedes-Benz Trieda C",
    "Mercedes-Benz Trieda E",
    "Mercedes-Benz Trieda G",
    "Mercedes-Benz Trieda M",
    "Mercedes-Benz Trieda R",
    "Mercedes-Benz Trieda S",
    "Mitsubishi 3000 GT",
    "Mitsubishi ASX",
    "Mitsubishi Carisma",
    "Mitsubishi Colt",
    "Mitsubishi Colt CC",
    "Mitsubishi Eclipse",
    "Mitsubishi Fuso canter",
    "Mitsubishi Galant",
    "Mitsubishi Galant Combi",
    "Mitsubishi Grandis",
    "Mitsubishi L200",
    "Mitsubishi L200 Pick up",
    "Mitsubishi L200 Pick up Allrad",
    "Mitsubishi L300",
    "Mitsubishi Lancer",
    "Mitsubishi Lancer Combi",
    "Mitsubishi Lancer Evo",
    "Mitsubishi Lancer Sportback",
    "Mitsubishi Outlander",
    "Mitsubishi Pajero",
    "Mitsubishi Pajero Pinin Wagon",
    "Mitsubishi Pajero Sport",
    "Mitsubishi Pajero Wagon",
    "Mitsubishi Pajeto Pinin",
    "Mitsubishi Space Star",
    "Nissan 100 NX",
    "Nissan 200 SX",
    "Nissan 350 Z",
    "Nissan 350 Z Roadster",
    "Nissan 370 Z",
    "Nissan Almera",
    "Nissan Almera Tino",
    "Nissan Cabstar E - T",
    "Nissan Cabstar TL2 Valnik",
    "Nissan GT-R",
    "Nissan Insterstar",
    "Nissan Juke",
    "Nissan King Cab",
    "Nissan Leaf",
    "Nissan Maxima",
    "Nissan Maxima QX",
    "Nissan Micra",
    "Nissan Murano",
    "Nissan NP300 Pickup",
    "Nissan NV200",
    "Nissan NV400",
    "Nissan Navara",
    "Nissan Note",
    "Nissan Pathfinder",
    "Nissan Patrol",
    "Nissan Patrol GR",
    "Nissan Pickup",
    "Nissan Pixo",
    "Nissan Primastar",
    "Nissan Primastar Combi",
    "Nissan Primera",
    "Nissan Primera Combi",
    "Nissan Pulsar",
    "Nissan Qashqai",
    "Nissan Serena",
    "Nissan Sunny",
    "Nissan Terrano",
    "Nissan Tiida",
    "Nissan Trade",
    "Nissan Vanette Cargo",
    "Nissan X-Trail",
    "Nissan e-NV200",
    "Opel Agila",
    "Opel Ampera",
    "Opel Antara",
    "Opel Astra",
    "Opel Astra cabrio",
    "Opel Astra caravan",
    "Opel Astra coupé",
    "Opel Calibra",
    "Opel Campo",
    "Opel Cascada",
    "Opel Corsa",
    "Opel Frontera",
    "Opel Insignia",
    "Opel Insignia kombi",
    "Opel Kadett",
    "Opel Meriva",
    "Opel Mokka",
    "Opel Movano",
    "Opel Omega",
    "Opel Signum",
    "Opel Vectra",
    "Opel Vectra Caravan",
    "Opel Vivaro",
    "Opel Vivaro Kombi",
    "Opel Zafira",
    "Peugeot 1007",
    "Peugeot 106",
    "Peugeot 107",
    "Peugeot 108",
    "Peugeot 2008",
    "Peugeot 205",
    "Peugeot 205 Cabrio",
    "Peugeot 206",
    "Peugeot 206 CC",
    "Peugeot 206 SW",
    "Peugeot 207",
    "Peugeot 207 CC",
    "Peugeot 207 SW",
    "Peugeot 306",
    "Peugeot 307",
    "Peugeot 307 CC",
    "Peugeot 307 SW",
    "Peugeot 308",
    "Peugeot 308 CC",
    "Peugeot 308 SW",
    "Peugeot 309",
    "Peugeot 4007",
    "Peugeot 4008",
    "Peugeot 405",
    "Peugeot 406",
    "Peugeot 407",
    "Peugeot 407 SW",
    "Peugeot 5008",
    "Peugeot 508",
    "Peugeot 508 SW",
    "Peugeot 605",
    "Peugeot 607",
    "Peugeot 806",
    "Peugeot 807",
    "Peugeot Bipper",
    "Peugeot RCZ",
    "Porsche 911 Carrera",
    "Porsche 911 Carrera Cabrio",
    "Porsche 911 Targa",
    "Porsche 911 Turbo",
    "Porsche 924",
    "Porsche 944",
    "Porsche 997",
    "Porsche Boxster",
    "Porsche Cayenne",
    "Porsche Cayman",
    "Porsche Macan",
    "Porsche Panamera",
    "Renault Captur",
    "Renault Clio",
    "Renault Clio Grandtour",
    "Renault Espace",
    "Renault Express",
    "Renault Fluence",
    "Renault Grand Espace",
    "Renault Grand Modus",
    "Renault Grand Scenic",
    "Renault Kadjar",
    "Renault Kangoo",
    "Renault Kangoo Express",
    "Renault Koleos",
    "Renault Laguna",
    "Renault Laguna Grandtour",
    "Renault Latitude",
    "Renault Mascott",
    "Renault Mégane",
    "Renault Mégane CC",
    "Renault Mégane Combi",
    "Renault Mégane Coupé",
    "Renault Mégane Grandtour",
    "Renault Mégane Scénic",
    "Renault Scénic",
    "Renault Talisman",
    "Renault Talisman Grandtour",
    "Renault Thalia",
    "Renault Twingo",
    "Renault Wind",
    "Renault Zoé",
    "Rover 200",
    "Rover 214",
    "Rover 218",
    "Rover 25",
    "Rover 400",
    "Rover 414",
    "Rover 416",
    "Rover 620",
    "Rover 75",
    "Saab 9-3",
    "Saab 9-3 Cabriolet",
    "Saab 9-3 Coupé",
    "Saab 9-3 SportCombi",
    "Saab 9-5",
    "Saab 9-5 SportCombi",
    "Saab 900",
    "Saab 900 C",
    "Saab 900 C Turbo",
    "Saab 9000",
    "Seat Alhambra",
    "Seat Altea",
    "Seat Altea XL",
    "Seat Arosa",
    "Seat Cordoba",
    "Seat Cordoba Vario",
    "Seat Exeo",
    "Seat Exeo ST",
    "Seat Ibiza",
    "Seat Ibiza ST",
    "Seat Inca",
    "Seat Leon",
    "Seat Leon ST",
    "Seat Mii",
    "Seat Toledo",
    "Smart Cabrio",
    "Smart City-Coupé",
    "Smart Compact Pulse",
    "Smart Forfour",
    "Smart Fortwo cabrio",
    "Smart Fortwo coupé",
    "Smart Roadster",
    "Subaru BRZ",
    "Subaru Forester",
    "Subaru Impreza",
    "Subaru Impreza Wagon",
    "Subaru Justy",
    "Subaru Legacy",
    "Subaru Legacy Outback",
    "Subaru Legacy Wagon",
    "Subaru Levorg",
    "Subaru Outback",
    "Subaru SVX",
    "Subaru Tribeca",
    "Subaru Tribeca B9",
    "Subaru XV",
    "Suzuki Alto",
    "Suzuki Baleno",
    "Suzuki Baleno kombi",
    "Suzuki Grand Vitara",
    "Suzuki Grand Vitara XL-7",
    "Suzuki Ignis",
    "Suzuki Jimny",
    "Suzuki Kizashi",
    "Suzuki Liana",
    "Suzuki SX4",
    "Suzuki SX4 Sedan",
    "Suzuki Samurai",
    "Suzuki Splash",
    "Suzuki Swift",
    "Suzuki Vitara",
    "Suzuki Wagon R+",
    "Toyota 4-Runner",
    "Toyota Auris",
    "Toyota Avensis",
    "Toyota Avensis Combi",
    "Toyota Avensis Van Verso",
    "Toyota Aygo",
    "Toyota Camry",
    "Toyota Carina",
    "Toyota Celica",
    "Toyota Corolla",
    "Toyota Corolla Combi",
    "Toyota Corolla Verso",
    "Toyota Corolla sedan",
    "Toyota FJ Cruiser",
    "Toyota GT86",
    "Toyota Hiace",
    "Toyota Hiace Van",
    "Toyota Highlander",
    "Toyota Hilux",
    "Toyota Land Cruiser",
    "Toyota MR2",
    "Toyota Paseo",
    "Toyota Picnic",
    "Toyota Prius",
    "Toyota RAV4",
    "Toyota Sequoia",
    "Toyota Starlet",
    "Toyota Supra",
    "Toyota Tundra",
    "Toyota Urban Cruiser",
    "Toyota Verso",
    "Toyota Yaris",
    "Toyota Yaris Verso",
    "Volkswagen Amarok",
    "Volkswagen Beetle",
    "Volkswagen Bora",
    "Volkswagen Bora Variant",
    "Volkswagen CC",
    "Volkswagen Caddy",
    "Volkswagen Caddy Van",
    "Volkswagen California",
    "Volkswagen Caravelle",
    "Volkswagen Crafter",
    "Volkswagen Crafter Kombi",
    "Volkswagen Crafter Van",
    "Volkswagen CrossTouran",
    "Volkswagen Eos",
    "Volkswagen Fox",
    "Volkswagen Golf",
    "Volkswagen Golf Cabrio",
    "Volkswagen Golf Plus",
    "Volkswagen Golf Sportvan",
    "Volkswagen Golf Variant",
    "Volkswagen Jetta",
    "Volkswagen LT",
    "Volkswagen Life",
    "Volkswagen Lupo",
    "Volkswagen Multivan",
    "Volkswagen New Beetle",
    "Volkswagen New Beetle Cabrio",
    "Volkswagen Passat",
    "Volkswagen Passat Alltrack",
    "Volkswagen Passat CC",
    "Volkswagen Passat Variant",
    "Volkswagen Passat Variant Van",
    "Volkswagen Phaeton",
    "Volkswagen Polo",
    "Volkswagen Polo Van",
    "Volkswagen Polo Variant",
    "Volkswagen Scirocco",
    "Volkswagen Sharan",
    "Volkswagen T4",
    "Volkswagen T4 Caravelle",
    "Volkswagen T4 Multivan",
    "Volkswagen T5",
    "Volkswagen T5 Caravelle",
    "Volkswagen T5 Multivan",
    "Volkswagen T5 Transporter Shuttle",
    "Volkswagen Tiguan",
    "Volkswagen Touareg",
    "Volkswagen Touran",
    "Volvo 240",
    "Volvo 340",
    "Volvo 360",
    "Volvo 460",
    "Volvo 850",
    "Volvo 850 kombi",
    "Volvo C30",
    "Volvo C70",
    "Volvo C70 Cabrio",
    "Volvo C70 Coupé",
    "Volvo S40",
    "Volvo S60",
    "Volvo S70",
    "Volvo S80",
    "Volvo S90",
    "Volvo V40",
    "Volvo V50",
    "Volvo V60",
    "Volvo V70",
    "Volvo V90",
    "Volvo XC60",
    "Volvo XC70",
    "Volvo XC90",
    "Škoda Citigo",
    "Škoda Fabia",
    "Škoda Fabia Combi",
    "Škoda Fabia Sedan",
    "Škoda Favorit",
    "Škoda Felicia",
    "Škoda Felicia Combi",
    "Škoda Octavia",
    "Škoda Octavia Combi",
    "Škoda Rapid",
    "Škoda Rapid Spaceback",
    "Škoda Roomster",
    "Škoda Superb",
    "Škoda Superb Combi",
    "Škoda Yeti",
  ];

  static const manufacturers = <String>[
    "Abarth",
    "Alfa Romeo",
    "Aston Martin",
    "Audi",
    "Bentley",
    "BMW",
    "Bugatti",
    "Cadillac",
    "Chevrolet",
    "Chrysler",
    "Citroën",
    "Dacia",
    "Daewoo",
    "Daihatsu",
    "Dodge",
    "Donkervoort",
    "DS",
    "Ferrari",
    "Fiat",
    "Fisker",
    "Ford",
    "Honda",
    "Hummer",
    "Hyundai",
    "Infiniti",
    "Iveco",
    "Jaguar",
    "Jeep",
    "Kia",
    "KTM",
    "Lada",
    "Lamborghini",
    "Lancia",
    "Land Rover",
    "Landwind",
    "Lexus",
    "Lotus",
    "Maserati",
    "Maybach",
    "Mazda",
    "McLaren",
    "Mercedes-Benz",
    "MG",
    "Mini",
    "Mitsubishi",
    "Morgan",
    "Nissan",
    "Opel",
    "Peugeot",
    "Porsche",
    "Renault",
    "Rolls-Royce",
    "Rover",
    "Saab",
    "Seat",
    "Skoda",
    "Smart",
    "SsangYong",
    "Subaru",
    "Suzuki",
    "Tesla",
    "Toyota",
    "Volkswagen",
    "Volvo",
  ];

  static const airplanes = <String>[
    "Aerospatiale SN.601 Corvette",
    "Airbus A220-100",
    "Airbus A220-300",
    "Airbus A300-600",
    'Airbus A300-600ST "Beluga"',
    'Airbus A300-600ST "Super Transporter"',
    "Airbus A300B2",
    "Airbus A300B4",
    "Airbus A300C4",
    "Airbus A310-200",
    "Airbus A310-300",
    "Airbus A318",
    "Airbus A319",
    "Airbus A319neo",
    "Airbus A320",
    "Airbus A320neo",
    "Airbus A321",
    "Airbus A321neo",
    "Airbus A330-200",
    "Airbus A330-300",
    'Airbus A330-700 "Beluga XL"',
    "Airbus A330-800neo",
    "Airbus A330-900neo",
    "Airbus A340-200",
    "Airbus A340-300",
    "Airbus A340-500",
    "Airbus A340-600",
    "Airbus A350-1000",
    "Airbus A350-900",
    "Airbus A380-800",
    "Antonov AN-12",
    "Antonov AN-124 Ruslan",
    "Antonov AN-140",
    "Antonov AN-24",
    "Antonov AN-26",
    "Antonov AN-28",
    "Antonov AN-30",
    "Antonov AN-32",
    "Antonov AN-72",
    "Antonov AN-74",
    "Antonov An-148",
    "Antonov An-158",
    "Antonov An-225 Mriya",
    "Aquila A 210",
    "Avro RJ100",
    "Avro RJ70",
    "Avro RJ85",
    "BAe 146-100",
    "BAe 146-200",
    "BAe 146-300",
    "Beechcraft 1900",
    "Beechcraft Baron",
    "Beriev Be-200 Altair",
    "Boeing 707",
    "Boeing 717",
    "Boeing 720B",
    "Boeing 727-100",
    "Boeing 727-200",
    "Boeing 737 MAX 10",
    "Boeing 737 MAX 7",
    "Boeing 737 MAX 8",
    "Boeing 737 MAX 9",
    "Boeing 737-200",
    "Boeing 737-300",
    "Boeing 737-400",
    "Boeing 737-500",
    "Boeing 737-600",
    "Boeing 737-700",
    "Boeing 737-800",
    "Boeing 737-900",
    "Boeing 747 LCF Dreamlifter",
    "Boeing 747-100",
    "Boeing 747-100 Freighter",
    "Boeing 747-200",
    "Boeing 747-200F",
    "Boeing 747-200M",
    "Boeing 747-300",
    "Boeing 747-300M",
    "Boeing 747-400",
    "Boeing 747-400F",
    "Boeing 747-400M",
    "Boeing 747-8F",
    "Boeing 747-8I",
    "Boeing 747SP",
    "Boeing 747SR",
    "Boeing 747SR Freighter",
    "Boeing 757-200",
    "Boeing 757-300",
    "Boeing 757F",
    "Boeing 767-200",
    "Boeing 767-300",
    "Boeing 767-400ER",
    "Boeing 777-200",
    "Boeing 777-200 Freighter",
    "Boeing 777-200ER",
    "Boeing 777-200LR",
    "Boeing 777-300",
    "Boeing 777-300ER",
    "Boeing 777-8",
    "Boeing 777-9",
    "Boeing 787-10",
    "Boeing 787-8",
    "Boeing 787-9",
    "Bombardier 415",
    "Bombardier BD-100 Challenger 300",
    "Bombardier BD-700 Global 5000",
    "Bombardier Global Express",
    "British Aerospace ATP",
    "British Aerospace Jetstream 31",
    "British Aerospace Jetstream 32",
    "British Aerospace Jetstream 41",
    "CASA/IPTN CN-235",
    "COMAC C919",
    "Canadair Challenger",
    "Canadair Regional Jet 100",
    "Canadair Regional Jet 1000",
    "Canadair Regional Jet 200",
    "Canadair Regional Jet 550",
    "Canadair Regional Jet 700",
    "Canadair Regional Jet 900",
    "Cessna 152",
    "Cessna 162",
    "Cessna 172",
    "Cessna 172 Cutlass RG",
    "Cessna 177 Cardinal RG",
    "Cessna 182 Skylane",
    "Cessna 206 Stationair",
    "Cessna 208 Caravan",
    "Cessna 210 Centurion",
    "Cessna 310",
    "Cessna Citation CJ2",
    "Cessna Citation CJ3",
    "Cessna Citation CJ4",
    "Cessna Citation Excel",
    "Cessna Citation I",
    "Cessna Citation II",
    "Cessna Citation III",
    "Cessna Citation Mustang",
    "Cessna Citation Sovereign",
    "Cessna Citation V",
    "Cessna Citation VI",
    "Cessna Citation VII",
    "Cessna Citation X",
    "Cessna CitationJet",
    "Cirrus SF50 Vision Jet",
    "Concorde",
    "Convair CV-240",
    "Convair CV-580",
    "Convair Convair CV-600",
    "Convair Convair CV-640",
    "Convair Convair Convair CV-640",
    "Curtiss C-46 Commando",
    "Dassault Falcon 2000",
    "Dassault Falcon 50",
    "Dassault Falcon 7X",
    "Dassault Falcon 900",
    "De Havilland Canada DHC-2 Beaver",
    "De Havilland Canada DHC-2 Turbo-Beaver",
    "De Havilland Canada DHC-3 Otter",
    "De Havilland Canada DHC-4 Caribou",
    "De Havilland Canada DHC-5 Buffalo",
    "De Havilland Canada DHC-6 Twin Otter",
    "De Havilland Canada DHC-7 Dash 7",
    "De Havilland Canada DHC-8-100 Dash 8",
    "De Havilland Canada DHC-8-200 Dash 8",
    "De Havilland Canada DHC-8-300 Dash 8",
    "De Havilland Canada DHC-8-400 Dash 8Q",
    "De Havilland DH.104 Dove",
    "De Havilland DH.114 Heron",
    "Diamond DA42",
    "Diamond DA62",
    "Douglas DC-10-10",
    "Douglas DC-10-30",
    "Douglas DC-3",
    "Douglas DC-6",
    "Douglas DC-8-50",
    "Douglas DC-8-62",
    "Douglas DC-8-72",
    "Douglas DC-9-10",
    "Douglas DC-9-20",
    "Douglas DC-9-30",
    "Douglas DC-9-40",
    "Douglas DC-9-50",
    "Embraer 170",
    "Embraer 175",
    "Embraer 190",
    "Embraer 195",
    "Embraer E190-E2",
    "Embraer E195-E2",
    "Embraer EMB 110 Bandeirante",
    "Embraer EMB 120 Brasilia",
    "Embraer Legacy 450",
    "Embraer Legacy 500",
    "Embraer Legacy 600",
    "Embraer Lineage 1000",
    "Embraer Phenom 100",
    "Embraer Phenom 300",
    "Embraer Praetor 500",
    "Embraer Praetor 600",
    "Embraer Praetor 650",
    "Embraer RJ135",
    "Embraer RJ140",
    "Embraer RJ145",
    "Evektor SportStar",
    "Fairchild Dornier 328JET",
    "Fairchild Dornier Do.228",
    "Fairchild Dornier Do.328",
    "Fokker 100",
    "Fokker 50",
    "Fokker 70",
    "Fokker F27 Friendship",
    "Fokker F28 Fellowship",
    "GippsAero GA8 Airvan",
    "Grumman G-21 Goose",
    "Grumman G-73 Turbo Mallard",
    "Gulfstream Aerospace G-159 Gulfstream I",
    "Gulfstream G280",
    "Gulfstream G650",
    "Gulfstream IV",
    "Gulfstream V",
    "Gulfstream/Rockwell (Aero) Commander",
    "Gulfstream/Rockwell (Aero) Turbo Commander",
    "Harbin Yunshuji Y12",
    "Hawker Siddeley HS 748",
    "Honda HA-420",
    "ICON A5",
    "Ilyushin IL114",
    "Ilyushin IL18",
    "Ilyushin IL62",
    "Ilyushin IL76",
    "Ilyushin IL86",
    "Ilyushin IL96",
    "Junkers Ju 52/3M",
    "LET 410",
    "Learjet 35",
    "Learjet 36",
    "Learjet 60",
    "Learjet C-21A",
    "Lockheed L-1011 Tristar",
    "Lockheed L-1049 Super Constellation",
    "Lockheed L-182",
    "Lockheed L-188 Electra",
    "McDonnell Douglas MD-11",
    "McDonnell Douglas MD-11C",
    "McDonnell Douglas MD-11F",
    "McDonnell Douglas MD-81",
    "McDonnell Douglas MD-82",
    "McDonnell Douglas MD-83",
    "McDonnell Douglas MD-87",
    "McDonnell Douglas MD-88",
    "McDonnell Douglas MD-90",
    "Mitsubishi Mu-2",
    "NAMC YS-11",
    "Partenavia P.68",
    "Piaggio P.180 Avanti",
    "Pilatus Britten-Norman BN-2A",
    "Pilatus Britten-Norman BN-2A Mk III Trislander",
    "Pilatus PC-12",
    "Pilatus PC-6 Turbo Porter",
    "Piper PA-28",
    "Piper PA-31 Navajo",
    "Piper PA-44 Seminole",
    "Piper PA-46",
    "Pipistrel Sinus",
    "Pipistrel Taurus",
    "Pipistrel Virus",
    "Reims-Cessna F406 Caravan II",
    "Robin ATL",
    "Saab 2000",
    "Saab SF340A/B",
    "Shorts SC-5 Belfast",
    "Shorts SC-7 Skyvan",
    "Shorts SD.330",
    "Shorts SD.360",
    "Socata TB-20 Trinidad",
    "Sukhoi Superjet 100-95",
    "TL Ultralight TL-96 Star",
    "Team Rocket F1",
    "Tecnam P2002 Sierra",
    "Tecnam P2006T",
    "Tecnam P2008",
    "Tecnam P2010",
    "Tecnam P2012 Traveller",
    "Tecnam P92 Eaglet",
    "Tecnam P92 Echo",
    "Tecnam P92 SeaSky",
    "Tecnam P96",
    "Tupolev Tu-134",
    "Tupolev Tu-144",
    "Tupolev Tu-154",
    "Tupolev Tu-204",
    "Tupolev Tu-214",
    "Yakovlev Yak-40",
    "Yakovlev Yak-42",
  ];

  static const vrCodes = <String>[
    "A",
    "ABH",
    "AFG",
    "AG",
    "AL",
    "AM",
    "AND",
    "ANG",
    "ARK",
    "AS",
    "AUA",
    "AUS",
    "AX",
    "AXA",
    "AZ",
    "B",
    "BD",
    "BDS",
    "BF",
    "BG",
    "BH",
    "BHT",
    "BIH",
    "BOL",
    "BR",
    "BRN",
    "BRU",
    "BS",
    "BUR",
    "BVI",
    "BW",
    "BY",
    "BZ",
    "C",
    "CAM",
    "CDN",
    "CGO",
    "CH",
    "CHN",
    "CI",
    "CL",
    "CO",
    "COM",
    "CR",
    "CV",
    "CY",
    "CYM",
    "CZ",
    "D",
    "DJI",
    "DK",
    "DOM",
    "DY",
    "DZ",
    "E",
    "EAK",
    "EAT",
    "EAU",
    "EAZ",
    "EC",
    "EIR",
    "ENG",
    "ER",
    "ES",
    "EST",
    "ET",
    "ETH",
    "F",
    "FIN",
    "FJI",
    "FL",
    "FO",
    "FSM",
    "G",
    "GB",
    "GBA",
    "GBG",
    "GBJ",
    "GBM",
    "GBZ",
    "GCA",
    "GE",
    "GH",
    "GQ",
    "GR",
    "GUY",
    "GW",
    "H",
    "HK",
    "HKJ",
    "HN",
    "HR",
    "I",
    "IL",
    "IND",
    "IR",
    "IRL",
    "IRQ",
    "IS",
    "J",
    "JA",
    "K",
    "KAN",
    "KIR",
    "KN",
    "KP",
    "KS",
    "KSA",
    "KWT",
    "KZ",
    "L",
    "LAO",
    "LAR",
    "LB",
    "LS",
    "LT",
    "LV",
    "M",
    "MA",
    "MAL",
    "MC",
    "MD",
    "MEX",
    "MGL",
    "MH",
    "MK",
    "MNE",
    "MO",
    "MOC",
    "MS",
    "MV",
    "MW",
    "N",
    "NA",
    "NAM",
    "NAU",
    "NC",
    "NEP",
    "NI",
    "NIC",
    "NL",
    "NZ",
    "OM",
    "P",
    "PA",
    "PAL",
    "PE",
    "PK",
    "PL",
    "PMR",
    "PNG",
    "PR",
    "PS",
    "PY",
    "Q",
    "RA",
    "RB",
    "RC",
    "RCA",
    "RCB",
    "RCH",
    "RG",
    "RH",
    "RI",
    "RIM",
    "RKS",
    "RL",
    "RM",
    "RMM",
    "RN",
    "RO",
    "ROK",
    "RP",
    "RSM",
    "RSO",
    "RU",
    "RUS",
    "RWA",
    "S",
    "SCO",
    "SCV",
    "SD",
    "SGP",
    "SK",
    "SLE",
    "SLO",
    "SME",
    "SMOM",
    "SN",
    "SO",
    "SOL",
    "SRB",
    "STP",
    "SUD",
    "SY",
    "SYR",
    "T",
    "TCH",
    "TG",
    "TJ",
    "TL",
    "TM",
    "TN",
    "TO",
    "TR",
    "TT",
    "TUV",
    "UA",
    "UAE",
    "USA",
    "UY",
    "UZ",
    "V",
    "VN",
    "VU",
    "WAG",
    "WAL",
    "WAN",
    "WD",
    "WG",
    "WL",
    "WS",
    "WSA",
    "WV",
    "YAR",
    "YV",
    "Z",
    "ZA",
    "ZW",
  ];

  static String vrcByLocale({required Locale locale}) {
    return switch (locale) {
      Locale.cs => "CZ",
      Locale.da => "DK",
      Locale.de_at => "A",
      Locale.de_ch => "CH",
      Locale.de => "D",
      Locale.el => "GR",
      Locale.en_au => "AUS",
      Locale.en_ca => "CDN",
      Locale.en_gb => "GB",
      Locale.en => "USA",
      Locale.es_mx => "MEX",
      Locale.ru => "RUS",
    };
  }
}

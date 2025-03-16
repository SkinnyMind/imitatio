import 'package:imitatio/src/datasets/models/finance.dart';

class PtFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "Banco Comercial Português, SA",
      "Caixa Geral de Depósitos, SA",
      "Novo Banco, SA",
      "Banco Santander Totta, SA",
      "Banco BPI, SA",
      "Banco Português de Investimento, SA",
      "Banco Montepio Geral, SA",
      "Banco Popular Portugal, SA",
      "Crédito Agrícola - Caixa Central, CRL",
      "Banco Internacional do Funchal, SA",
      "Banco Finantia, SA",
      "BBVA Portugal",
      "Deutsche Bank Portugal",
      "Caixa de Crédito Agrícola Mútuo de Leiria, CRL",
      "Caixa Económica Montepio Geral",
      "Banco CTT, SA",
      "EuroBic",
      "Caixa Económica da Misericórdia de Angra do Heroísmo",
      "Caixa de Crédito Agrícola Mútuo de Mafra",
      "Caixa Económica da Misericórdia de Ponta Delgada",
      "Caixa de Crédito Agrícola Mútuo de Porto de Mós",
      "Caixa de Crédito Agrícola Mútuo de Vila Franca de Xira",
      "Banco do Brasil, SA",
      "Novo Banco dos Açores, SA",
      "Caixa de Crédito Agrícola Mútuo de Pombal",
      "Banco Best, SA",
      "Banco Privado Atlântico - Europa, SA",
      "Bankinter, SA",
      "Banco Carregosa",
      "Caixa de Crédito Agrícola Mútuo do Nordeste",
      "Banco Português de Gestão, SA",
      "Caixa de Crédito Agrícola Mútuo de Torres Vedras",
      "Banco Invest, SA",
      "Banque BCP, SA - Sucursal em Portugal",
      "Banco Privado Português, SA",
      "Oney Bank - Sucursal em Portugal",
      "Banco Comercial dos Açores",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "Altri",
      "Banco Comercial Português",
      "Bascol",
      "Bial",
      "Biotecnol",
      "CMS-Helmets",
      "CTT",
      "Caixa Geral de Depósitos",
      "Carris",
      "Central de Cervejas",
      "Central de Cervejas",
      "Cerâmica de Valadares",
      "Chipidea",
      "Ciberbit",
      "Cimpor",
      "Cofina",
      "Companhia Industrial de Resinas Sinteticas",
      "Companhia União Fabril",
      "Continente",
      "Corporação Industrial do Norte",
      "Corticeira Amorim",
      "Crioestaminal",
      "Critical Software",
      "Delta Cafés",
      "EFACEC",
      "Glintt",
      "Grupo José de Mello",
      "Iberomoldes",
      "Impresa",
      "Lactogal",
      "Logoplaste",
      "Martifer",
      "Media Capital",
      "Medinfar",
      "Meo",
      "MobYD",
      "Modelo",
      "Montepio Geral",
      "Mota-Engil",
      "Move Interactive",
      "NOS",
      "Novabase",
      "Novo Banco",
      "Nutrinveste",
      "Portucel Soporcel",
      "Portugal Telecom",
      "Ramirez",
      "Renova",
      "Rádio e Televisão de Portugal",
      "SAPO",
      "SIC",
      "Semapa",
      "Simoldes",
      "Soares da Costa",
      "Sonae",
      "Sonae Indústria",
      "Sonaecom",
      "Sumol + Compal",
      "TIMWE",
      "TV-Alvitécnica",
      "TVI",
      "Tabaqueira",
      "Tejo Energia",
      "Televisão Independente",
      "Temahome",
      "Tomé Fèteira",
      "Tranquilidade",
      "Tupam Editores",
      "UMM",
      "Unicer",
      "Uniplaces",
      "Visabeira",
      "Vista Alegre",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const ["CRL", "S.A.", "S.A.", "S.F.", "Lda.", "SGPS"],
      false => const [
        "Cooperativa de Responsabilidade Limitada",
        "Sociedade Anónima",
        "Sociedade Abert",
        "Sociedade Fechada",
        "Limitada",
        "Sociedade Gestora de Participações Sociais",
      ],
    };
  }

  @override
  String get currencyCode => "EUR";

  @override
  String get currencySymbol => "€";
}

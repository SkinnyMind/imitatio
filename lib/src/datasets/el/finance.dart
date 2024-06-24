import 'package:imitatio/src/datasets/models/finance.dart';

class ElFinanceData extends FinanceDataset {
  @override
  List<String> get banks {
    return const [
      "Αlpha Βank Α.Ε.",
      "Eurobank Ergasias Α.Ε.",
      "National Bank of Greece Α.Ε.",
      "Piraeus Bank Α.Ε.",
      "Attica Bank Α.Ε.",
      "Cooperative Bank of Chania Α.Ε.",
      "Cooperative Bank of Drama Α.Ε.",
      "Cooperative Bank of Epirus Α.Ε.",
      "Cooperative Bank of Evros Α.Ε.",
      "Cooperative Bank of Karditsa Α.Ε.",
      "Cooperative Bank of Kastoria Α.Ε.",
      "Cooperative Bank of Kefalonia, Ithaca & Lefkada Α.Ε.",
      "Cooperative Bank of Peloponnese Α.Ε.",
      "Cooperative Bank of Pieria Α.Ε.",
      "Cooperative Bank of Serres Α.Ε.",
      "Cooperative Bank of Thessaly Α.Ε.",
      "Pancretan Cooperative Bank Α.Ε.",
      "Credicom Consumer Finance Bank Α.Ε.",
    ];
  }

  @override
  List<String> get companies {
    return const [
      "ANEK Lines",
      "Alpha Bank",
      "Alumil S.A",
      "Attica Bank",
      "Eurobank",
      "Forthnet",
      "Jumbo",
      "Marfin Investment Group",
      "Minoan Lines",
      "PC SYSTEMS",
      "Public",
      "Quest Holdings",
      "Sfakianakis",
      "Όμιλος Επιχειρήσεων Μυτιληναίος",
      "Όμιλος Εταιριών Ελληνικά Καλώδια",
      "Βιοχάλκο",
      "Δημόσια Επιχείρηση Ηλεκτρισμού",
      "ΕΛΙΝΟΙΛ",
      "Εθνική Τράπεζα της Ελλάδος",
      "Ελλάκτωρ",
      "Ελληνικά Πετρέλαια",
      "Εταιρεία Υδρεύσεως και Αποχετεύσεως Πρωτευούσης",
      "ΙΟΝ",
      "ΜΟΤΟΡ ΟΪΛ ΕΛΛΑΣ",
      "ΟΠΑΠ",
      "ΠΑΠΑΔΟΠΟΥΛΟΥ",
      "Πλαίσιο",
      "Τράπεζα Κύπρου",
      "Τράπεζα Πειραιώς",
      "Τράπεζα της Ελλάδος",
      "Τσιμέντα ΤΙΤΑΝ",
      "ΦΑΓΕ",
    ];
  }

  @override
  List<String> companyTypes({required bool isAbbr}) {
    return switch (isAbbr) {
      true => const [
          "EΠΕ",
          "ΑΕ",
          "ΑΝΕ",
          "ΕΕ",
          "ΙΚΕ",
          "ΚΑΕ",
          "ΚΟΙΝΣΕΠ",
          "ΟΕ",
          "ΠΑΕ",
        ],
      false => const [
          "Ανώνυμη Εταιρεία",
          "Ανώνυμη Ναυτιλιακή εταιρεία",
          "Εταιρεία Περιορισμένης Ευθύνης",
          "Ετερόρρυθμη Εταιρεία",
          "Ιδιωτική Κεφαλαιουχική Εταιρία",
          "Καλαθοσφαιρικές Ανώνυμες Επιχειρήσεις",
          "Κοινωνική Συνεταιριστική Επιχείρηση",
          "Κομματικές επιχειρήσεις",
          "Ομόρρυθμη Εταιρεία",
          "Ποδοσφαιρικές Ανώνυμες Επιχειρήσεις",
          "Συμπλοιοκτησία",
          "Συνεταιρισμός",
        ],
    };
  }

  @override
  String get currencyCode => 'EUR';

  @override
  String get currencySymbol => '€';
}

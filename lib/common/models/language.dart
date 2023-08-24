class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language({
    required this.id,
    required this.name,
    required this.flag,
    required this.languageCode,
  });
  static List<Language> languageList() {
    return <Language>[
      Language(id: 1, name: "English", flag: "🇺🇸", languageCode: "en"),
      Language(id: 2, name: "हिन्ढी", flag: "🇮🇳", languageCode: "hi"),
      Language(id: 3, name: "Deutsch", flag: "🇩🇪", languageCode: "de"),
      Language(id: 4, name: "العربية", flag: "🇸🇦", languageCode: "ar"),
      Language(id: 5, name: "اردو", flag: "🇵🇰", languageCode: "ur"),
    ];
  }
}

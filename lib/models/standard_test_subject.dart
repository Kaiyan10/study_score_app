class StandardTestSubject {
  StandardTestSubject({
    this.modernJapaneseTestSubject = "現代文",
    this.classicalJapaneseTestSubject = "古文",
    this.classicalChineseTestSubject = "漢文",
    this.math1TestSubject,
    this.math2TestSubject = "数学Ⅱ、数学B、数学C",
    this.science1TestSubject,
    this.science2TestSubject,
    this.society1TestSubject,
    this.society2TestSubject,
    this.readingTestSubject = "英語リーディング",
    this.listeningTestSubject = "英語リスニング",
    this.informationTestSubject = "情報",
    required this.isModernJapanese,
    required this.isClassicalJapanese,
    required this.isClassicalChinese,
    required this.isMath1,
    required this.isMath2,
    required this.isScience1,
    required this.isScience2,
    required this.isSociety1,
    required this.isSociety2,
    required this.isReading,
    required this.isListening,
    required this.isInformation,
  });

  String? modernJapaneseTestSubject;
  String? classicalJapaneseTestSubject;
  String? classicalChineseTestSubject;
  Math1Subject? math1TestSubject;
  String? math2TestSubject;
  ScienceSubject? science1TestSubject;
  ScienceSubject? science2TestSubject;
  SocietySubject? society1TestSubject;
  SocietySubject? society2TestSubject;
  String? readingTestSubject;
  String? listeningTestSubject;
  String? informationTestSubject;
  bool isModernJapanese;
  bool isClassicalJapanese;
  bool isClassicalChinese;
   bool isMath1;
   bool isMath2;
   bool isScience1;
   bool isScience2;
   bool isSociety1;
   bool isSociety2;
   bool isReading;
   bool isListening;
   bool isInformation;
}

enum Math1Subject {
  math1('数学1'),
  math1a('数学1a'),
  none('');

  const Math1Subject(this.displayName);

  final String displayName;
}

enum ScienceSubject {
  basicPhysics("物理基礎"),
  basicChemistry("化学基礎"),
  basicBiology("生物基礎"),
  basicGeology("地学基礎"),
  physics("物理"),
  chemistry("化学"),
  biology("生物"),
  geology("地学"),
  ;

  const ScienceSubject(this.displayName);
  final String displayName;
}

enum SocietySubject {
  basicSociety("地理総合／歴史総合／公共"),
  geography("地理総合、地理探究"),
  japaneseHistory("歴史総合、日本史探究"),
  worldHistory("歴史総合、世界史探究"),
  politicsAndEconomics("公共、政治・経済"),
  politicsAndEthics("公共、倫理"),
  ;

  const SocietySubject(this.displayName);
  final String displayName;
}

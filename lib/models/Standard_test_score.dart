class StandardTestScore {
  StandardTestScore({
    required this.no,
    required this.testName,
    required this.testDate,
    this.modernJapaneseTestScore,
    this.classicalJapaneseTestScore,
    this.classicalChineseTestScore,
    this.math1TestScore,
    this.math2TestScore,
    this.science1TestScore,
    this.science2TestScore,
    this.society1TestScore,
    this.society2TestScore,
    this.readingTestScore,
    this.listeningTestScore,
    this.informationTestScore,
  });

  final int no;
  final String testName;
  final DateTime testDate;
  int? modernJapaneseTestScore;
  int? classicalJapaneseTestScore;
  int? classicalChineseTestScore;
  int? math1TestScore;
  int? math2TestScore;
  int? science1TestScore;
  int? science2TestScore;
  int? society1TestScore;
  int? society2TestScore;
  int? readingTestScore;
  int? listeningTestScore;
  int? informationTestScore;
}

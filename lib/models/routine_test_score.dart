class RoutineTestScore {
  RoutineTestScore({
    required this.testName,
    required this.englishScore,
    required this.mathScore,
    required this.languageScore,
    required this.scienceScore,
    required this.socialScore,
    this.musicScore,
    this.artScore,
    this.industrialArtsAndHomemakingScore,
    this.physicalEducationScore,
  });

  final String testName;

  final int languageScore;
  final int mathScore;
  final int englishScore;
  final int scienceScore;
  final int socialScore;
  int? musicScore;
  int? artScore;
  int? industrialArtsAndHomemakingScore;
  int? physicalEducationScore;
}

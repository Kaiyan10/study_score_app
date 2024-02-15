class SubjectData{
  SubjectData({
    required this.subjectName,
    required this.score,
    this.rank,
    this.standardScore,
    this.averageScore,
    this.maxScore,
    this.minScore
  });


  final String subjectName;
  final double score;
  int? rank;
  double? standardScore;
  double? averageScore;
  double? maxScore;
  double? minScore;
}
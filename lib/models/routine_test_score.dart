import './subject_data.dart';

class RoutineTestScore {
  RoutineTestScore({
    required this.testName,
    required this.subjectDatas,
  });

  final String testName;
  final List<SubjectData> subjectDatas;
}

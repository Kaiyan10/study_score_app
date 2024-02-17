import 'package:test_score_app/models/standard_test_subject.dart';

import '../models/subject_data.dart';
import '../models/Standard_test_score.dart';

var dummySubject = StandardTestSubject(
  math1TestSubject: Math1Subject.math1a,
  science1TestSubject: ScienceSubject.physics,
  science2TestSubject: ScienceSubject.chemistry,
  society1TestSubject: SocietySubject.geography
);

var dummyScore = [
  StandardTestScore(
      no: 1,
      testName: "第１回　共通テスト本番レベル模試",
      modernJapaneseTestScore: 60,
    classicalJapaneseTestScore: 20,
    classicalChineseTestScore: 30,
    math1TestScore: 30,
    math2TestScore: 50,
    science1TestScore: 40,
    science2TestScore: 30,
    society1TestScore: 30,
    readingTestScore: 60,
    listeningTestScore: 50,
    informationTestScore: 60
  ),
  StandardTestScore(
      no: 1,
      testName: "第２回　共通テスト本番レベル模試",
      modernJapaneseTestScore: 70,
      classicalJapaneseTestScore: 20,
      classicalChineseTestScore: 40,
      math1TestScore: 70,
      math2TestScore: 20,
      science1TestScore: 70,
      science2TestScore: 40,
      society1TestScore: 70,
      readingTestScore: 80,
      listeningTestScore: 60,
      informationTestScore: 50
  ),
  StandardTestScore(
      no: 1,
      testName: "第３回　共通テスト本番レベル模試",
      modernJapaneseTestScore: 70,
      classicalJapaneseTestScore: 30,
      classicalChineseTestScore: 40,
      math1TestScore: 90,
      math2TestScore: 90,
      science1TestScore: 70,
      science2TestScore: 80,
      society1TestScore: 20,
      readingTestScore: 50,
      listeningTestScore: 70,
      informationTestScore: 30
  ),
];
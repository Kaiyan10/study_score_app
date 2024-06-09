import 'package:flutter/material.dart';
import 'package:test_score_app/models/standard_test_score.dart';
import 'package:test_score_app/models/standard_test_subject.dart';

List<DataRow> makingDataRow(
  StandardTestSubject subjects,
  List<StandardTestScore> scores,
) {
  return [
    if (subjects.isModernJapanese == true)
      makingOneDataRow(scores, subjects.modernJapaneseTestSubject.toString()),
    if (subjects.isClassicalJapanese == true)
      makingOneDataRow(
          scores, subjects.classicalJapaneseTestSubject.toString()),
    if (subjects.isClassicalChinese == true)
      makingOneDataRow(scores, subjects.classicalChineseTestSubject.toString()),
    if (subjects.isMath1 == true)
      makingOneDataRow(
          scores, subjects.math1TestSubject!.displayName.toString()),
    if (subjects.isMath2 == true)
      makingOneDataRow(scores, subjects.math2TestSubject.toString()),
    if (subjects.isScience1 == true)
      makingOneDataRow(
          scores, subjects.science1TestSubject!.displayName.toString()),
    if (subjects.isScience2 == true)
      makingOneDataRow(
          scores, subjects.science2TestSubject!.displayName.toString()),
    if (subjects.isSociety1 == true)
      makingOneDataRow(
          scores, subjects.society1TestSubject!.displayName.toString()),
    if (subjects.isSociety2 == true)
      makingOneDataRow(
          scores, subjects.society2TestSubject!.displayName.toString()),
    if (subjects.isReading == true)
      makingOneDataRow(scores, subjects.readingTestSubject.toString()),
    if (subjects.isListening == true)
      makingOneDataRow(scores, subjects.listeningTestSubject.toString()),
    if (subjects.isInformation == true)
      makingOneDataRow(scores, subjects.informationTestSubject.toString()),
  ];
}

DataRow makingOneDataRow(List<StandardTestScore> scores, String subjectName) {
  return DataRow(cells: [
    DataCell(
      Container(
        width: 80,
        child: Text(
          subjectName,
          softWrap: true,
        ),
      ),
    ),
    for (final score in scores)
      DataCell(
        Container(
          width: 80,
          child: Text(
            score.modernJapaneseTestScore.toString(),
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
  ]);
}

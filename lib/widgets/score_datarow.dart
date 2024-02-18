import 'package:flutter/material.dart';
import 'package:test_score_app/models/standard_test_score.dart';
import 'package:test_score_app/models/standard_test_subject.dart';

List<DataRow> makingDataRow(
  StandardTestSubject subjects,
  List<StandardTestScore> scores,
) {
  return [
    if (subjects.isModernJapanese == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.modernJapaneseTestSubject.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.modernJapaneseTestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isClassicalJapanese == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.classicalJapaneseTestSubject.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.classicalJapaneseTestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isClassicalChinese == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.classicalChineseTestSubject.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.classicalChineseTestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isMath1 == true)
      DataRow(cells: [
        DataCell(
          Text(subjects.math1TestSubject!.displayName.toString()),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.math1TestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isMath2 == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.math2TestSubject.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.math2TestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isScience1 == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.science1TestSubject!.displayName.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.science1TestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isScience2 == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.science2TestSubject!.displayName.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.science2TestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isSociety1 == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.society1TestSubject!.displayName.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.society1TestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isSociety2 == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.society2TestSubject!.displayName.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.society2TestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isReading == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.readingTestSubject.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.readingTestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isListening == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.listeningTestSubject.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.listeningTestScore.toString(),
            ),
          ),
      ]),
    if (subjects.isInformation == true)
      DataRow(cells: [
        DataCell(
          Text(
            subjects.informationTestSubject.toString(),
          ),
        ),
        for (final score in scores)
          DataCell(
            Text(
              score.informationTestScore.toString(),
            ),
          ),
      ]),
  ];
}

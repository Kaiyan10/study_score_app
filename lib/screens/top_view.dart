import 'package:flutter/material.dart';
import 'package:test_score_app/data/dummy_data.dart';

class TopViewScreen extends StatefulWidget {
  const TopViewScreen({Key? key}) : super(key: key);

  @override
  State<TopViewScreen> createState() => _TopViewScreenState();
}

class _TopViewScreenState extends State<TopViewScreen> {
  final selectedIndex = <int>{};
  final subjects = dummySubject;
  final scores = dummyScore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Topページ"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(
                label: Container(width: 100, child: Text("科目")),
              ),
              for (final score in scores)
                DataColumn(
                    label: Container(
                  width: 80,
                  child: Text(
                    score.testName,
                    style: const TextStyle(fontSize: 10),
                    softWrap: true,
                  ),
                )),
            ],
            rows: [
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
              if (subjects.science1TestSubject != null)
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
              if (subjects.science2TestSubject != null)
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
              if (subjects.society1TestSubject != null)
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
              if (subjects.society2TestSubject != null)
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
              if (subjects.readingTestSubject != null)
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
              if (subjects.listeningTestSubject != null)
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
              if (subjects.listeningTestSubject != null)
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
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_score_app/data/dummy_data.dart';
import 'package:test_score_app/models/Standard_test_score.dart';
import 'package:test_score_app/models/standard_test_subject.dart';
import 'package:test_score_app/screens/chart_view.dart';

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
              DataColumn(label: Text("科目"),),
              for (final score in scores)
                DataColumn(
                    label: Text(
                  score.testName,
                  style: TextStyle(fontSize: 10),
                )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text(subjects.modernJapaneseTestSubject.toString(),),),
                for (final score in scores)
                  DataCell(Text(score.modernJapaneseTestScore.toString(),),),
              ]),
              DataRow(cells: [
                DataCell(Text(subjects.classicalJapaneseTestSubject.toString(),),),
                for (final score in scores)
                  DataCell(Text(score.classicalJapaneseTestScore.toString(),),),
              ]),
              DataRow(cells: [
                DataCell(Text(subjects.classicalChineseTestSubject.toString(),),),
                for (final score in scores)
                  DataCell(Text(score.classicalChineseTestScore.toString(),),),
              ]),

            ],
          ),
        ));
  }
}

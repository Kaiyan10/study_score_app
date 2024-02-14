import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_score_app/data/dummy_data.dart';

class TopViewScreen extends StatefulWidget {
  const TopViewScreen({Key? key}) : super(key: key);

  @override
  State<TopViewScreen> createState() => _TopViewScreenState();
}

class _TopViewScreenState extends State<TopViewScreen> {
  final selectedIndex = <int>{};
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
            columns:  const <DataColumn>[
              DataColumn(
                label: Text('試験名'),
              ),
              DataColumn(
                label: Text('英語'),
              ),
              DataColumn(
                label: Text('数学'),
              ),
              DataColumn(
                label: Text('理科'),
              ),
              DataColumn(
                label: Text('社会'),
              ),
              DataColumn(
                label: Text('音楽'),
              ),
            ],
            rows: List<DataRow>.generate(
                scores.length,
                (index) => DataRow(cells: <DataCell>[
                  DataCell(Text(scores[index].testName)),
                      DataCell(Text(scores[index].englishScore.toString())),
                  DataCell(Text(scores[index].mathScore.toString())),
                  DataCell(Text(scores[index].scienceScore.toString())),
                  DataCell(Text(scores[index].socialScore.toString())),
                  DataCell(Text(scores[index].musicScore.toString() ?? "0")),
                    ])),
          ),
        ));
  }
}

// ListView.builder(
// itemCount: scores.length,
// itemBuilder: (ctx ,index) =>
// Text(scores[index].testName))

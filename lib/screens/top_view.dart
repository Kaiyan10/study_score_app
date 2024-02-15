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
            columns:  List<DataColumn>.generate(
              scores.length,
              (index) => DataColumn(label: (Text(scores[index].testName)))
            )
              ,
            rows: List<DataRow>.generate(
                scores.length,
                (index) => DataRow(cells: <DataCell>[
                  for(final subjectData in scores[index].subjectDatas)...{
                    DataCell(Text(subjectData.subjectName)),
                  }
                    ])),
          ),
          ),
        );
  }
}



// ListView.builder(
// itemCount: scores.length,
// itemBuilder: (ctx ,index) =>
// Text(scores[index].testName))

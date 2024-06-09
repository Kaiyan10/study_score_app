import 'package:flutter/material.dart';
import 'package:test_score_app/data/dummy_data.dart';
import 'package:test_score_app/widgets/score_datarow.dart';
import 'package:test_score_app/widgets/new_stdscore_input.dart';

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
        title: const Text(
          "Topページ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
                columns: [
                  DataColumn(
                    label: Container(
                      width: 80,
                      child: const Text(""),
                    ),
                  ),
                  for (final score in scores)
                    DataColumn(
                        label: Container(
                      width: 80,
                      child: Text(
                        score.testName,
                        style: const TextStyle(fontSize: 12),
                        softWrap: true,
                      ),
                    )),
                ],
                rows: makingDataRow(
                  subjects,
                  scores,
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (ctx) => NewStdScoreInput(
                    standardTestSubject: dummySubject,
                  ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

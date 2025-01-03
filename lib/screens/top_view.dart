import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_score_app/data/dummy_data.dart';
import 'package:test_score_app/widgets/score_datarow.dart';
import 'package:test_score_app/widgets/new_stdscore_input.dart';

class TopViewScreen extends ConsumerStatefulWidget {
  const TopViewScreen({super.key});

  @override
  ConsumerState<TopViewScreen> createState() => _TopViewScreenState();
}

enum TestTypes { firstTest, secondTest }

class _TopViewScreenState extends ConsumerState<TopViewScreen> {
  final selectedIndex = <int>{};
  final subjects = dummySubject;
  final scores = dummyScore;
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ToggleButtons(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
                isSelected: isSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = i == index;
                    }
                  });
                },
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text("共通テスト"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text("二次試験"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            if (isSelected[0] == true)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    columns: [
                      DataColumn(
                        label: SizedBox(
                          width: 80,
                          child: Text(""),
                        ),
                      ),
                      for (final score in scores)
                        DataColumn(
                            label: SizedBox(
                          width: 80,
                          child: Text(
                            score.testName,
                            style: TextStyle(fontSize: 12),
                            softWrap: true,
                          ),
                        )),
                    ],
                    rows: makingDataRow(
                      subjects,
                      scores,
                    )),
              ),
            if (isSelected[1] == true) Text("二次試験")
          ],
        ),
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

import 'package:flutter/material.dart';
import 'package:test_score_app/data/dummy_data.dart';
import 'package:test_score_app/models/routine_test_score.dart';

class TopViewScreen extends StatefulWidget {
  const TopViewScreen({Key? key}) : super(key: key);

  @override
  State<TopViewScreen> createState() => _TopViewScreenState();
}

class _TopViewScreenState extends State<TopViewScreen> {
  final selectedIndex = <int>{};
  final scores = dummyScore;
  final subjectNameList = subjectNameListMaking(dummyScore);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text("Topページ"),
        ),
        body:Column(
          children: [
            for (final name in subjectNameList)
              Text(name),
          ],
        )
        );
  }
}


List<String> subjectNameListMaking(List<RoutineTestScore> testScores){
  List<String> subjectNameList = [];
  for (int i=0;i<testScores.length;i++)
    for(int j=0;j<testScores[i].subjectDatas.length;j++)
      subjectNameList.add(testScores[i].subjectDatas[j].subjectName);

  subjectNameList = subjectNameList.toSet().toList();
  return subjectNameList;

}


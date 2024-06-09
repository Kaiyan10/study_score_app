import 'package:flutter/material.dart';
import 'package:test_score_app/data/dummy_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:test_score_app/models/standard_test_score.dart';

class ChartView extends StatefulWidget {
  const ChartView({Key? key}) : super(key: key);

  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  final subjects = dummySubject;
  final scores = dummyScore;

  List<String> yLabel = [];

  @override
  Widget build(BuildContext context) {
    yLabel = addChartYLabel(scores);
    var spotCount = yLabel.length;

    return Scaffold(
        appBar: AppBar(
          title: const Text("成績表"),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.only(left: 8, right: 32),
                height: 300,
                width: 600,
                child: LineChart(
                  LineChartData(
                    minY: 0,
                    maxY: 100,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

List<String> addChartYLabel(List<StandardTestScore> scores) {
  List<String> yLabel = [];

  for (final testData in scores) {
    yLabel.add(testData.testName);
  }
  ;

  return yLabel;
}

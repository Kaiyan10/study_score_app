import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

const testType = ["定期テスト", "共通テスト模試", "2次試験模試"];
const testName = [
  "1年1学期中間",
  "1年1学期中期末",
  "1年2学期中間",
  "1年2学期期末",
  "1年3学期期末",
  "1年1学期中間",
  "2年1学期中期末",
  "2年2学期中間",
  "2年2学期期末",
  "2年3学期期末",
];

class ChartView extends StatefulWidget {
  const ChartView({Key? key}) : super(key: key);

  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  String isSelectedValue = testType.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("成績推移"),
        ),
        body: Column(
          children: [
            DropdownButton(
              items: testType.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: isSelectedValue,
              onChanged: (String? value) {
                setState(() {
                  isSelectedValue = value!;
                });
              },
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.only(left: 8, right: 32),
                height: 300,
                width: 600,
                child: LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(1, 5.4),
                          FlSpot(2, 8.5),
                          FlSpot(3, 12.8),
                          FlSpot(4, 15.1),

                        ],
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
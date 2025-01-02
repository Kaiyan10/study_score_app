import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ChoiceSchoolDataWidget extends StatelessWidget {
  const ChoiceSchoolDataWidget({super.key});

  

  @override
  Widget build(BuildContext context) {

        final Brightness brightness = Theme.of(context).brightness;
    const double progressvalue = 70.0;

    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "北海道大学",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "総合入試理系 数学重点",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        child: const Text("A"),
                        backgroundColor: Colors.greenAccent,
                        radius: 20,
                      )),
                  Expanded(
                    flex: 3,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('images/hokkaido_university.jpg'),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("大学入試共通テスト"),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          child: SfLinearGauge(
                            showTicks: false,
                        showLabels: false,
                        animateAxis: true,
                        axisTrackStyle: LinearAxisTrackStyle(
                          thickness: 5,
                          edgeStyle: LinearEdgeStyle.bothCurve,
                          borderWidth: 1,
                          borderColor: brightness == Brightness.dark
                              ? const Color(0xff898989)
                              : Colors.grey[350],
                          color: brightness == Brightness.dark
                              ? Colors.transparent
                              : Colors.grey[350],
                        ),
                        barPointers: const <LinearBarPointer>[
                          LinearBarPointer(
                              value: progressvalue,
                              thickness: 5,
                              edgeStyle: LinearEdgeStyle.bothCurve,
                              color: Colors.blue),
                        ],
                          ),
                        ),
                        
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "630 / 900",
                          style:
                              TextStyle(fontSize: 12, color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("個別試験"),
                        SizedBox(
                          height: 10,
                        ),
                        LinearProgressIndicator(
                          value: 0.4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "180 / 450",
                          style:
                              TextStyle(fontSize: 12, color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

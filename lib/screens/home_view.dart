import 'package:flutter/material.dart';
import 'package:test_score_app/models/first_choice_school.dart';

class HomeViewScreen extends StatefulWidget {
  const HomeViewScreen({super.key});

  @override
  State<HomeViewScreen> createState() => _HomeViewScreenState();
}

class _HomeViewScreenState extends State<HomeViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text("第一志望校"),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20)),
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
                            flex: 7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "北海道大学",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "総合入試理系　数学重点",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
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
                                LinearProgressIndicator(
                                  value: 0.7,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "630 / 900",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blueGrey),
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
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blueGrey),
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
            ),
          ],
        ),
      ),
    );
  }
}

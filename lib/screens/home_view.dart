import 'package:flutter/material.dart';
import 'package:test_score_app/models/first_choice_school.dart';
import 'package:test_score_app/widgets/choice_school_data.dart';
import 'package:test_score_app/widgets/test_day_conter.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("第一志望校"),
                TextButton(
                  onPressed: () => {debugPrint('press button')},
                  child: Text("他の志望校を見る→"),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ChoiceSchoolDataWidget(),
            const SizedBox(
              height: 5,
            ),
            TestDayConter(),
          ],
        ),
      ),
    );
  }
}

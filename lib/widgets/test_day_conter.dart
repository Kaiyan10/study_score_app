import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_score_app/models/first_choice_school.dart';

class TestDayConter extends ConsumerWidget {
  const TestDayConter({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    FirstChoiceSchool choiceSchool = ref.read(firstChoiceSchoolProvider);
    String firstTestDuration = choiceSchool.firstTestDate!.difference(DateTime.now()).inDays.toString();
    String secondTestDuration = choiceSchool.secondTestDate!.difference(DateTime.now()).inDays.toString();
    ref.listen(firstChoiceSchoolProvider, (previous,update){
      firstTestDuration = update.firstTestDate!.difference(DateTime.now()).inDays.toString();
      secondTestDuration = update.secondTestDate!.difference(DateTime.now()).inDays.toString();
    });
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "大学入試共通テストまで",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "$firstTestDuration 日",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "二次試験まで",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "$secondTestDuration 日",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

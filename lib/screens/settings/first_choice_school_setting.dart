import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:test_score_app/models/first_choice_school.dart';
import 'package:test_score_app/models/standard_test_subject.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:test_score_app/screens/settings/editting_screen.dart';
import 'package:intl/intl.dart';

class FirstChoiceSchoolSettingScreen extends ConsumerStatefulWidget {
  const FirstChoiceSchoolSettingScreen({super.key});

  @override
  ConsumerState<FirstChoiceSchoolSettingScreen> createState() =>
      _TestTypeSettingsScreenState();
}

class _TestTypeSettingsScreenState
    extends ConsumerState<FirstChoiceSchoolSettingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FirstChoiceSchool choiceSchool = ref.watch(firstChoiceSchoolProvider);
    StandardTestSubject standardTestSubject =
        ref.watch(standardTestSubjectProvider);
    return Scaffold(
        appBar: AppBar(),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: const Text("大学情報"),
              tiles: [
                SettingsTile.navigation(
                    leading: const Icon(Icons.school),
                    title: Text("大学名"),
                    value: Text(choiceSchool.schoolName),
                    onPressed: (context) async {
                      choiceSchool.schoolName = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingEdittingScreen(
                                  targetText: choiceSchool.schoolName)));
                      setState(() {
                        ref.watch(firstChoiceSchoolProvider.notifier).state =
                            choiceSchool;
                      });
                    }),
                SettingsTile.navigation(
                  leading: const Icon(Icons.school),
                  title: Text("学部名"),
                  value: Text(choiceSchool.depertment),
                  onPressed: (context) async {
                    choiceSchool.depertment = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingEdittingScreen(
                                targetText: choiceSchool.depertment)));
                    setState(() {
                      ref.watch(firstChoiceSchoolProvider.notifier).state =
                          choiceSchool;
                    });
                  },
                ),
                SettingsTile.navigation(
                  leading: const Icon(Icons.school),
                  title: Text("学科／コース名"),
                  value: Text(choiceSchool.faculty),
                  onPressed: (context) async {
                    choiceSchool.faculty = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingEdittingScreen(
                                targetText: choiceSchool.faculty)));
                    setState(() {
                      ref.watch(firstChoiceSchoolProvider.notifier).state =
                          choiceSchool;
                    });
                  },
                )
              ],
            ),
            SettingsSection(title: const Text("試験日設定"), tiles: [
              SettingsTile.navigation(
                title: Text("共通テスト日付"),
                value: (choiceSchool.firstTestDate!=null)?Text(DateFormat.yMd().format(choiceSchool.firstTestDate??DateTime.now())):Text(""),
                onPressed: (context) async{
                  choiceSchool.firstTestDate = await
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SfDateRangePicker(
                        headerStyle: DateRangePickerHeaderStyle(
                          textAlign: TextAlign.left,
                        ),
                        selectionMode: DateRangePickerSelectionMode.single,
                        enablePastDates: true,
                        showActionButtons: true,
                        onCancel: () {
                          Navigator.pop(context);
                        },
                        onSubmit: (Object? value) {
                          Navigator.pop(context, value);
                        },
                      );
                      
                    },
                  );
                  setState(() {
                      ref.watch(firstChoiceSchoolProvider.notifier).state =
                          choiceSchool;
                    });
                },
              ), SettingsTile.navigation(
                title: Text("二次試験日付"),
                value: (choiceSchool.secondTestDate!=null)?Text(DateFormat.yMd().format(choiceSchool.secondTestDate??DateTime.now())):Text(""),
                onPressed: (context) async{
                  choiceSchool.secondTestDate = await
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SfDateRangePicker(
                        headerStyle: DateRangePickerHeaderStyle(
                          textAlign: TextAlign.left,
                        ),
                        selectionMode: DateRangePickerSelectionMode.single,
                        enablePastDates: true,
                        showActionButtons: true,
                        onCancel: () {
                          Navigator.pop(context);
                        },
                        onSubmit: (Object? value) {
                          Navigator.pop(context, value);
                        },
                      );
                      
                    },
                  );
                  setState(() {
                      ref.watch(firstChoiceSchoolProvider.notifier).state =
                          choiceSchool;
                    });
                },
              )
            ]),
            SettingsSection(title: const Text("共通テスト科目設定"), tiles: [
              SettingsTile.switchTile(
                initialValue: standardTestSubject.isModernJapanese,
                onToggle: (value) {
                  setState(() {
                    standardTestSubject.isModernJapanese = value;
                    ref.watch(standardTestSubjectProvider.notifier).state =
                        standardTestSubject;
                  });
                },
                title: const Text("現代文"),
              ),
              SettingsTile.switchTile(
                initialValue: standardTestSubject.isClassicalJapanese,
                onToggle: (value) {
                  setState(() {
                    standardTestSubject.isClassicalJapanese = value;
                    ref.watch(standardTestSubjectProvider.notifier).state =
                        standardTestSubject;
                  });
                },
                title: const Text("古文"),
              ),
              SettingsTile.switchTile(
                initialValue: standardTestSubject.isClassicalChinese,
                onToggle: (value) {
                  setState(() {
                    standardTestSubject.isClassicalChinese = value;
                    ref.watch(standardTestSubjectProvider.notifier).state =
                        standardTestSubject;
                  });
                },
                title: const Text("漢文"),
              ),
              SettingsTile.switchTile(
                initialValue: standardTestSubject.isMath1,
                onToggle: (value) {
                  setState(() {
                    standardTestSubject.isMath1 = value;
                    ref.watch(standardTestSubjectProvider.notifier).state =
                        standardTestSubject;
                  });
                },
                title: const Text("数学1"),
              ),
              SettingsTile.switchTile(
                initialValue: standardTestSubject.isMath2,
                onToggle: (value) {
                  setState(() {
                    standardTestSubject.isMath2 = value;
                    ref.watch(standardTestSubjectProvider.notifier).state =
                        standardTestSubject;
                  });
                },
                title: const Text("数学2"),
              ),
            ])
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:test_score_app/models/standard_test_subject.dart';
import 'package:settings_ui/settings_ui.dart';

class FirstChoiceSchoolSettingScreen extends StatefulWidget {
  final StandardTestSubject standardTestSubject;

  const FirstChoiceSchoolSettingScreen(
      {super.key, required this.standardTestSubject});

  @override
  State<FirstChoiceSchoolSettingScreen> createState() =>
      _TestTypeSettingsScreenState();
}

class _TestTypeSettingsScreenState
    extends State<FirstChoiceSchoolSettingScreen> {
  late StandardTestSubject subjects;

  void _showBottomSelect(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            child: Column(
              children: [
                Center(
                  child: MenuAnchor(
                    menuChildren: [],
                  ),
                ),
                TextButton(onPressed: () {}, child: Text("確定"))
              ],
            ),
          );
        });
  }

  @override
  void initState() {
    super.initState();

    subjects = widget.standardTestSubject;
  }

  @override
  Widget build(BuildContext context) {
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
                    value: Text("北海道大学"),
                    onPressed: (context) {
                      _showBottomSelect(context);
                    }),
                SettingsTile.navigation(
                  leading: const Icon(Icons.school),
                  title: Text("学部名"),
                  value: Text("総合入試理系"),
                  onPressed: (context) {},
                ),
                SettingsTile.navigation(
                  leading: const Icon(Icons.school),
                  title: Text("学科／コース名"),
                  value: Text("数学重点"),
                  onPressed: (context) {},
                )
              ],
            ),
            SettingsSection(tiles: [
              SettingsTile.switchTile(
                initialValue: subjects.isModernJapanese,
                onToggle: (value) {
                  setState(() {
                    subjects.isModernJapanese = value;
                  });
                },
                title: const Text("現代文"),
              ),
              SettingsTile.switchTile(
                initialValue: subjects.isClassicalJapanese,
                onToggle: (value) {
                  setState(() {
                    subjects.isClassicalJapanese = value;
                  });
                },
                title: const Text("古文"),
              ),
              SettingsTile.switchTile(
                initialValue: subjects.isClassicalChinese,
                onToggle: (value) {
                  setState(() {
                    subjects.isClassicalChinese = value;
                  });
                },
                title: const Text("漢文"),
              ),
              SettingsTile.switchTile(
                initialValue: subjects.isMath1,
                onToggle: (value) {
                  setState(() {
                    subjects.isMath1 = value;
                  });
                },
                title: const Text("数学1"),
              ),
              SettingsTile.switchTile(
                initialValue: subjects.isMath2,
                onToggle: (value) {
                  setState(() {
                    subjects.isMath2 = value;
                  });
                },
                title: const Text("数学2"),
              ),
            ])
          ],
        ));
  }
}

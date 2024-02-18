import 'package:flutter/material.dart';
import 'package:test_score_app/models/standard_test_subject.dart';
import 'package:settings_ui/settings_ui.dart';

class StandardTestSubjectSettingScreen extends StatefulWidget {
  final StandardTestSubject standardTestSubject;

  const StandardTestSubjectSettingScreen(
      {super.key, required this.standardTestSubject});

  @override
  State<StandardTestSubjectSettingScreen> createState() =>
      _TestTypeSettingsScreenState();
}

class _TestTypeSettingsScreenState extends State<StandardTestSubjectSettingScreen> {
  late StandardTestSubject subjects;

  @override
  void initState(){
    super.initState();

    subjects = widget.standardTestSubject;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("テスト種類 並び順変更")),
        body: SettingsList(
          sections: [
            SettingsSection(tiles: [
              SettingsTile.switchTile(
                  initialValue: subjects.isModernJapanese,
                  onToggle: (value) {
                    setState(() {
                      subjects.isModernJapanese = value;
                    });
                  },
                  title: const Text("現代文"),),
                  SettingsTile.switchTile(
                  initialValue: subjects.isClassicalJapanese,
                  onToggle: (value) {
                    setState(() {
                      subjects.isClassicalJapanese = value;
                    });
                  },
                  title: const Text("古文"),),
                  SettingsTile.switchTile(
                  initialValue: subjects.isClassicalChinese,
                  onToggle: (value) {
                    setState(() {
                      subjects.isClassicalChinese = value;
                    });
                  },
                  title: const Text("漢文"),),
                  SettingsTile.switchTile(
                  initialValue: subjects.isMath1,
                  onToggle: (value) {
                    setState(() {
                      subjects.isMath1 = value;
                    });
                  },
                  title: const Text("数学1"),),
                  SettingsTile.switchTile(
                  initialValue: subjects.isMath2,
                  onToggle: (value) {
                    setState(() {
                      subjects.isMath2 = value;
                    });
                  },
                  title: const Text("数学2"),),
            ])
          ],
        ));
  }
}

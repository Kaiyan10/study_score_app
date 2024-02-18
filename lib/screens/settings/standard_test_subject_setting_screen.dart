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

class _TestTypeSettingsScreenState
    extends State<StandardTestSubjectSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("テスト種類　並び順変更")),
        body: SettingsList(
          sections: [
            SettingsSection(tiles: [
              SettingsTile.switchTile(
                  initialValue: false,
                  onToggle: (context) {},
                  title: const Text("現代文"))
            ])
          ],
        ));
  }
}

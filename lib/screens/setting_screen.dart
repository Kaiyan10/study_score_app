// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:test_score_app/models/first_choice_school.dart';
import 'package:test_score_app/models/standard_test_subject.dart';
import 'package:test_score_app/screens/settings/first_choice_school_setting.dart';
import 'package:test_score_app/screens/settings/standard_test_subject_setting_screen.dart';

class SettingScreen extends StatelessWidget {
  final StandardTestSubject standardTestSubject;
  const SettingScreen({super.key, required this.standardTestSubject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      appBar: AppBar(
        title: const Text("設定"),
      ),
      body: SettingsList(
          lightTheme: const SettingsThemeData(
            settingsListBackground: Color(0xFFF2F2F7),
            settingsSectionBackground: Colors.white,
          ),
          sections: [
            SettingsSection(
              title: const Text("Common"),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  title: const Text("共通テスト 科目設定"),
                  leading: const Icon(Icons.subject),
                  onPressed: (context) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => StandardTestSubjectSettingScreen(
                          standardTestSubject: standardTestSubject,
                        ),
                      ),
                    );
                  },
                ),
                SettingsTile.navigation(
                  leading: const Icon(
                    Icons.mail,
                    color: Colors.lightBlue,
                  ),
                  title: const Text('志望校設定'),
                  onPressed: (context) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => FirstChoiceSchoolSettingScreen(
                          standardTestSubject: standardTestSubject,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ]),
    );
  }
}

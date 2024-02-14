import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:test_score_app/screens/settings/testtype_setting_screen.dart';

class SettingScreen extends StatelessWidget {
  final List<String> testType;
  const SettingScreen({Key? key,required this.testType}) : super(key: key);

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
                  title: const Text("テスト種類"),
                  leading: const Icon(Icons.subject),
                  onPressed: (context) {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => TestTypeSettingsScreen(testType: testType),),);
                  },
                ),
                SettingsTile.navigation(
                  leading: const Icon(
                    Icons.mail,
                    color: Colors.lightBlue,
                  ),
                  title: const Text('設定２'),
                  onPressed: (context) {},
                ),
              ],
            ),

          ]),
    );
  }
}

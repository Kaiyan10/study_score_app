import 'package:flutter/material.dart';
import 'package:test_score_app/data/dummy_data.dart';
import 'package:test_score_app/models/standard_test_subject.dart';
import 'package:test_score_app/screens/chart_view.dart';
import 'package:test_score_app/screens/setting_screen.dart';
import 'package:test_score_app/screens/top_view.dart';

const testType = ["定期テスト", "共通テスト模試", "2次試験模試"];

class MainViewScreen extends StatefulWidget {
  const MainViewScreen({Key? key}) : super(key: key);

  @override
  State<MainViewScreen> createState() => _MainViewScreenState();
}

class _MainViewScreenState extends State<MainViewScreen> {
  late final StandardTestSubject testSubject =dummySubject;

  late final _screens = [
    const TopViewScreen(),
    const ChartView(),
    SettingScreen(standardTestSubject: testSubject),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "成績グラフ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "設定",
          ),
        ],
        
      ),
    );
  }
}

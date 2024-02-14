import 'package:flutter/material.dart';
import 'package:test_score_app/screens/chart_view.dart';

class TestTypeSettingsScreen extends StatefulWidget {
  final List<String> testType;
  const TestTypeSettingsScreen({Key? key, required this.testType})
      : super(key: key);

  @override
  State<TestTypeSettingsScreen> createState() => _TestTypeSettingsScreenState();
}

class _TestTypeSettingsScreenState extends State<TestTypeSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("テスト種類　並び順変更")),
      body: ReorderableListView.builder(
        itemCount: testType.length,
        itemBuilder: (context, index) {
          return ListTile(
            trailing: Icon(
              Icons.reorder,
              color: Colors.grey,
            ),
            title: Text(testType[index]),
            key: Key('$index'),
          );
        },
        onReorder: (int oldIndex, int newIndex) {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final item = testType.removeAt(oldIndex);
          testType.insert(newIndex, item);
        },
      ),
    );
  }
}

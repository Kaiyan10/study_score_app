import 'package:flutter/material.dart';

class SettingEdittingScreen extends StatefulWidget {
  final String targetText;
  const SettingEdittingScreen({super.key, required this.targetText});

  @override
  State<SettingEdittingScreen> createState() => _SettingEdittingScreenState();
}

class _SettingEdittingScreenState extends State<SettingEdittingScreen> {
  String? _newText;

  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.text = widget.targetText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _textController,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              style: ButtonStyle(
                
              ),
              onPressed: () {
                _newText = _textController.text;
                _textController.clear();
                Navigator.pop(context, _newText);
              },
              child: Text("確定"))
        ],
      ),
    );
  }
}

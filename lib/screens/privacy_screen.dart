import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrivacyPage(),
    );
  }
}

class PrivacyPage extends StatefulWidget {
  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  bool _isPrivacyEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enable Privacy Mode',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Checkbox(
              value: _isPrivacyEnabled,
              onChanged: (value) {
                setState(() {
                  _isPrivacyEnabled = value!;
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Save privacy setting to local storage or send to server
                print('Privacy mode enabled: $_isPrivacyEnabled');
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
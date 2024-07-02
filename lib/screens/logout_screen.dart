import 'package:flutter/material.dart';

void main() {
  runApp(LogoutApp());
}

class LogoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logout Page',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LogoutPage(),

    );
  }
}

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Are you sure you want to logout?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show confirmation dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirm Logout'),
                      content: Text('Are you sure you want to logout?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close dialog
                          },
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Perform logout actions here
                            Navigator.of(context).popUntil(
                                ModalRoute.withName('/')); // Return to the first route (usually login/signup)
                          },
                          child: Text('Logout'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
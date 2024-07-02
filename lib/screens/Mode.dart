import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:virtual_swaahth/Theme/theme_provider.dart';


// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart'; // Import Provider package
//
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart';
//
// // Example implementation of ThemeProvider
// class ThemeProvider extends ChangeNotifier {
//   bool _isDarkMode = false;
//
//   bool get isDarkMode => _isDarkMode;
//
//   void toggleTheme() {
//     _isDarkMode = !_isDarkMode;
//     notifyListeners();
//   }
// }
//
// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (_) => ThemeProvider(),
//       child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Settings Page Demo',
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       home: SettingsPage(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart'; // Import Provider package
//

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners(); // Notify listeners when the theme changes
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Page Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Dark Mode'),
            CupertinoSwitch(
              value: context.watch<ThemeProvider>().isDarkMode, // Use watch() instead of Provider.of()
              onChanged: (value) => context.read<ThemeProvider>().toggleTheme(), // Use read() instead of Provider.of()
            ),
          ],
        ),
      ),
    );
  }
}


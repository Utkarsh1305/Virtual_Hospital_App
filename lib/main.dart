import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtual_swaahth/screens/welcome_screen.dart';
import 'package:virtual_swaahth/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: WelcomeScreen(),
          theme: themeProvider.themeData,
        );
      },
    );
  }
}

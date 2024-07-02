import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UiProvider extends ChangeNotifier {

  bool _isDark = false;

  bool get isDark => _isDark;

  late SharedPreferences storage;

// Custom dark theme
  final darkTheme = ThemeData(
    primaryColor: Colors.black12,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black12,
  );

// Custom light theme
  final lightTheme = ThemeData(
      primaryColor: Colors.white,
      brightness: Brightness.light,
      primaryColorDark: Colors.white


  );


  //Now we want to save the last changes theme value

  // Dark node Tooogle button
  changeTheme() {
    _isDark = !isDark;

    //save the value to secure storage
    storage.setBool("isDark", _isDark);

    notifyListeners();
  }

  init() async {
    // After we re run the app
    storage = await SharedPreferences.getInstance();
    _isDark = storage.getBool("isDark") ?? false;
    notifyListeners();
  }
}
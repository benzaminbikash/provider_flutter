import 'package:flutter/material.dart';

class themeProvider with ChangeNotifier {
  ThemeMode _themeData = ThemeMode.light;

  ThemeMode get themeMode => _themeData;
  void setThemeMode(val) {
    _themeData = val;
    notifyListeners();
  }
}

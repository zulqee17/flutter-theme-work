import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeMode get currentTheme => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  // Constructor to load theme from SharedPreferences
  ThemeProvider() {
    loadThemeFromPreferences();
  }

  // Toggle and save theme mode
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    saveThemeToPreferences();
    notifyListeners();
  }

  // Save theme mode to SharedPreferences
  void saveThemeToPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', _isDarkMode);
  }

  // get/load theme mode from SharedPreferences
  void loadThemeFromPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('isDarkMode') ?? false; // Default to light mode
    notifyListeners();
  }
}

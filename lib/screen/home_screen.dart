import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/theme_changer_provider.dart';


class ThemeSwitcherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Switcher'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Light Mode'),
            Switch(
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                themeProvider.toggleTheme();
              },
            ),
            Text('Dark Mode'),
          ],
        ),
      ),
    );
  }
}

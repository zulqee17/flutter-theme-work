import 'package:flutter/material.dart';
import 'package:flutter_theme_work/provider/theme_changer_provider.dart';
import 'package:flutter_theme_work/screen/home_screen.dart';
import 'package:flutter_theme_work/theme_data/theme_data.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>ThemeProvider())
    ],
    child: Builder(
        builder: (BuildContext context){
          final themeProvider=Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Flutter Theme Persistence',
            theme: AppThemeData().lightThemeData,
            darkTheme: AppThemeData().darkThemeData,
            themeMode: themeProvider.currentTheme,
            home: ThemeSwitcherScreen(),
          );
    }),
    );
  }
}



// ChangeNotifierProvider(
// create: (_) => ThemeProvider(),
// child: Consumer<ThemeProvider>(
// builder: (context, themeProvider, child) {
// return MaterialApp(
// title: 'Flutter Theme Persistence',
// theme: AppThemeData().lightThemeData,
// darkTheme: AppThemeData().darkThemeData,
// themeMode: themeProvider.currentTheme,
// home: ThemeSwitcherScreen(),
// );
// },
// ),
// );
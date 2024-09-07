import 'package:flutter/material.dart';


class AppThemeData{

  ThemeData lightThemeData=ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(fontSize: 25,color: Colors.white),
    )
  );

  ThemeData darkThemeData=ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black45),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black87,
      titleTextStyle: TextStyle(fontSize: 25,color: Colors.white),
    ),
    scaffoldBackgroundColor: Colors.grey
  );

}
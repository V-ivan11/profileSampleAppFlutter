import 'package:flutter/material.dart';

class MyAppThemes {
  static ThemeData appThemeLight() {
    return ThemeData(
      //AppTheme Master
      brightness: Brightness.light,
      //AppBarTheme
      appBarTheme: AppBarTheme(
        color: Colors.indigo.shade800,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      //Theme for Icons
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }

  static ThemeData appThemeDark() {
    return ThemeData(
      //AppTheme Master
      brightness: Brightness.dark,
      //AppBarTheme
      appBarTheme: AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      //Theme for Icons
      iconTheme: IconThemeData(
        color: Colors.orange,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    );
  }
}

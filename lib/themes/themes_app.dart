import 'package:flutter/material.dart';

class ThemesApp {

  static final ThemeData darktheme = ThemeData.dark().copyWith(

    appBarTheme: AppBarTheme
    (
          backgroundColor: Colors.amber[400],
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
    floatingActionButtonTheme: FloatingActionButtonThemeData
    (
      backgroundColor: Colors.amber[400],
      foregroundColor: Colors.black,
    ),
    cardTheme: CardThemeData
    (
      shadowColor: Colors.white60, 
    ),
  );

  //*TEMA CLARO
static final ThemeData lighttheme = ThemeData.light().copyWith(

    appBarTheme: AppBarTheme
    (
          backgroundColor: Colors.amber[400],
          centerTitle: true,
        ),
    floatingActionButtonTheme: FloatingActionButtonThemeData
    (
      backgroundColor: Colors.amber[400],
      foregroundColor: Colors.black,
    ),
    cardTheme: CardThemeData
    (
      shadowColor: Colors.black
    ),
  );

}
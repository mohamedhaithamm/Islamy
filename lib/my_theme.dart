import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xFFB7935F);
  static Color colorBlack = Color(0xFF242424);
  static Color colorWhite = Color(0xFFFFFFFF);
  static Color darkPrimary = Color(0xFF141A2E);
  static Color colorYellow = Color(0xFFFACC1D);


  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: colorBlack ,
      ),
    ),

    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: colorWhite,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        color: colorBlack,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: colorBlack,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      selectedItemColor: colorBlack,
      unselectedItemColor: colorWhite,
      showSelectedLabels: true,
      showUnselectedLabels: true,

    ),
  );


  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true
    ),

    textTheme: TextTheme(
      labelLarge: TextStyle(
        color: colorYellow,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
        color: colorWhite,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: colorWhite,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: colorWhite,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        color: colorBlack,
        fontSize:20,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorYellow,
      unselectedItemColor: colorWhite,
      showSelectedLabels: true,
      showUnselectedLabels: true,

    ),
  );
}

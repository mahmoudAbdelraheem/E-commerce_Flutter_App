import 'package:ecommerce/shared/styles/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: lightColor,

  // text theme in all app
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: darkColor,
    ),
  ),
  // appBar theme
  appBarTheme: AppBarTheme(

    actionsIconTheme: IconThemeData(
      color: darkColor,
    ),
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
      color: darkColor,
    ),
  ),
  //bottom nav theme
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.shifting,
    selectedItemColor: defaultColor,
    unselectedItemColor: Colors.grey,
    elevation: 50.0,
  ),
  backgroundColor: lightColor,
);

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blue,
scaffoldBackgroundColor: darkColor,
  // text theme in all app
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: lightColor,
    ),
  ),

  appBarTheme: AppBarTheme(
    color: Colors.grey[900],
    actionsIconTheme: IconThemeData(
      color: lightColor,
    ),
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
      color: lightColor,
    ),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.shifting,
    selectedItemColor: defaultColor,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.black87,
    elevation: 50.0,
  ),
  backgroundColor: darkColor,
);

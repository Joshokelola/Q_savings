import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  androidOverscrollIndicator: AndroidOverscrollIndicator.glow,
  colorSchemeSeed: Colors.deepPurple,
  checkboxTheme: const CheckboxThemeData(
    splashRadius: 0,
  ),
  brightness: Brightness.light,
  // brightness: Brightness.dark,
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w200,
      fontFamily: 'AbrilFatFace',
    ),
    titleSmall: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      fontFamily: 'Rubik',
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontFamily: 'Worksans',
    ),
    labelMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 15,
        color: Colors.deepPurple,
        fontFamily: 'Worksans'),
    labelSmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      fontFamily: 'Worksans',
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 17,
      fontFamily: 'Worksans',
    ),
    // subtitle1: const TextStyle(
    //   color: Colors.white,
    //   fontFamily: 'Worksans',
    //   fontSize: 10,
    // ),
  ),
);

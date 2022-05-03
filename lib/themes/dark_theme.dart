import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    androidOverscrollIndicator: AndroidOverscrollIndicator.glow,
    colorSchemeSeed: Colors.deepPurple,
    // brightness: Brightness.dark,
    textTheme: const TextTheme(
        titleMedium: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w600,
    )));

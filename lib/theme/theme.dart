import 'package:flutter/material.dart';

// creating theme so we can switch from dark to light mode

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        surface: Colors.black,
        primary: Color(0xFF252428),
        secondary: Colors.white));

// for light mode

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        surface: Colors.white,
        primary: Colors.grey[200]!,
        secondary: Colors.black));

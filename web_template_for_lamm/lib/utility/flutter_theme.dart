import 'package:flutter/material.dart';

class FlutterTheme {
  static const Color primaryColor = Color.fromRGBO(66, 66, 66, 1.0);
  static const Color lightBackgroundColor = Color.fromRGBO(109, 109, 109,1.0);
  static const Color darkBackgroundColor = Color.fromRGBO(27, 27, 27, 1.0);
  
  static ThemeData get light {
    return ThemeData.from(
      useMaterial3: true,
      textTheme: Typography.material2021().black,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor, 
        onPrimary: primaryColor,
        background: lightBackgroundColor,
        onBackground: lightBackgroundColor,
        secondary: Colors.white,
        onSecondary: Colors.white,
        surface: Colors.white,
        onSurface: Colors.white,
        error: Colors.white,
        onError: Colors.white,
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData.from(
      useMaterial3: true,
      textTheme: Typography.material2021().white,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: primaryColor,
        onPrimary: primaryColor,
        background: darkBackgroundColor,
        onBackground: darkBackgroundColor,
        secondary: Colors.black,
        onSecondary: Colors.black,
        surface: Colors.black,
        onSurface: Colors.black,
        error: Colors.black,
        onError: Colors.black,
      ),
    );
  }
}
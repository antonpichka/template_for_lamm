import 'package:flutter/material.dart';

final class FlutterThemeUtility {
  static const Color darkPrimaryColor = Color.fromRGBO(64, 64, 64, 1.0);
  static const Color darkSecondaryColor = Color.fromRGBO(255, 85, 0, 1.0);
  static const Color darkSurfaceColor = Color.fromRGBO(31, 31, 31, 1.0);
  static const Color darkAppBarBackgroundColor = Color.fromRGBO(22, 22, 22, 1.0);
  static const Color darkBackgroundColor = Color.fromRGBO(18, 18, 18, 1.0);
  static const Color darkDividerColor = Color.fromRGBO(48, 48, 48, 1.0);

  FlutterThemeUtility._();

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      dividerColor: darkDividerColor,
      appBarTheme: const AppBarTheme(
        elevation: 1.0,
        scrolledUnderElevation: 0,
        backgroundColor: darkAppBarBackgroundColor,
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(
            color: Colors.white60,
            size: 40
        ),
      ),
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: darkPrimaryColor,
        onPrimary: darkPrimaryColor,
        secondary: darkSecondaryColor,
        onSecondary: darkSecondaryColor,
        surface: darkSurfaceColor,
        onSurface: darkSurfaceColor,
        background: darkBackgroundColor,
        onBackground: darkBackgroundColor,
        error: Colors.red,
        onError: Colors.red,
      ),
      textTheme: Typography.material2021().white,
    );
  }
}
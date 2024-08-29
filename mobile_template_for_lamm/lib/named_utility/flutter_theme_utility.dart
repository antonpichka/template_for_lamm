import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
final class FlutterThemeUtility {
  static const Color seedColor = Color.fromRGBO(13, 17, 23,1.0);

  const FlutterThemeUtility._();

  static ThemeData get getLightThemeParameterSeedColor {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: seedColor,
      ),
    );
  }

  static ThemeData get getDarkThemeParameterSeedColor {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: seedColor,
      ),
    );
  }
}
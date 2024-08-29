import 'package:flutter/material.dart';

@immutable
final class FlutterThemeUtility {
  static const Color seedColor = Colors.white;

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
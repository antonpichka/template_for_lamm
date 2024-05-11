import 'package:flutter/material.dart';
import 'package:desktop_template_for_lamm/l10n/l10n.dart';
import 'package:desktop_template_for_lamm/named_utility/flutter_theme_utility.dart';
import 'package:desktop_template_for_lamm/named_vm/main_vm/main_vm.dart';

final class AppVM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: "",
        themeMode: ThemeMode.dark,
        theme: FlutterThemeUtility.getLightThemeParameterSeedColor,
        darkTheme: FlutterThemeUtility.getDarkThemeParameterSeedColor,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: "/",
        routes: {
          "/" : (context) => MainVM()
        });
  }
}
import 'package:flutter/material.dart';
import 'package:desktop_template_for_lamm/l10n/l10n.dart';
import 'package:desktop_template_for_lamm/named_utility/flutter_theme_utility.dart';
import 'package:desktop_template_for_lamm/named_vm/main_vm/main_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        builder: (context, widget) => ResponsiveBreakpoints .builder(
          child: widget!,
          breakpoints: [
            const Breakpoint(start: 0,end: 600, name: MOBILE),
            const Breakpoint(start: 601,end: double.infinity, name: TABLET),
          ],
        ),
        initialRoute: "/",
        routes: {
          "/" : (context) => MainVM()
        });
  }
}
import 'package:desktop_template_for_lamm/l10n/l10n.dart';
import 'package:desktop_template_for_lamm/named_view/desktop_main_view.dart';
import 'package:desktop_template_for_lamm/utility/flutter_theme.dart';
import 'package:flutter/material.dart';

class DesktopAppView
    extends StatelessWidget
{
  // final _lo = DesktopAppViewListViewModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "",
        // To test the dark theme in the debug mode,
        // you need to write this line
        // (this is if you test on an android emulator, I did not test it on other emulators)
        themeMode: ThemeMode.dark,
        theme: FlutterTheme.light,
        darkTheme: FlutterTheme.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: "/",
        routes: {
          "/" : (context) => DesktopMainView()
        });
  }
}
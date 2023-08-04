import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_template_for_lamm/l10n/l10n.dart';
import 'package:web_template_for_lamm/named_view/web_main_view.dart';
import 'package:web_template_for_lamm/utility/flutter_theme_utility.dart';

final class WebAppView
    extends StatelessWidget
{
  // final _lo = WebAppViewListViewModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "",
        // To test the dark theme in the debug mode,
        // you need to write this line
        // (this is if you test on an android emulator, I did not test it on other emulators)
        themeMode: ThemeMode.dark,
        darkTheme: FlutterThemeUtility.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, widget) => ResponsiveBreakpoints.builder(
          child: ClampingScrollWrapper.builder(context, widget!),
          breakpoints: [
            const Breakpoint(start: 0,end: 450, name: MOBILE),
            const Breakpoint(start: 451,end: 999, name: TABLET),
            const Breakpoint(start: 1000,end: double.infinity,name: DESKTOP),
          ],
        ),
        initialRoute: "/",
        routes: {
          "/" : (context) =>  WebMainView()
        });
  }
}
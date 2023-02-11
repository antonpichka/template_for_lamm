import 'package:flutter/material.dart';
import 'package:web_my_project/l10n/l10n.dart';
import 'package:web_my_project/named_view/web_desktop_main_view.dart';
import 'package:web_my_project/named_view/web_mobile_main_view.dart';
import 'package:web_my_project/named_view/web_tablet_main_view.dart';
import 'package:web_my_project/utility/flutter_theme.dart';
import 'package:web_my_project/utility/platform_view_selection.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppView
    extends StatelessWidget
{
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
        builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
        ),
        initialRoute: "/",
        routes: {
          "/" : (context) => PlatformViewSelection.getSelectedViewPlatform(
              context,
              mobileView: WebMobileMainView(),
              tabletView: WebTabletMainView(),
              desktopView: WebDesktopMainView()),
        });
  }
}
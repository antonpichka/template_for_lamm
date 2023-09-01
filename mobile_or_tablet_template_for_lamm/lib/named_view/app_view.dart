import 'package:flutter/material.dart';
import 'package:mobile_or_tablet_template_for_lamm/l10n/l10n.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_utility/flutter_theme_utility.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_utility/platform_view_selection_utility.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_view/mobile_main_view.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_view/tablet_main_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class AppView extends StatelessWidget {
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
        builder: (context, widget) => ResponsiveBreakpoints .builder(
          child: widget!,
          breakpoints: [
            const Breakpoint(start: 0,end: 450, name: MOBILE),
            const Breakpoint(start: 451,end: 999, name: TABLET),
          ],
        ),
        initialRoute: "/",
        routes: {
          "/" : (context) => PlatformViewSelectionUtility.getSelectedViewPlatform(
              context,
              mobileView: MobileMainView(),
              tabletView: TabletMainView()),
        });
  }
}
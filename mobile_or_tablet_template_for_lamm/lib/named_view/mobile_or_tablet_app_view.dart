import 'package:flutter/material.dart';
import 'package:mobile_or_tablet_template_for_lamm/l10n/l10n.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_view/mobile_main_view.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_view/tablet_main_view.dart';
import 'package:mobile_or_tablet_template_for_lamm/utility/flutter_theme.dart';
import 'package:mobile_or_tablet_template_for_lamm/utility/platform_view_selection.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MobileOrTabletAppView
    extends StatelessWidget
{
  // final _lo = MobileOrTabletAppViewListViewModel();

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
            const ResponsiveBreakpoint.resize(350, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ],
        ),
        initialRoute: "/",
        routes: {
          "/" : (context) => PlatformViewSelection.getSelectedViewPlatform(
              context,
              mobileView: MobileMainView(),
              tabletView: TabletMainView()),
        });
  }
}
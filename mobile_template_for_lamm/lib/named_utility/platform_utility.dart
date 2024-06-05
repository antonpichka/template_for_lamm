import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

@immutable
final class PlatformUtility {
  const PlatformUtility._();

  static Widget getNamedViewFromContextAndMobileViewAndTabletView(
      BuildContext context,
      {Widget? mobileView,
        Widget? tabletView})
  {
    if(ResponsiveBreakpoints.of(context).isMobile
        && mobileView != null)
    {
      return mobileView;
    }
    if(ResponsiveBreakpoints.of(context).isTablet
        && tabletView != null)
    {
      return tabletView;
    }
    return throw Exception("Null or no exists platform");
  }
}
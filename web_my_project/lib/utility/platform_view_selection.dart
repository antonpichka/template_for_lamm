import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PlatformViewSelection {
  static Widget getSelectedViewPlatform(
      BuildContext context,
      {Widget? mobileView,
        Widget? tabletView,
        Widget? desktopView})
  {
    if(ResponsiveWrapper.of(context).isMobile
        && mobileView != null)
    {
      return mobileView;
    }
    if(ResponsiveWrapper.of(context).isTablet
        && tabletView != null)
    {
      return tabletView;
    }
    if(ResponsiveWrapper.of(context).isDesktop
        && desktopView != null)
    {
      return desktopView;
    }
    return throw Exception("null or no exists platform");
  }
}
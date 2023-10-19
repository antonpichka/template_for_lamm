import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class PlatformViewSelectionUtility {
  const PlatformViewSelectionUtility._();

  static Widget getSelectedViewPlatform(
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
    return throw Exception("null or no exists platform");
  }
}
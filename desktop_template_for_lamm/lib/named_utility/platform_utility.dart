import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

@immutable
final class PlatformUtility {
  const PlatformUtility._();

  static Widget getNamedWidgetFromContextAndMobileWidgetAndTabletWidget(
      BuildContext context,
      {Widget? mobileWidget,
      Widget? tabletWidget})
  {
    if(ResponsiveBreakpoints.of(context).isMobile) {
      return mobileWidget!;
    }
    if(ResponsiveBreakpoints.of(context).isTablet) {
      return tabletWidget!;
    }
    return mobileWidget!;
  }
}
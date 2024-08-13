import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

@immutable
final class PlatformUtility {
  const PlatformUtility._();

  static Widget getNamedWidgetFromContextAndMobileWidgetAndDesktopWidget(
      BuildContext context,
      {required Widget mobileWidget,
      Widget? desktopWidget})
  {
    if(ResponsiveBreakpoints.of(context).isMobile) {
      return mobileWidget;
    }
    if(ResponsiveBreakpoints.of(context).isDesktop) {
      return desktopWidget ?? mobileWidget;
    }
    return mobileWidget;
  }
}
import 'dart:io';

import 'package:desktop_template_for_lamm/named_utility/window_manager_utility.dart';
import 'package:system_tray/system_tray.dart';

final class SystemTrayUtility {
  static final AppWindow _appWindow = AppWindow();

  SystemTrayUtility._();

  static Future<void> initSystemTrayParameterAppWindow() async {
    String path = Platform.isWindows
        ? "assets/icon/app_icon.ico"
        : "assets/icon/app_icon.png";
    final SystemTray systemTray = SystemTray();
    await systemTray.initSystemTray(
      title: "Example",
      toolTip: "Example",
      iconPath: path,
    );
    // create context menu
    final Menu menu = Menu();
    await menu.buildFrom([
      MenuItemLabel(label: "Show", onClicked: (menuItem) async => await _appWindow.show()),
      MenuItemLabel(label: "Exit", onClicked: (menuItem) async  {
        await _appWindow.close();
        await WindowManagerUtility.destroyParameterWindowManager();
      }),
    ]);

    // set context menu
    await systemTray.setContextMenu(menu);

    // handle system tray event
    systemTray.registerSystemTrayEventHandler((eventName) {
      if (eventName == kSystemTrayEventClick) {
        Platform.isWindows ? _appWindow.show() : systemTray.popUpContextMenu();
        return;
      }
      if(eventName == kSystemTrayEventRightClick) {
        Platform.isWindows ? systemTray.popUpContextMenu() : _appWindow.show();
        return;
      }
    });
  }
}
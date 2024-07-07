import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

final class WindowManagerUtility {
  WindowManagerUtility._();

  static Future<void> initParameterWindowManager() async {
    await windowManager.ensureInitialized();
    await windowManager.waitUntilReadyToShow(
        const WindowOptions(
          title: "Example",
          size: Size(800,600),
          minimumSize: Size(600,400),
          center: true,
          backgroundColor: Colors.transparent,
          skipTaskbar: false,
          titleBarStyle: TitleBarStyle.normal,
        ), () async {
          await windowManager.show();
          await windowManager.focus();
        });
  }

  static Future<void> addFromWindowListenerParameterWindowManager(WindowListener windowListener) async {
    windowManager.addListener(windowListener);
    await windowManager.setPreventClose(true);
  }

  static Future<void> removeFromWindowListenerParameterWindowManager(WindowListener windowListener) async {
    windowManager.removeListener(windowListener);
  }

  static Future<void> hideParameterWindowManager() async {
    await windowManager.hide();
  }

  static Future<void> destroyParameterWindowManager() async {
    await windowManager.destroy();
  }
}
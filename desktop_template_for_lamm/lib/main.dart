import 'package:flutter/material.dart';
import 'package:desktop_template_for_lamm/named_view/desktop_app_view.dart';
import 'package:window_size/window_size.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setWindowTitle('My App');
  setWindowMaxSize(const Size(1280, 720));
  setWindowMinSize(const Size(1280, 720));
  runApp(DesktopAppView());
}

import 'package:desktop_template_for_lamm/named_utility/system_tray_utility.dart';
import 'package:desktop_template_for_lamm/named_utility/window_manager_utility.dart';
import 'package:desktop_template_for_lamm/named_vm/app_vm/app_vm.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemTrayUtility.initSystemTrayParameterAppWindow();
  await WindowManagerUtility.initParameterWindowManager();
  BaseModelRepository.enumRWTMode = EnumRWTMode.test;
  runApp(AppVM());
}

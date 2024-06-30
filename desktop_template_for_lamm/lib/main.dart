import 'package:desktop_template_for_lamm/named_vm/app_vm/app_vm.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BaseModelRepository.enumRWTMode = EnumRWTMode.test;
  runApp(AppVM());
}

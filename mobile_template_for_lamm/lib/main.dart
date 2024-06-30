import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:mobile_template_for_lamm/named_vm/app_vm/app_vm.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BaseModelRepository.enumRWTMode = EnumRWTMode.test;
  runApp(AppVM());
}

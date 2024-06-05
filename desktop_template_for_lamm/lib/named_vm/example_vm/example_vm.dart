import 'package:common_template_for_lamm/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:desktop_template_for_lamm/named_vm/example_vm/data_for_example_vm.dart';
import 'package:desktop_template_for_lamm/named_vm/example_vm/enum_data_for_example_vm.dart';
import 'package:flutter/material.dart';

final class ExampleVM extends StatefulWidget {
  @override
  State<ExampleVM> createState() => _ExampleVMState();
}

final class _ExampleVMState extends State<ExampleVM> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  // Main objects
  late final lamm.BaseNamedStreamWState<DataForExampleVM> _namedStreamWState;
  late final lamm.RWTMode _rwtMode;

  @override
  void initState() {
    _namedStreamWState = lamm.DefaultStreamWState<DataForExampleVM>(DataForExampleVM(true));
    _rwtMode = lamm.RWTMode(
        lamm.EnumRWTMode.test,
        [
          lamm.NamedCallback("init", _initReleaseCallback),
        ],
        [
          lamm.NamedCallback("init", _initTestCallback)
        ]);
    super.initState();
    _init();
  }


  @override
  void dispose() {
    _namedStreamWState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamed = _namedStreamWState.getDataForNamed;
    switch(dataForNamed.getEnumDataForNamed) {
      case EnumDataForExampleVM.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForExampleVM.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForExampleVM.success:
        return const Scaffold(
          body: Center(
              child: Text("Hello World")),
        );
    }
  }

  Future<void> _init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      setState(() {});
    });
    final callback = await _rwtMode
        .getNamedCallbackFromName("init")
        .callback();
    lamm.debugPrint("ExampleVM: $callback");
    if(!mounted) {
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }

  Future<String> _initReleaseCallback() async {
    await Future.delayed(const Duration(seconds: 1));
    _namedStreamWState.getDataForNamed.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _initTestCallback() async {
    await Future.delayed(const Duration(seconds: 1));
    _namedStreamWState.getDataForNamed.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}
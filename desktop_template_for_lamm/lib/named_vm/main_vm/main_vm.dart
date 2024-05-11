import 'package:common_template_for_lamm/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:desktop_template_for_lamm/named_vm/main_vm/data_for_main_vm.dart';
import 'package:desktop_template_for_lamm/named_vm/main_vm/enum_data_for_main_vm.dart';
import 'package:flutter/material.dart';

final class MainVM extends StatefulWidget {
  @override
  State<MainVM> createState() => _MainVMState();
}

final class _MainVMState extends State<MainVM> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  // Main objects
  late final lamm.BaseNamedStreamWState<DataForMainVM> _namedStreamWState;
  late final lamm.RWTMode _rwtMode;

  @override
  void initState() {
    _namedStreamWState =
        lamm.DefaultStreamWState(DataForMainVM(true));
    super.initState();
    _rwtMode = lamm.RWTMode(lamm.EnumRWTMode.test,
        [
          lamm.NamedCallback("init", () async {
            _namedStreamWState.getDataForNamed.isLoading = false;
            return KeysSuccessUtility.sUCCESS;
          }),
        ],
        [
          lamm.NamedCallback("init", () async {
            _namedStreamWState.getDataForNamed.isLoading = false;
            return KeysSuccessUtility.sUCCESS;
          })
        ]);
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
      case EnumDataForMainVM.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForMainVM.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForMainVM.success:
        return const Scaffold(
          body: Center(
              child: Text("Hello World")),
        );
    }
  }

  Future<void> _init() async {
    _namedStreamWState
        .getStreamDataForNamed
        .listen((event) {
          setState(() {});
        });
    final result = await _rwtMode
        .getNamedCallbackFromName("init")
        .callback();
    lamm.debugPrint("MainVM: $result");
    if(!mounted) {
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }
}
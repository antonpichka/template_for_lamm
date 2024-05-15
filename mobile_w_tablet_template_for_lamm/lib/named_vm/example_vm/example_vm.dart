import 'package:common_template_for_lamm/named_utility/keys_success_utility.dart';
import 'package:mobile_w_tablet_template_for_lamm/named_vm/example_vm/data_for_example_vm.dart';
import 'package:mobile_w_tablet_template_for_lamm/named_vm/example_vm/enum_data_for_example_vm.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
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
    _namedStreamWState =
        lamm.DefaultStreamWState(DataForExampleVM(true));
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
    _namedStreamWState
        .getStreamDataForNamed
        .listen((event) {
          setState(() {});
        });
    final result = await _rwtMode
        .getNamedCallbackFromName("init")
        .callback();
    lamm.debugPrint("ExampleVM: $result");
    if(!mounted) {
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }
}
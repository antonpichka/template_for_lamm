import 'package:common_template_for_lamm/named_utility/ready_data_utility.dart';
import 'package:desktop_template_for_lamm/named_utility/platform_utility.dart';
import 'package:desktop_template_for_lamm/named_vm/example_vm/data_for_example_vm.dart';
import 'package:desktop_template_for_lamm/named_vm/example_vm/enum_data_for_example_vm.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;

final class ExampleVM extends StatefulWidget {
  @override
  State<ExampleVM> createState() => _ExampleVMState();
}

final class _ExampleVMState extends State<ExampleVM> {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForExampleVM> _namedStreamWState;

  @override
  Widget build(BuildContext context) {
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch(dataWNamed.getEnumDataForNamed) {
      case EnumDataForExampleVM.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForExampleVM.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataWNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForExampleVM.success:
        return PlatformUtility.getNamedWidgetFromContextAndMobileWidgetAndDesktopWidget(
            context,
            mobileWidget: Scaffold(
              appBar: AppBar(
                title: const Text("Flutter App"),
              ),
              body: const Column(
                children: [
                  Text("Hello")
                ],
              ),
            ),
            desktopWidget: const Scaffold(
              body: Column(
                children: [
                  Row(
                    children: [
                      Text("Hello")
                    ],
                  ),
                  Row(
                    children: [
                      Text("Hello")
                    ],
                  ),
                ],
              ),
            )
        );
    }
  }

  @override
  void initState() {
    _namedStreamWState = lamm.DefaultStreamWState(DataForExampleVM(true));
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _tempCacheProvider.dispose([]);
    _namedStreamWState.dispose();
    super.dispose();
  }

  Future<void> _init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      setState(() {});
    });
    final firstRequest = await _firstRequest();
    lamm.debugPrint("ExampleVM: $firstRequest");
    if(!mounted) {
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }

  Future<String> _firstRequest() async {
    await Future.delayed(const Duration(seconds: 1));
    _namedStreamWState.getDataForNamed.isLoading = false;
    return ReadyDataUtility.success;
  }
}
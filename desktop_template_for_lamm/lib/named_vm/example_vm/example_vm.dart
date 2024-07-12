import 'package:common_template_for_lamm/named_utility/ready_data_utility.dart';
import 'package:desktop_template_for_lamm/named_utility/factory_object_utility.dart';
import 'package:desktop_template_for_lamm/named_utility/platform_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:desktop_template_for_lamm/named_vm/example_vm/data_for_example_vm.dart';
import 'package:desktop_template_for_lamm/named_vm/example_vm/enum_data_for_example_vm.dart';
import 'package:flutter/material.dart';

final class ExampleVM extends StatefulWidget {
  @override
  State<ExampleVM> createState() => _ExampleVMState();
}

final class _ExampleVMState extends State<ExampleVM> {
  // ModelRepository
  // NamedUtility

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForExampleVM> _namedStreamWState;

  @override
  void initState() {
    _namedStreamWState = FactoryObjectUtility.getNamedStreamWStateWhereDataWExampleVM;
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
        return PlatformUtility.getNamedWidgetFromContextAndMobileWidgetAndTabletWidget(
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
            tabletWidget: const Scaffold(
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
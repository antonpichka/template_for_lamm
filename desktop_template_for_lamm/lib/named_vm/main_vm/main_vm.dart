import 'package:common_template_for_lamm/named_utility/ready_data_utility.dart';
import 'package:desktop_template_for_lamm/named_utility/platform_utility.dart';
import 'package:desktop_template_for_lamm/named_vm/main_vm/data_for_main_vm.dart';
import 'package:desktop_template_for_lamm/named_vm/main_vm/enum_data_for_main_vm.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;

final class MainVM extends StatefulWidget {
  @override
  State<MainVM> createState() => _MainVMState();
}

final class _MainVMState extends State<MainVM> {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForMainVM> _namedStreamWState;

  @override
  Widget build(BuildContext context) {
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch(dataWNamed.getEnumDataForNamed) {
      case EnumDataForMainVM.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForMainVM.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataWNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForMainVM.success:
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
    _namedStreamWState = lamm.DefaultStreamWState(DataForMainVM(true));
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
    lamm.debugPrint("MainVM: $firstRequest");
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
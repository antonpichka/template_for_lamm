import 'package:common_template_for_lamm/named_utility/constants_utility.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:mobile_template_for_lamm/named_vm/mobile_main_vm/data_for_mobile_main_vm.dart';
import 'package:mobile_template_for_lamm/named_vm/mobile_main_vm/enum_data_for_mobile_main_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class MobileMainVM extends StatefulWidget {
  @override
  State<MobileMainVM> createState() => _MobileMainVMState();
}

final class _MobileMainVMState extends State<MobileMainVM> {
  // ModelRepository
  // NamedUtility

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForMobileMainVM> _namedStreamWState;

  @override
  void initState() {
    _namedStreamWState = lamm.DefaultStreamWState<DataForMobileMainVM>(DataForMobileMainVM(true));
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
      case EnumDataForMobileMainVM.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForMobileMainVM.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForMobileMainVM.success:
        return Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Text("Mobile (MaxRowCount: 1)"),
                  ResponsiveGridView.builder(
                    gridDelegate: const ResponsiveGridDelegate(
                        crossAxisExtent: 260,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 1.37),
                    maxRowCount: 1,
                    itemCount: 30,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(4, 8, 0, 16),
                    alignment: Alignment.center,
                    itemBuilder: (context, index) {
                      return const ListTile(title: Text("Op",),);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }

  Future<void> _init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      setState(() {});
    });
    final firstRequest = await _firstRequest();
    lamm.debugPrint("MobileMainVM: $firstRequest");
    if(!mounted) {
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }

  Future<String> _firstRequest() async {
    await Future.delayed(const Duration(seconds: 1));
    _namedStreamWState.getDataForNamed.isLoading = false;
    return ConstantsUtility.success;
  }
}
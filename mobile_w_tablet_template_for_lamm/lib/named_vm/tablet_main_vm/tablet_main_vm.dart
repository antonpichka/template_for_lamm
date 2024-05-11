import 'package:common_template_for_lamm/named_utility/keys_success_utility.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:mobile_w_tablet_template_for_lamm/named_vm/tablet_main_vm/data_for_tablet_main_vm.dart';
import 'package:mobile_w_tablet_template_for_lamm/named_vm/tablet_main_vm/enum_data_for_tablet_main_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class TabletMainVM extends StatefulWidget {
  @override
  State<TabletMainVM> createState() => _TabletMainVMState();
}

final class _TabletMainVMState extends State<TabletMainVM> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  // Main objects
  late final lamm.BaseNamedStreamWState<DataForTabletMainVM> _namedStreamWState;
  late final lamm.RWTMode _rwtMode;

  @override
  void initState() {
    _namedStreamWState =
        lamm.DefaultStreamWState(DataForTabletMainVM(true));
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
      case EnumDataForTabletMainVM.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForTabletMainVM.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForTabletMainVM.success:
        return Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Text("Tablet (MaxRowCount: 2)"),
                  ResponsiveGridView.builder(
                    gridDelegate: const ResponsiveGridDelegate(
                        crossAxisExtent: 260,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 1.37),
                    maxRowCount: 2,
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
          )
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
    lamm.debugPrint("TabletMainVM: $result");
    if(!mounted) {
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }
}
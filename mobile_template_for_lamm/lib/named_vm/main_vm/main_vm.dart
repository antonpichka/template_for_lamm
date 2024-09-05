import 'package:common_template_for_lamm/named_utility/ready_data_utility.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:mobile_template_for_lamm/named_utility/factory_object_utility.dart';
import 'package:mobile_template_for_lamm/named_utility/platform_utility.dart';
import 'package:mobile_template_for_lamm/named_vm/main_vm/data_for_main_vm.dart';
import 'package:mobile_template_for_lamm/named_vm/main_vm/enum_data_for_main_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        return PlatformUtility.getNamedWidgetFromContextAndMobileWidgetAndTabletWidget(
            context,
            mobileWidget: Scaffold(
              appBar: AppBar(
                title: const Text("Flutter App"),
              ),
              body: SingleChildScrollView(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Text("Mobile (MaxRowCount: 1)"),
                      ResponsiveGridView.builder(
                        gridDelegate: const ResponsiveGridDelegate(
                            crossAxisExtent: 120,
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
            ),
            tabletWidget: Scaffold(
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
            )
        );
    }
  }

  @override
  void initState() {
    _namedStreamWState = FactoryObjectUtility.getNamedStreamWStateWhereDataWMainVM;
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
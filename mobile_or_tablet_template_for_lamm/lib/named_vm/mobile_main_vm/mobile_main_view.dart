import 'package:flutter/material.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_vm/mobile_main_vm/test_mobile_main_view_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class MobileMainView extends StatefulWidget {
  @override
  State<MobileMainView> createState() => _MobileMainViewState();
}

final class _MobileMainViewState extends State<MobileMainView> {
  /// RELEASE CODE
  // late final MobileMainViewModel _mobileMainViewModel;
  /// TEST CODE
  late final TestMobileMainViewModel _mobileMainViewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _mobileMainViewModel = MobileMainViewModel();
    /// TEST CODE
    _mobileMainViewModel = TestMobileMainViewModel();
    super.initState();
    _initParameterMobileMainViewModel();
  }

  @override
  void dispose() {
    _mobileMainViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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

  Future<void> _initParameterMobileMainViewModel() async {
    _mobileMainViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _mobileMainViewModel.init();
    debugPrint("MobileMainView: $result");
    if(!mounted) {
      return;
    }
    _mobileMainViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}
import 'package:flutter/material.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_vm/mobile_main_vm/test_mobile_main_view_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class MobileMainView extends StatefulWidget {
  @override
  State<MobileMainView> createState() => _MobileMainViewState();
}

final class _MobileMainViewState extends State<MobileMainView> {
  /// RELEASE CODE
  // late final MobileMainViewModel _viewModel;
  /// TEST CODE
  late final TestMobileMainViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = MobileMainViewModel();
    /// TEST CODE
    _viewModel = TestMobileMainViewModel();
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
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

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("MobileMainView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}
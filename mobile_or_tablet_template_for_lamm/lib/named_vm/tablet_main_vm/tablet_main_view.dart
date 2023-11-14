import 'package:flutter/material.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_vm/tablet_main_vm/test_tablet_main_view_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class TabletMainView extends StatefulWidget {
  @override
  State<TabletMainView> createState() => _TabletMainViewState();
}

final class _TabletMainViewState extends State<TabletMainView> {
  /// RELEASE CODE
  // late final TabletMainViewModel _tabletMainViewModel;
  /// TEST CODE
  late final TestTabletMainViewModel _tabletMainViewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _tabletMainViewModel = TabletMainViewModel();
    /// TEST CODE
    _tabletMainViewModel = TestTabletMainViewModel();
    super.initState();
    _initParameterTabletMainViewModel();
  }

  @override
  void dispose() {
    _tabletMainViewModel.dispose();
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
      ),);
  }

  Future<void> _initParameterTabletMainViewModel() async {
    _tabletMainViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _tabletMainViewModel.init();
    debugPrint("TabletMainView: $result");
    if(!mounted) {
      return;
    }
    _tabletMainViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}
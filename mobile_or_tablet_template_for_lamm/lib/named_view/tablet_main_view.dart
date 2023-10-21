import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class TabletMainView extends StatefulWidget {
  @override
  State<TabletMainView> createState() => _TabletMainViewState();
}

final class _TabletMainViewState extends State<TabletMainView> {
  // late final TabletMainViewModel _tabletMainViewModel;

  @override
  void initState() {
    // _tabletMainViewModel = TabletMainViewModel();
    super.initState();
    // _init();
  }

  @override
  void dispose() {
    // _tabletMainViewModel.dispose();
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

  /*Future<void> _init() async {
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
  }*/
}
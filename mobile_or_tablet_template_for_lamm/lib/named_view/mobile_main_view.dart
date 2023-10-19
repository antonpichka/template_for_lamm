import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class MobileMainView extends StatefulWidget {
  @override
  State<MobileMainView> createState() => _MobileMainViewState();
}

final class _MobileMainViewState extends State<MobileMainView> {
  // late final MobileMainViewQViewModel _mobileMainViewQViewModel;

  @override
  void initState() {
    // _mobileMainViewQViewModel = MobileMainViewQViewModel();
    super.initState();
    // _init();
  }

  @override
  void dispose() {
    // _mobileMainViewQViewModel.dispose();
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
      ),);
  }

 /* Future<void> _init() async {
    _mobileMainViewQViewModel
        .getStreamDataForNamed
        .listen((event) {
          setState(() {});
        });
    final result = await _mobileMainViewQViewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mobileMainViewQViewModel.notifyStreamDataForNamed();
  }*/
}
import 'package:flutter/material.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_view_list_view_model/mobile_main_view_list_view_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class MobileMainView
    extends StatefulWidget
{
  final MobileMainViewListViewModel mobileMainViewListViewModel;

  const MobileMainView(this.mobileMainViewListViewModel);

  @override
  State<MobileMainView> createState() => _MobileMainViewState();
}

final class _MobileMainViewState
    extends State<MobileMainView>
{
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget
        .mobileMainViewListViewModel
        .dispose();
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
}
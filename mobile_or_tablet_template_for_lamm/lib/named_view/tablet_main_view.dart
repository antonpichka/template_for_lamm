import 'package:flutter/material.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_view_list_view_model/tablet_main_view_list_view_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class TabletMainView
    extends StatefulWidget
{
  final TabletMainViewListViewModel tabletMainViewListViewModel;

  const TabletMainView(this.tabletMainViewListViewModel);

  @override
  State<TabletMainView> createState() => _TabletMainViewState();
}

final class _TabletMainViewState
    extends State<TabletMainView>
{
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget
        .tabletMainViewListViewModel
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
}
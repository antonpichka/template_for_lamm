import 'package:desktop_template_for_lamm/named_view_list_view_model/desktop_main_view_list_view_model.dart';
import 'package:flutter/material.dart';

final class DesktopMainView
    extends StatefulWidget
{
  @override
  State<DesktopMainView> createState() => _DesktopMainViewState();
}

final class _DesktopMainViewState
    extends State<DesktopMainView>
{
  late final DesktopMainViewListViewModel _lo;

  @override
  void initState() {
    super.initState();
    _lo = DesktopMainViewListViewModel();
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Hello World")),
    );
  }
}
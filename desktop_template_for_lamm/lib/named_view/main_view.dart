import 'package:desktop_template_for_lamm/named_view_list_view_model/main_view_list_view_model.dart';
import 'package:flutter/material.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  late final MainViewListViewModel _mainViewListViewModel;

  @override
  void initState() {
    _mainViewListViewModel = MainViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _mainViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Hello World")),
    );
  }

  Future<void> _init() async {
    _mainViewListViewModel
        .getStreamDataForNamed
        .listen((event) {
          setState(() {});
        });
    final result = await _mainViewListViewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mainViewListViewModel.notifyStreamDataForNamed();
  }
}
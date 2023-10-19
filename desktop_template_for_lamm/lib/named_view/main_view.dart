import 'package:flutter/material.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  // late final MainViewQViewModel _mainViewQViewModel;

  @override
  void initState() {
    // _mainViewQViewModel = MainViewQViewModel();
    super.initState();
    // _init();
  }

  @override
  void dispose() {
   // _mainViewQViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Hello World")),
    );
  }

 /* Future<void> _init() async {
    _mainViewQViewModel
        .getStreamDataForNamed
        .listen((event) {
          setState(() {});
        });
    final result = await _mainViewQViewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mainViewQViewModel.notifyStreamDataForNamed();
  }*/
}
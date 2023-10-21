import 'package:flutter/material.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  // late final MainViewModel _mainViewModel;

  @override
  void initState() {
    // _mainViewModel = MainViewModel();
    super.initState();
    // _init();
  }

  @override
  void dispose() {
   // _mainViewModel.dispose();
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
    _mainViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _mainViewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mainViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }*/
}
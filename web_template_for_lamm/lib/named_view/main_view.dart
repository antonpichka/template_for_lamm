import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
    // _initParameterMainViewModel();
  }

  @override
  void dispose() {
    // _mainViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = ResponsiveValue<String>(
      context,
      defaultValue: "Hello World TABLET",
      conditionalValues: [
        Condition.equals(name: MOBILE, value: "Hello World MOBILE"),
        Condition.equals(name: TABLET, value: "Hello World TABLET"),
        Condition.equals(name: DESKTOP, value: "Hello World DESKTOP"),
      ],
    ).value ?? "";
    final valueFIRST = ResponsiveValue<double>(
      context,
      defaultValue: 24.0,
      conditionalValues: [
        Condition.equals(name: MOBILE, value: 14.0),
        Condition.equals(name: TABLET, value: 24.0),
        Condition.equals(name: DESKTOP, value: 40.0),
      ],
    ).value ?? 0.0;
    return Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                value,
                style: TextStyle(
                  fontSize: valueFIRST,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.8,
                ),
              ),
              ElevatedButton(
                  onPressed: null,
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                      fontSize: valueFIRST,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.8,
                    ),
                  )),
            ],
          ),
        ));
  }

 /* Future<void> _initParameterMainViewModel() async {
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
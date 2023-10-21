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
    // _init();
  }

  @override
  void dispose() {
    // _mainViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = ResponsiveValue<String>(
      context,
      defaultValue: "Hello World TABLET",
      conditionalValues: [
        Condition.equals(name: TABLET, value: "Hello World TABLET"),
        Condition.largerThan(name: TABLET, value: "Hello World DESKTOP"),
        Condition.smallerThan(name: TABLET, value: "Hello World MOBILE")
      ],
    ).value;
    final textSize = ResponsiveValue<double>(
      context,
      defaultValue: 24.0,
      conditionalValues: [
        Condition.equals(name: TABLET, value: 24.0),
        Condition.largerThan(name: TABLET, value: 40.0),
        Condition.smallerThan(name: TABLET, value: 14.0)
      ],
    ).value;
    return Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                text ?? "",
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.8,
                ),
              ),
              ElevatedButton(
                  onPressed: null,
                  child: Text(
                    text ?? "",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                      fontSize: textSize,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.8,
                    ),
                  )),
            ],
          ),
        ));
  }

 /* Future<void> _init() async {
    _mainViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _mainViewQViewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _mainViewQViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }*/
}
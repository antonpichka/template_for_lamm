import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_template_for_lamm/named_vm/main_vm/test_main_view_model.dart';

final class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> {
  /// RELEASE CODE
  // late final MainViewModel _viewModel;
  /// TEST CODE
  late final TestMainViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = MainViewModel();
    /// TEST CODE
    _viewModel = TestMainViewModel();
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = ResponsiveValue<String>(
      context,
      conditionalValues: [
        Condition.equals(name: MOBILE, value: "Hello World MOBILE"),
        Condition.equals(name: TABLET, value: "Hello World TABLET"),
        Condition.equals(name: DESKTOP, value: "Hello World DESKTOP"),
      ],
    ).value ?? "";
    final valueFIRST = ResponsiveValue<double>(
      context,
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

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("MainView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}
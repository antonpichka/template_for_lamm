import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_template_for_lamm/l10n/l10n.dart';
import 'package:web_template_for_lamm/named_utility/flutter_theme_utility.dart';
import 'package:web_template_for_lamm/named_vm/app_vm/test_app_view_model.dart';
import 'package:web_template_for_lamm/named_vm/main_vm/main_view.dart';

final class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

final class _AppViewState extends State<AppView> {
  /// RELEASE CODE
  // late final AppViewModel _viewModel;
  /// TEST CODE
  late final TestAppViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = AppViewModel();
    /// TEST CODE
    _viewModel = TestAppViewModel();
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
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "",
        themeMode: ThemeMode.dark,
        theme: FlutterThemeUtility.light,
        darkTheme: FlutterThemeUtility.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 599, name: MOBILE),
            const Breakpoint(start: 600, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: double.infinity, name: DESKTOP),
          ],
        ),
        routerConfig: _getRouterConfigParameterAppViewModel);
  }

  Future<void> _initParameterViewModel()
  async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("AppView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  /// import 'dart:html' as html; (html.window.history.pushState(null,'',"#/top_players"))
  RouterConfig<RouteMatchList> get _getRouterConfigParameterAppViewModel {
    return GoRouter(
        routes: [],
        errorPageBuilder: (BuildContext context, GoRouterState state) {
          // _appViewModel;
          // final value = state.pageKey.value;
          return MaterialPage(child: MainView());
        });
  }
}
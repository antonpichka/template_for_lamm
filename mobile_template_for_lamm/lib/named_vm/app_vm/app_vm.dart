import 'package:common_template_for_lamm/named_utility/ready_data_utility.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:mobile_template_for_lamm/l10n/l10n.dart';
import 'package:mobile_template_for_lamm/named_utility/flutter_theme_utility.dart';
import 'package:mobile_template_for_lamm/named_utility/keys_routes_utility.dart';
import 'package:mobile_template_for_lamm/named_vm/app_vm/data_for_app_vm.dart';
import 'package:mobile_template_for_lamm/named_vm/app_vm/enum_data_for_app_vm.dart';
import 'package:mobile_template_for_lamm/named_vm/main_vm/main_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class AppVM extends StatefulWidget {
  @override
  State<AppVM> createState() => _AppVMState();
}

final class _AppVMState extends State<AppVM> {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForAppVM> _namedStreamWState;

  @override
  Widget build(BuildContext context) {
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch(dataWNamed.getEnumDataForNamed) {
      case EnumDataForAppVM.isLoading:
        return Container(color: Colors.white);
      case EnumDataForAppVM.exception:
        return Container(
          color: Colors.red,
          child: Center(
              child: Text("Exception: ${dataWNamed.exceptionController.getKeyParameterException}")
          ),
        );
      case EnumDataForAppVM.success:
        return MaterialApp(
            debugShowCheckedModeBanner: true,
            title: "",
            themeMode: ThemeMode.dark,
            theme: FlutterThemeUtility.getLightThemeParameterSeedColor,
            darkTheme: FlutterThemeUtility.getDarkThemeParameterSeedColor,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: (context, child) => ResponsiveBreakpoints .builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0,end: 450, name: MOBILE),
                const Breakpoint(start: 451,end: double.infinity, name: TABLET),
              ],
            ),
            initialRoute: KeysRoutesUtility.mainVM,
            routes: {
              KeysRoutesUtility.mainVM : (context) => MainVM()
            });
    }
  }

  @override
  void initState() {
    _namedStreamWState = lamm.DefaultStreamWState(DataForAppVM(true));
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _tempCacheProvider.dispose([]);
    _namedStreamWState.dispose();
    super.dispose();
  }

  Future<void> _init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      setState(() {});
    });
    final firstRequest = await _firstRequest();
    lamm.debugPrint("AppVM: $firstRequest");
    if(!mounted) {
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }

  Future<String> _firstRequest() async {
    await Future.delayed(const Duration(seconds: 1));
    _namedStreamWState.getDataForNamed.isLoading = false;
    return ReadyDataUtility.success;
  }
}
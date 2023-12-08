import 'package:common_template_for_lamm/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_template_for_lamm/named_vm/app_vm/data_for_app_view.dart';
import 'package:web_template_for_lamm/named_vm/app_vm/i_app_view_model.dart';

@immutable
final class AppViewModel extends BaseNamedViewModel<DataForAppView,DefaultStreamWState<DataForAppView>>
    implements IAppViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  AppViewModel() : super(DefaultStreamWState(DataForAppView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}
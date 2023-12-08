import 'package:common_template_for_lamm/named_utility/keys_success_utility.dart';
import 'package:desktop_template_for_lamm/named_vm/main_vm/data_for_main_view.dart';
import 'package:desktop_template_for_lamm/named_vm/main_vm/i_main_view_model.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class MainViewModel extends BaseNamedViewModel<DataForMainView,DefaultStreamWState<DataForMainView>>
    implements IMainViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  MainViewModel() : super(DefaultStreamWState(DataForMainView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}
import 'package:common_template_for_lamm/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_template_for_lamm/named_vm/main_vm/data_for_main_view.dart';
import 'package:web_template_for_lamm/named_vm/main_vm/i_main_view_model.dart';

@immutable
final class MainViewModel extends BaseNamedViewModel<DataForMainView,DefaultStreamWState<DataForMainView>>
    implements IMainViewModel
{
  MainViewModel() : super(DefaultStreamWState(DataForMainView(false)));

  @override
  Future<String> init() async {
    return KeysSuccessUtility.sUCCESS;
  }
}
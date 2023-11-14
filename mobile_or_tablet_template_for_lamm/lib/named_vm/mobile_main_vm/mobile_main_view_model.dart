import 'package:common_template_for_lamm/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_vm/mobile_main_vm/data_for_mobile_main_view.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_vm/mobile_main_vm/i_mobile_main_view_model.dart';

@immutable
final class MobileMainViewModel extends BaseNamedViewModel<DataForMobileMainView,DefaultStreamWState<DataForMobileMainView>>
    implements IMobileMainViewModel
{
  MobileMainViewModel() : super(DefaultStreamWState(DataForMobileMainView(false)));

  @override
  Future<String> init() async {
    return KeysSuccessUtility.sUCCESS;
  }
}
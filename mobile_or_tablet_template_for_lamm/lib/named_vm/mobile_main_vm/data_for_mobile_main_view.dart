import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_vm/mobile_main_vm/enum_data_for_mobile_main_view.dart';

final class DataForMobileMainView extends BaseDataForNamed<EnumDataForMobileMainView> {
  DataForMobileMainView(super.isLoading);

  @override
  EnumDataForMobileMainView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForMobileMainView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForMobileMainView.exception;
    }
    return EnumDataForMobileMainView.success;
  }
}
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:mobile_w_tablet_template_for_lamm/named_vm/mobile_main_vm/enum_data_for_mobile_main_vm.dart';

final class DataForMobileMainVM extends BaseDataForNamed<EnumDataForMobileMainVM> {
  DataForMobileMainVM(super.isLoading);

  @override
  EnumDataForMobileMainVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForMobileMainVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForMobileMainVM.exception;
    }
    return EnumDataForMobileMainVM.success;
  }
}
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:mobile_template_for_lamm/named_vm/main_vm/enum_data_for_main_vm.dart';

final class DataForMainVM extends BaseDataForNamed<EnumDataForMainVM> {
  DataForMainVM(super.isLoading);

  @override
  EnumDataForMainVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForMainVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForMainVM.exception;
    }
    return EnumDataForMainVM.success;
  }

  @override
  String toString() {
    return "DataForMobileMainVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController)";
  }
}
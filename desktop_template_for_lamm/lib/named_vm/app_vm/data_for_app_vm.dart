import 'package:desktop_template_for_lamm/named_vm/app_vm/enum_data_for_app_vm.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class DataForAppVM extends BaseDataForNamed<EnumDataForAppVM> {
  DataForAppVM(super.isLoading);

  @override
  EnumDataForAppVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAppVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAppVM.exception;
    }
    return EnumDataForAppVM.success;
  }

  @override
  String toString() {
    return "DataForAppVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController)";
  }
}
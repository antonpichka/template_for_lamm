import 'package:mobile_template_for_lamm/named_vm/example_vm/enum_data_for_example_vm.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class DataForExampleVM extends BaseDataForNamed<EnumDataForExampleVM> {
  DataForExampleVM(super.isLoading);

  @override
  EnumDataForExampleVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForExampleVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForExampleVM.exception;
    }
    return EnumDataForExampleVM.success;
  }

  @override
  String toString() {
    return "DataForExampleVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController)";
  }
}
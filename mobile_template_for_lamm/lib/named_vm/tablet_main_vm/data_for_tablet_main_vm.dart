import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:mobile_template_for_lamm/named_vm/tablet_main_vm/enum_data_for_tablet_main_vm.dart';

final class DataForTabletMainVM extends BaseDataForNamed<EnumDataForTabletMainVM> {
  DataForTabletMainVM(super.isLoading);

  @override
  EnumDataForTabletMainVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForTabletMainVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForTabletMainVM.exception;
    }
    return EnumDataForTabletMainVM.success;
  }

  @override
  String toString() {
    return "DataForTabletMainVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController)";
  }
}
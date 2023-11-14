import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:mobile_or_tablet_template_for_lamm/named_vm/tablet_main_vm/enum_data_for_tablet_main_view.dart';

final class DataForTabletMainView extends BaseDataForNamed<EnumDataForTabletMainView> {
  DataForTabletMainView(super.isLoading);

  @override
  EnumDataForTabletMainView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForTabletMainView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForTabletMainView.exception;
    }
    return EnumDataForTabletMainView.success;
  }
}
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_template_for_lamm/named_vm/main_vm/enum_data_for_main_view.dart';

final class DataForMainView extends BaseDataForNamed<EnumDataForMainView> {
  DataForMainView(super.isLoading);

  @override
  EnumDataForMainView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForMainView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForMainView.exception;
    }
    return EnumDataForMainView.success;
  }
}
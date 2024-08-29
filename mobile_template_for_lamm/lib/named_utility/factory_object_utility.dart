import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:mobile_template_for_lamm/model_wrapper_repository/example_wrapper_repository/example_wrapper_repository.dart';
import 'package:mobile_template_for_lamm/named_vm/app_vm/data_for_app_vm.dart';
import 'package:mobile_template_for_lamm/named_vm/example_vm/data_for_example_vm.dart';
import 'package:mobile_template_for_lamm/named_vm/main_vm/data_for_main_vm.dart';

@immutable
final class FactoryObjectUtility {
  const FactoryObjectUtility._();

  /* ModelWrapperRepository */
  static ExampleWrapperRepository get getExampleWrapperRepository {
    return const ExampleWrapperRepository();
  }

  /* NamedStreamWState */
  static BaseNamedStreamWState<DataForExampleVM> get getNamedStreamWStateWhereDataWExampleVM {
    return DefaultStreamWState<DataForExampleVM>(DataForExampleVM(true));
  }

  static BaseNamedStreamWState<DataForAppVM> get getNamedStreamWStateWhereDataWAppVM {
    return DefaultStreamWState<DataForAppVM>(DataForAppVM(true));
  }

  static BaseNamedStreamWState<DataForMainVM> get getNamedStreamWStateWhereDataWMainVM {
    return DefaultStreamWState<DataForMainVM>(DataForMainVM(true));
  }
}
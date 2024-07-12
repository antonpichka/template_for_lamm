import 'package:desktop_template_for_lamm/model_repository/example_repository/example_repository.dart';
import 'package:desktop_template_for_lamm/named_vm/example_vm/data_for_example_vm.dart';
import 'package:desktop_template_for_lamm/named_vm/main_vm/data_for_main_vm.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class FactoryObjectUtility {
  const FactoryObjectUtility._();

  /* ModelRepository */
  static ExampleRepository get getExampleRepository {
    return const ExampleRepository();
  }

  /* NamedStreamWState */
  static BaseNamedStreamWState<DataForExampleVM> get getNamedStreamWStateWhereDataWExampleVM {
    return DefaultStreamWState<DataForExampleVM>(DataForExampleVM(true));
  }

  static BaseNamedStreamWState<DataForMainVM> get getNamedStreamWStateWhereDataWMainVM {
    return DefaultStreamWState<DataForMainVM>(DataForMainVM(true));
  }
}
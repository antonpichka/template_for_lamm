import 'package:common_template_for_lamm/model/example/example_wrapper.dart';
import 'package:common_template_for_lamm/model/example/list_example_wrapper.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ExampleWrapperRepository<T extends ExampleWrapper, Y extends ListExampleWrapper> extends BaseModelWrapperRepository {
  const ExampleWrapperRepository();

  @override
  void dispose() {
  }

  Future<ResultWithModelWrapper<T>> getExampleParameterUnknown() async {
    throw Exception();
  }
}
import 'package:common_template_for_lamm/model/example/example.dart';
import 'package:common_template_for_lamm/model/example/list_example.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ExampleRepository<T extends Example, Y extends ListExample<T>> extends BaseModelRepository {
  const ExampleRepository();

  Future<Result<T>> getExampleParameterOne() async {
    throw Exception();
  }
}
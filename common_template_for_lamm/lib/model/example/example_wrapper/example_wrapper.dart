import 'package:common_template_for_lamm/model/example/example.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ExampleWrapper extends BaseModelWrapper {
  const ExampleWrapper(super.listObject);

  @override
  Example createModel() {
    return Example(listObject[0]);
  }
}
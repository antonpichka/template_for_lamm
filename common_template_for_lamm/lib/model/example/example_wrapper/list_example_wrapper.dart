import 'package:common_template_for_lamm/model/example/example.dart';
import 'package:common_template_for_lamm/model/example/example_wrapper/example_wrapper.dart';
import 'package:common_template_for_lamm/model/example/list_example.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListExampleWrapper extends BaseListModelWrapper {
  const ListExampleWrapper(super.listsListObject);

  @override
  ListExample createListModel() {
    final List<Example> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      final exampleWrapper = ExampleWrapper(itemListObject);
      listModel.add(exampleWrapper.createModel());
    }
    return ListExample(listModel);
  }
}
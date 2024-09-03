import 'package:common_template_for_lamm/model/example/example.dart';
import 'package:common_template_for_lamm/model/example/list_example.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListExampleWrapper extends BaseListModelWrapper {
  const ListExampleWrapper(super.listObject);

  @override
  ListExample createListModel() {
    final List<Example> listModel = List.empty(growable: true);
    for (final List<dynamic> itemListObject in listsListObject) {
      listModel.add(Example(itemListObject[0]));
    }
    return ListExample(listModel);
  }
}
import 'package:common_template_for_lamm/model/example/example.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListExample<T extends Example> extends BaseListModel<T> {
  const ListExample(super.listModel);

  @override
  ListExample<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (final T model in listModel) {
      newListModel.add(model.clone() as T);
    }
    return ListExample<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListExample(listModel: [$strListModel])";
  }
}
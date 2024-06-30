import 'package:common_template_for_lamm/model/example/example.dart';
import 'package:common_template_for_lamm/model/example/list_example.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ExampleRepository<T extends Example, Y extends ListExample<T>> extends BaseModelRepository<T, Y> {
  const ExampleRepository();

  @protected
  @override
  T getBaseModelFromMapAndListKeys(Map<String, dynamic> map, List<String> listKeys) {
    return Example(getSafeValueWhereUsedInMethodGetModelFromMapAndListKeysAndIndexAndDefaultValue(
        map, listKeys, 0, "")) as T;
  }

  @protected
  @override
  Y getBaseListModelFromListModel(List<T> listModel) {
    return ListExample(listModel) as Y;
  }

  @nonVirtual
  Future<Result<T>> getExampleParameterOne() async {
    return getModeCallbackFromReleaseCallbackAndTestCallbackParameterEnumRWTMode(
        getExampleParameterOneWReleaseCallback,
        getExampleParameterOneWTestCallback)();
  }

  @protected
  Future<Result<T>> getExampleParameterOneWReleaseCallback() async {
    throw Exception();
  }

  @protected
  Future<Result<T>> getExampleParameterOneWTestCallback() async {
    throw Exception();
  }

  @protected
  List<String> get getExampleParameterOneWListKeys {
    throw Exception();
  }
}
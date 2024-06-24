import 'package:common_template_for_lamm/model/example/example.dart';
import 'package:common_template_for_lamm/model/example/list_example.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ExampleRepository<T extends Example, Y extends ListExample<T>> extends BaseModelRepository<T, Y> {
  const ExampleRepository(super.enumRWTMode);

  @protected
  @override
  T getBaseModelFromMapAndListKeys(Map<String, dynamic> map, List<String> listKeys) {
    if (listKeys.isEmpty) {
      return const Example("") as T;
    }
    return Example(map.containsKey(listKeys[0]) ? map[listKeys[0]] : "") as T;
  }

  @protected
  @override
  Y getBaseListModelFromListModel(List<T> listModel) {
    return ListExample(listModel) as Y;
  }

  Future<Result<T>> getExampleParameterQweService() async {
    return getModeCallbackFromReleaseCallbackAndTestCallbackParameterEnumRWTMode(
        _getExampleParameterQweServiceWReleaseCallback,
        _getExampleParameterQweServiceWTestCallback)();
  }

  Future<Result<T>> _getExampleParameterQweServiceWReleaseCallback() async {
    throw Exception();
  }

  Future<Result<T>> _getExampleParameterQweServiceWTestCallback() async {
    throw Exception();
  }
}
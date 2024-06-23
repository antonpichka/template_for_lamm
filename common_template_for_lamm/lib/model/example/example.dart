import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Example extends BaseModel {
  const Example(super.uniqueId);

  @override
  Example get getClone => Example(uniqueId);

  @override
  String toString() {
    return "Example(uniqueId: $uniqueId)";
  }
}
import 'package:desktop_template_for_lamm/model_wrapper_repository/example_wrapper_repository/example_wrapper_repository.dart';
import 'package:meta/meta.dart';

@immutable
final class FactoryModelWrapperRepositoryUtility {
  const FactoryModelWrapperRepositoryUtility._();

  static ExampleWrapperRepository get getExampleWrapperRepository {
    return const ExampleWrapperRepository();
  }
}
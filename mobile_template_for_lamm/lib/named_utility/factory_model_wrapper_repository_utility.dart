import 'package:meta/meta.dart';
import 'package:mobile_template_for_lamm/model_wrapper_repository/example_wrapper_repository/example_wrapper_repository.dart';

@immutable
final class FactoryModelWrapperRepositoryUtility {
  const FactoryModelWrapperRepositoryUtility._();

  static ExampleWrapperRepository get getExampleWrapperRepository {
    return const ExampleWrapperRepository();
  }
}
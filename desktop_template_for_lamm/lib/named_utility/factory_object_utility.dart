import 'package:desktop_template_for_lamm/model_repository/example_repository/example_repository.dart';
import 'package:meta/meta.dart';

@immutable
final class FactoryObjectUtility {
  const FactoryObjectUtility._();

  /* ModelRepository */
  static ExampleRepository get getExampleRepository {
    return const ExampleRepository();
  }
}
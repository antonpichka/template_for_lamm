import 'package:alfred/alfred.dart';
import 'package:alfred_name/named_view/get_model_view.dart';

void main() async {
  final app = Alfred();

  GetModelView(app);

  await app.listen();
}
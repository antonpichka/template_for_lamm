import 'package:alfred/alfred.dart';
import 'package:alfred_name/utility/routes.dart';

class GetUserWidget {
  GetUserWidget(Alfred alfred, /* GetUserWidgetListViewModel lo*/) {
    alfred.get(Routes.getUserWidget, (req, res) => 'Hello world');
  }
}
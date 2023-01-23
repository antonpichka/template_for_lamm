import 'package:alfred/alfred.dart';
import 'package:alfred_name/utility/routes.dart';

class GetMovieWidget {
  GetMovieWidget(Alfred alfred, /* GetMovieWidgetListViewModel lo*/) {
    alfred.get(Routes.getMovieWidget, (req, res) => 'Hello world');
  }
}
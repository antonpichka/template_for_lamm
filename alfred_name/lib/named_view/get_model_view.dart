import 'package:alfred/alfred.dart';
import 'package:alfred_name/named_view/named_widget/get_movie_widget.dart';
import 'package:alfred_name/named_view/named_widget/get_user_widget.dart';

class GetModelView {
 /* final lo = GetModelViewListViewModel();*/

  GetModelView(Alfred alfred) {
    GetUserWidget(alfred,/* lo.getUserWidgetListViewModel*/);
    GetMovieWidget(alfred,/* lo.getMovieWidgetListViewModel*/);
  }
}
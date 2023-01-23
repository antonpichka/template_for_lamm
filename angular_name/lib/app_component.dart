import 'package:angular/angular.dart';

@Component(
  selector: 'my-app', // web/index.html (tag <body>)
  template: '<my_name [lo]="lo"></my_name>',
  directives: [/*NamedView,*/],
)
class AppComponent {
  // final lo = NamedViewListViewModel();
}
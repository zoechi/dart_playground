library hash_location_strategy.app_element;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart'
    show Router, ROUTER_PROVIDERS, APP_BASE_HREF, LocationStrategy, HashLocationStrategy, ROUTER_DIRECTIVES, RouteConfig, Route;

@Component(selector: 'app-element',
   providers: const [
     ROUTER_PROVIDERS,
     const Provider(APP_BASE_HREF, useValue: '/'),
     const Provider(LocationStrategy, useClass: HashLocationStrategy)
   ])
@View(templateUrl: 'app_element.html',
   directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
 const Route(path: '/person-list',
     component: PersonListComponent,
     useAsDefault: true)
])
class AppElement {}

@Component(selector: 'person-list')
@View(template: '<h3>person-list</h3>')
class PersonListComponent {}
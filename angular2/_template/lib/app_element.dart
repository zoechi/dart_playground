library _template.app_element;

import 'package:angular2/angular2.dart' show Component, View, Input, Output, FORM_DIRECTIVES, ControlGroup;

@Component(
    selector: 'app-element'
)
@View(
    template: '''
<h1>app-element</h1>
''' //,
//    directives: const [FORM_DIRECTIVES]
)
class AppElement {
}

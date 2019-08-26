import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:energized_id/energized_id.dart';

@Component(
  selector: 'form_component',
  templateUrl: 'form_component.html',
  directives: [coreDirectives, formDirectives],
)
class form_component {
  Student model = Student()
    ..firstName = "Micah"
    ..lastName = "Guttman"
    ..gradeLevel = 10;
  bool submitted = false;

  //List<String> get powers => _powers;

  void onSubmit() => submitted = true;
}

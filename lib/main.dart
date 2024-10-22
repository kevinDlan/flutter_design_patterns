import 'package:design_pattern/SOLID/Open_close_principal/good.dart';
import 'package:design_pattern/design_patterns/creational/factory.dart';
import 'package:design_pattern/design_patterns/structural/adapter.dart';
import 'package:design_pattern/enums/employee_type.dart';

import 'design_patterns/creational/prototype.dart';

void main() {
  Employee employee = Employee(type: EmployeeType.programmer);

  employee.work();

  PostApiAdaptable postApiAdaptable = PostApiAdaptable();

  postApiAdaptable.showPost();

  const Person person = Person(
      lastname: "KONE",
      firstname: "Kevin",
      age: 20,
      email: 'kevinkone19@gmail.com');

  Person cloneOfPerson = person.clone();

  print(cloneOfPerson.age);

  // runApp(const MyApp());

  final Circle circle = Circle(radius: 10);

  final AreaCalculator areaCalculator = AreaCalculator(circle);

  print(areaCalculator.calculateArea());
}

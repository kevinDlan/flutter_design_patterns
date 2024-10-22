import 'package:design_pattern/enums/employee_type.dart';

abstract class Employee {
  void work();

  factory Employee({required EmployeeType type}) {
    switch (type) {
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hrManager:
        return HRManager();
      case EmployeeType.boss:
        return Boss();
      default:
        throw Exception("Please provide an employee");
    }
  }
}

class Programmer implements Employee {
  @override
  void work() {
    print("Coding App");
  }
}

class HRManager implements Employee {
  @override
  void work() {
    print("Recruiting talent");
  }
}

class Boss implements Employee {
  @override
  void work() {
    print("Leading people");
  }
}

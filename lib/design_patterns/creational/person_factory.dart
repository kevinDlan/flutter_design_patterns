// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:design_pattern/enums/person_type.dart';

abstract class Person {
  void doForLiving();

  factory Person(
      {required PersonType personType,
      required String name,
      required String email}) {
    switch (personType) {
      case PersonType.student:
        return Student(
          name: name,
          email: email,
        );
      default:
        return Student(
          name: name,
          email: email,
        );
    }
  }
}

class User {
  final String name;
  final String email;
  User({
    required this.name,
    required this.email,
  });
}

class Student extends User implements Person {
  Student({required super.name, required super.email});

  @override
  void doForLiving() {
    print("Go to school to lean.");
  }
}

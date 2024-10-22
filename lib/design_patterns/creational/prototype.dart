class Person {
  final String lastname;
  final String firstname;
  final int age;
  final String email;

  const Person(
      {required this.lastname,
      required this.firstname,
      required this.age,
      required this.email});

  Person copyWith(
      String? lastname, String? firstname, int? age, String? email) {
    return Person(
        lastname: lastname ?? this.lastname,
        firstname: firstname ?? this.firstname,
        age: age ?? this.age,
        email: email ?? this.email);
  }

  Person clone() => copyWith(lastname, firstname, age, email);
  // Person(lastname: lastname, firstname: firstname, age: age, email: email);
}

//**
// This User class violate the SRP principal
// because he contain one that more responsibility
// */

class User {
  final String firstName;
  final String lastName;
  final int age;

  User({
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  //Responsibility one
  void storeUserToDatabase() {
    //implementation of feature
  }

  //Responibility two
  void showWelcomeMessage() {
    print("Welcome $firstName");
  }
}

class User {
  final String firstName;
  final String lastName;
  final int age;

  User({
    required this.firstName,
    required this.lastName,
    required this.age,
  });
}

class UserRepository {
  final User user;

  UserRepository(this.user);

  void saveUserToDatabase() {
    //Implement save user usecase here
  }
}

class UserView {
  final User user;

  UserView(this.user);
  void showWelcomeMessage() {
    print("Welcome, ${user.firstName} !");
  }
}

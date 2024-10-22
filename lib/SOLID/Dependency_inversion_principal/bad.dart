class User {
  final String name;

  User({required this.name});
}

class MySQLDatabase {
  void saveUser(User user) {
    print("Saving user ${user.name} in database.");
    //save user business logic
  }
}

class UserService {
  MySQLDatabase mySQLDatabase;

  UserService(this.mySQLDatabase);

  void saveUser(User user) {
    mySQLDatabase.saveUser(user);
  }
}

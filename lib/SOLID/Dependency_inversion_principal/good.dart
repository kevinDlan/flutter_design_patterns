import 'package:design_pattern/design_patterns/creational/person_factory.dart';

abstract interface class Database {
  void saveUser();
}

class MysqlDatabase implements Database {
  User user;

  MysqlDatabase(this.user);

  @override
  void saveUser() {
    print("Saving user ${user.name} in mysql database");
  }
}

class PostgreSQLDatabase implements Database {
  User user;

  PostgreSQLDatabase(this.user);
  @override
  void saveUser() {
    print("Saving user ${user.name} in mysql postgresql");
  }
}

class UserService {
  Database database;

  UserService(this.database);

  void saveUser() {
    database.saveUser();
  }
}

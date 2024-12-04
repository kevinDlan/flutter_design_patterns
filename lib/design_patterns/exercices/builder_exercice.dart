class User {
  late final String _firstName;
  late final String _lastName;
  int? _age;
  String? _phoneNumber;
  String? _adress;
  late final String _emailAdress;

  String get firstName => _firstName;

  String get lastName => _lastName;

  int? get age => _age;

  String? get phoneNumber => _phoneNumber;

  String? get adress => _adress;

  String get emailAdress => _emailAdress;
}

class UserBuilder {
  User user = User();
  // UserBuilder({
  //   required this.firstName,
  //   required this.lastName,
  //   required this.emailAdress,
  //   this.age,
  //   this.adress,
  //   this.phoneNumber,
  // });

  User create(String firstName, String lastName, String emailAdress,
      [int? age, String? phoneNumber, String? adress]) {
    user._firstName = firstName;
    user._lastName = lastName;
    user._age = age;
    user._phoneNumber = phoneNumber;
    user._adress = adress;
    user._emailAdress = emailAdress;
    return user;
  }
}

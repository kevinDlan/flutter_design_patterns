import 'package:design_pattern/design_patterns/exercices/builder_exercice.dart';
import 'package:design_pattern/design_patterns/exercices/singleton_exercice_one.dart';

void main() {
  // int numberOne = SingletonEagerSequenceGenerator().getNextNumber();
  // int numberTwo = SingletonEagerSequenceGenerator().getNextNumber();
  // int numberThree = SingletonEagerSequenceGenerator().getNextNumber();
  // print(numberOne);
  // print(numberTwo);
  // print(numberThree);

  User userOne =
      UserBuilder().create("Kevin", "KONE", "kevinkone19@gmail.com", 10);

  print(userOne.adress);
}

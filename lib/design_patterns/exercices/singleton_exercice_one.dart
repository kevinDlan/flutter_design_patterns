abstract class Singleton {
  Singleton._privateContructor();
}

class SingletonLazySequenceGenerator extends Singleton {
  SingletonLazySequenceGenerator._privateContructor()
      : super._privateContructor();

  static final SingletonLazySequenceGenerator _instance =
      SingletonLazySequenceGenerator._privateContructor();

  factory SingletonLazySequenceGenerator() {
    return _instance;
  }

  int _counter = 0;

  int getNextNumber() {
    _counter++;
    return _counter;
  }
}

class SingletonEagerSequenceGenerator {
  static final _instance = SingletonEagerSequenceGenerator._internal();

  SingletonEagerSequenceGenerator._internal();

  factory SingletonEagerSequenceGenerator() {
    print("Call Factory method");
    return _instance;
  }

  int _counter = 0;

  int getNextNumber() {
    _counter++;
    return _counter;
  }
}

class SequenceGenerator {
  int _counter = 0;

  int getNextNumber() {
    _counter++;
    return _counter;
  }
}

import 'package:flutter/material.dart';

class Singleton {
  static Singleton? _instance;

  Singleton.internal() {
    debugPrint("Private Constructor run");
  }

  // static getIntance() {
  //   _instance ??= Singleton.internal();
  //   return _instance;
  // }

  // Lazy implementation
  static Singleton? get instance {
    _instance ??= Singleton._instance;
    return _instance;
  }
}

// Second way to implement singleton
class Singleton1 {
  // eager instantiation
  static final Singleton1 _instance = Singleton1._internal();

  Singleton1._internal() {
    debugPrint("Creating an instance of singleton");
  }

  factory Singleton1() {
    return _instance;
  }
}

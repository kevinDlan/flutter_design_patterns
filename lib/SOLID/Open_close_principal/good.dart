import 'dart:math';

abstract interface class Shape {
  double calculateArea();
}

class Circle implements Shape {
  final double radius;

  Circle({required this.radius});

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square implements Shape {
  double side;

  Square({required this.side});

  @override
  double calculateArea() {
    return side * side;
  }
}

class AreaCalculator {
  final Shape shape;

  AreaCalculator(this.shape);

  double calculateArea() {
    return shape.calculateArea();
  }
}

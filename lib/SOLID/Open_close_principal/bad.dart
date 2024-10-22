class Shape {
  String type;

  Shape({required this.type});
}

class AreaCalculator {
  final Shape shape;

  AreaCalculator(this.shape);

  /// This is bad, because the caculateArea method is not close for modification
  double calculateArea() {
    switch (shape.type) {
      case 'circle':
        return 0.0;
      case 'rectangle':
        return 5.0;
      default:
        return 1.0;
    }
  }
}

// Bad
class PizzaShop {
  final String name;
  final String city;
  final int zipCode;

  PizzaShop({
    required this.name,
    required this.city,
    required this.zipCode,
  });

  void getName() {}

  void changeAddress(String city, int zipCode) {}
}

// Good

class PizzaShopG {
  final String name;
  final String city;
  final int zipCode;

  PizzaShopG({
    required this.name,
    required this.city,
    required this.zipCode,
  });
}

class PizzaShopGService {
  final PizzaShopG pizzaShopG;

  PizzaShopGService(this.pizzaShopG);

  String getName() {
    return pizzaShopG.name;
  }

  void changeAddress(String city, int zipCode) {}
}

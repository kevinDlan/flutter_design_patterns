/// Shipping address
///
class Address {
  late String contactName;
  late String addressLine1;
  late String addressLine2;
  late String city;
  late String region;
  late String country;
  late String postalCode;
}

/// Shippers you can choose from
///
enum ShippingOptions { ups, fedex, purulator }

/// Order entity
///
class Order {
  late ShippingCostCalculator _shippingMethod;
  late Address _destination;
  late Address _origin;

  Order(ShippingCostCalculator shippingMethod, Address destination,
      Address origin) {
    _shippingMethod = shippingMethod;
    _destination = destination;
    _origin = origin;
  }

  ShippingCostCalculator get shippingMethod {
    return _shippingMethod;
  }

  Address get origin {
    return _origin;
  }

  Address get destination {
    return _destination;
  }
}

/// Shipping cost calculation service
///
class ShippingCostCalculatorService {
  double calculateShippingCost(Order order) {
    return order._shippingMethod.calculateShippingCost();
  }
}

abstract interface class ShippingCostCalculator {
  double calculateShippingCost();
}

class FedExShippingCostCalculator implements ShippingCostCalculator {
  @override
  double calculateShippingCost() {
    return 9.25;
  }
}

class PurulatorShippingCostCalculator implements ShippingCostCalculator {
  @override
  double calculateShippingCost() {
    return 5.00;
  }
}

class UPSShippingCostCalculator implements ShippingCostCalculator {
  @override
  double calculateShippingCost() {
    return 7.25;
  }
}

abstract interface class Vehicule {
  void move();
}

abstract interface class FuelVehicule extends Vehicule {
  void refuel();
}

abstract interface class ElectricVehicule extends Vehicule {
  void charge();
}

class ElectricCar implements ElectricVehicule {
  @override
  void charge() {
    print('Charging the battery ...');
  }

  @override
  void move() {
    print('Moving ...');
  }
}

class PetrolCar implements FuelVehicule {
  @override
  void move() {
    print("Moving");
  }

  @override
  void refuel() {
    print("Refilling the petrol...");
  }
}

void serviceFuelVehicule(FuelVehicule fuelVehicule) {
  fuelVehicule.refuel();
}

void serviceElectricVehicule(ElectricVehicule electricVehicule) {
  electricVehicule.charge();
}

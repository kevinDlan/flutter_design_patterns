abstract interface class Vehicule {
  void refuel();

  void move();
}

class ElectricCar implements Vehicule {
  @override
  void refuel() {
    print("Charging the battery ...");
  }

  @override
  void move() {
    print("Moving");
  }
}

class PetrolCar implements Vehicule {
  @override
  void refuel() {
    print("Refilling the petrol...");
  }

  @override
  void move() {
    print("Moving ...");
  }
}

// the behavior a this class violate the liskov subtitution principal
void serviceVehicule(Vehicule vehicule) {
  vehicule.refuel();
}

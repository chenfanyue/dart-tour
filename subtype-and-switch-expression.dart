sealed class Vehicle {}

// subtype
class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

// Subclasses can be instantiated.
Vehicle myBicycle = Bicycle();

String getVehicleSound(Vehicle vehicle) {
  return switch (vehicle) {
    Car() => 'vroom',
    Truck() => 'VROOOOMM',
    Bicycle() => 'ding',
  };
}

void main(List<String> args) {
  var sound = getVehicleSound(myBicycle);
  print(sound);
}

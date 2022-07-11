class Car {
  Car() {
    print("Non-parameterized constructor invoked");
  }
  Car.namedConst(String engine) {
    print("The engine is : ${engine}");
  }
}

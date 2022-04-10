import 'dart:ffi';

class Animal {
  final String name;

  Animal({required this.name});

  void whatAmI() => print("I am an animanl");
  void chase(Animal a) {}
}

class Bird extends Animal {
  Bird(String name) : super(name: name);
}

class Duck extends Bird {
  Duck(String name) : super(name);

  // === Polimorphism
  // Take a method with the same name from inside the base class
  // and override it to perform specific behavior
  @override
  void whatAmI() => print("I am a duck");
}

class Mouse extends Animal {
  Mouse() : super(name: 'Jerry');
}

class Cat extends Animal {
  Cat() : super(name: 'Tom');
  @override
  void chase(covariant Mouse m) {}
}

void main() {
  Duck duck = Duck('Munckin');
  duck.whatAmI();
}

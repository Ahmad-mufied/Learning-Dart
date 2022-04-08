// Abstract Classes ======
// a class that groups logic into itself with sole purpose of other classes

// Abstract classes can't be instantiated.
//Try creating an instance of a concrete subtype.

abstract class Living {
  void breathe() {
    print('Living thing is breathing');
  }

  void move() {
    print('I am moving');
  }
}

class Bird extends Living {}

void testAbstractClass() {
  final fluffers = Bird();
  fluffers.move();
  fluffers.breathe();
}

void main() {
  testAbstractClass();
}
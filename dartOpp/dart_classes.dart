import 'dart:math';

class A {
  @override
  String toString() {
    // super.toString();
    return 'This is A!';
  }
}

class B {
  // B(); is Default Constractor

  // // Make manual Constractor
  // B(
  //     int p ,
  //     int a ,
  //     int b ,
  //     int c ,
  //     int d ,
  //     int e ,
  //     int f ,
  //     ) : this.c = c // Initializer
  // {
  //   _private = p;
  //   this.a = a;
  //   this.b = b;
  //   // this.c = c;
  //   this.d = d;
  //   this.e = e;
  //   this.f = f;
  // }

  // // Positional Parameter
  // B(this._private, this.a, this.b, this.c, this.d, this.e, this.f,);

  // Named Parameter
  B(this._private,
      {this.a,
      required this.b,
      required this.c,
      required this.d,
      required this.e,
      required this.f});

  //  Instance Variable = fields

  int? _private;

  int? a;
  int b = 1;

  final int c;

  late int d;
  late final int e;
  late final int f;

  static int g = 6;
  static late int h;
  static late int i = 8;
  static late final int j;

  static const int k = 10;

  @override
  String toString() =>
      'B(_private: $_private, a: $a, b: $b, c: $c, d: $d, e: $e, f: $f)';
}

class C {
  C({required this.x, required this.y});
  final int x;
  final int y;

  // Multiple Constractor
  C.zero()
      : x = 0,
        y = 0;

  C.fromJson({required Map<String, int> json})
      : x = json['x']!,
        y = json['y']!;

  // Redirecting Constratctor
  C.zeroX({required int y}) : this(x: 0, y: y);
  C.zeroY({required int x}) : this(x: x, y: 0);

  @override
  String toString() {
    return "C(x: $x, y: $y)";
  }
}

class Point {
  // Use const constructors if you want to create objects that never change and are treated as compile time constants.
  // A class can have constant constructor only if all of its members are final.
  const Point({
    required this.x,
    required this.y,
  });

  // Factory Constractor
  factory Point.random({required bool isPositive}) {
    int minNegativeValue = -99;
    int maxNegativeValue = -1;
    int minPositiveValue = 0;
    int maxPositveValue = 99;

    int randomNegativeValue = minNegativeValue +
        Random().nextInt(maxNegativeValue - minNegativeValue);
    int randomPositiveValue =
        minPositiveValue + Random().nextInt(maxPositveValue - minPositiveValue);

    return isPositive
        ? Point(x: randomPositiveValue, y: randomNegativeValue)
        : Point(x: randomNegativeValue, y: randomNegativeValue);
  }

  factory Point.explanation() {
    return origin;
  }

  final int x;
  //? int get x => x;
  final int y;
  //? int get y => y;

  // Aditional getter and setter
  int get sum => x + y;
  int get diff => x - y;

  // static field 
  static const Point origin = Point(x: 0, y: 0);

  // static method
  static distanceBetween(Point p1, Point p2) {
    var dx = p1.x - p2.x;
    var dy = p1.y - p2.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  // Instance method
  num distanceTo(Point p1) {
    var dx = x - p1.x;
    var dy = y - p1.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  String toString() => 'Point(x: $x, y: $y)';
}

class SetterCar {
  late int age;
  set manufacturedYear(int value) => age = 2021 - value;
}

void testClassA() {
  var a = A();
  var hashCode = a.hashCode;
  print('hashCode --> $hashCode');

  var runtimeType = a.runtimeType;
  print('runtimeType --> $runtimeType');

  var str = a.toString();
  print('str --> $str');
}

void testClassB() {
  var alfa = B(
    1,
    a: 2,
    b: 3,
    c: 4,
    d: 5,
    e: 6,
    f: 7,
  );

  print('alfa._private; --> ${alfa._private}');
  print('alfa.a --> ${alfa.a}');
  print('alfa.b --> ${alfa.b}');
  print('alfa.c --> ${alfa.c}');

  alfa.d = 3;
  print('alfa.d --> ${alfa.d}');

  print('alfa.e --> ${alfa.e}');
  print('alfa.f --> ${alfa.f}');

  // Because Static
  print('alfa.g --> ${B.g}');
  B.h = 7;
  print('alfa.h --> ${B.h}');
  print('alfa.i --> ${B.i}');
  B.j = 9;
  print('alfa.j --> ${B.j}');
  print('alfa.k --> ${B.k}');

  print('alfa --> $alfa');
}

void tesClassC() {
  var beta = C(x: 1, y: 2);
  var betaZero = C.zero();
  var betaFromJson = C.fromJson(json: {
    'x': 5,
    'y': 10,
  });
  var betaZeroX = C.zeroX(y: 30);
  var betaZeroY = C.zeroY(x: 30);
  print('beta --> $beta');
  print('betaZero --> $betaZero');
  print('betaFromJson --> $betaFromJson');
  print('betaZeorX --> $betaZeroX');
  print('betaZeroY --> $betaZeroY');
}

void testPointClass() {
  const p1 = Point(x: 1, y: 2);
  const p2 = Point(x: 1, y: 2);
  identical(p1, p2);
  print('identical(p1, p2) --> ${identical(p1, p2)}');

  const listOfPoints = [
    Point(x: 1, y: 1),
    Point(x: 1, y: 1),
  ];
  print(
      'identical(listOfPoints[0], listOfPoints[1]) --> ${identical(listOfPoints[0], listOfPoints[1])}');
  p1.sum;
  print('p1.sum --> ${p1.sum}');
  p1.diff;
  print('p1.diff --> ${p1.diff}');

  Point.distanceBetween(p1, p2);
  print('Point.distanceBetween(p1, p2) --> ${Point.distanceBetween(p1, p2)}');
}

void testFactoryConstractor() {
  var randomNegative = Point.random(isPositive: false);
  print('randomNegative --> ${randomNegative}');
  var randomPositive = Point.random(isPositive: true);
  print('randomPositive --> ${randomPositive}');

  var origin = Point.explanation();
  print(origin);
}

void testSetterCar() {
  var car = SetterCar();
  car.manufacturedYear = 2006;
  car.age;
  print('car.age --> ${car.age}');
}

void main() {
  // testClassA();
  // testClassB();
  // tesClassC();
  testPointClass();
  // testFactoryConstractor();
  // testSetterCar(); 
}

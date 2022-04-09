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

  @override
  String toString() {
    return "C(x: $x, y: $y)";
  }
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
  print('beta --> $beta');
  print('alfaZero --> $betaZero');
  print('betaFromJson --> $betaFromJson');
}

void main() {
  // testClassA();
  // testClassB();
  tesClassC();
}

class Singleton {
  Singleton._privateConstractor();
  static final _instance = Singleton._privateConstractor();
  factory Singleton() => _instance;
}

class ConstantClass {
  const ConstantClass();
}

void main() {
  var s1 = Singleton();
  var s2 = Singleton();

  ConstantClass c1 = const ConstantClass();
  ConstantClass c2 = const ConstantClass();

  print('identical(s1, s2) --> ${identical(s1, s2)}');

  print('identical(c1, c2) --> ${identical(c1, c2)}');
}

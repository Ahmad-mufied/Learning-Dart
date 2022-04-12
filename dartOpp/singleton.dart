class Singleton {
  Singleton._privateConstractor();
  static final _instance = Singleton._privateConstractor();
  factory Singleton() => _instance;
}

void main() {
  var s1 = Singleton();
  var s2 = Singleton();
  print('identical(s1, s2) --> ${identical(s1, s2)}');
}

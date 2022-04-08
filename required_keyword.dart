// The parameters of a class constructor or function are required by default.
class Test1 {
  final String x;
  Test1(this.x);

  String hello() {
    return x;
  }
}

/// Optional named parameters
//
// If you surround a parameter with curly braces, though, in addition to becoming a named parameter, it also becomes optional.
//
// Since it's optional, the property must either be nullable like this:
class Test2 {
  final String? x;
  Test2({this.x});

  String? hello() => x;
}
// Or it has to have a default value like this:
class Test3 {
  final String? x;
  Test3({this.x = ''});

  String? hello() => x;
}

/// Required named parameters
//
// Sometimes you don't want to allow a parameter to be null
// and there is no natural default variable. In that case you can add
// the required keyword in front of the parameter name:
class Test4 {
  final String x;
  Test4({
    required this.x
});

  String? hello() => x;
}

void main() {
  // You must do this:
  final value1 = Test1('hello');
  print(value1.hello());

  // So now this is ok:
  final value2 = Test2();
  print(value2.x);
  // And so this:
  final value3 = Test3(x: 'hello3');
  print(value3.x);

  // This is not ok anymore:
  // final value4 = Test4();
  // The named parameter 'x' is required, but there's no corresponding argument.

  // But this still fine:
  final value4 = Test4(x: 'hello4');
  print(value4.x);

}
const age = 27;
const twiceTheAge = age * 2;

String getFullName(String firstName, String lastName) {
  return '$firstName $lastName';
}

String getNickName(String name) => 'He is $name';

String printMyName() {
  return '';
}

// var name = 'Alex';
// name = 'Anthony';

void test() {
  const name = 'Bar';

  if (name == 'Foo') print('Ok this is foo');

  if (name == 'Foo') {
    print('Yes this is foo');
  } else if (name == 'Bar') {
    print('Yes this is Bar');
  } else {
    print("I don't know what this is");
  }
}

void testNumber() {
  // infix operator
  var age = 20;
  final halfOfAge = age / 2;
  print(halfOfAge);

  // prefix operator
  final ageMinusOne = --age;
  print(ageMinusOne);

  final name = 'Foo Bar Baz';
  final nameTimes5 = name * 5;
  print(nameTimes5);

  print('\n');
}

void testList() {
  var names = ['Foo', 'Bar', 'Baz'];
  final foo = names[0];
  print(foo);
  names.add('My name');
  print(names.length);
}

void testSet() {
  var names = {'foo', 'bar', 'baz'};
  var things = {'foo', 1};
  names.add('foo');
  print(names);
  print(things);
}

void testMap() {
  var person = {'age': 20, 'name': 'Foo'};
  print(person);
  person['name'] = 'Foooo';
  print(person);
  person['lastName'] = 'Baz';
  print(person);
}

void testNullSafety() {
  String? name = null;
  print(name);
  name = 'Foo';
  print(name);

  List<String>? nickName = ['Foo', 'Bar'];
  List<int?>? age = [3, 5, null];
  age = null;
}

// Chery-picking non-null values =========
void nonNullValues(String? firstName, String? middleName, String? lastName) {
  const String? firstName = null;
  const String? middleName = 'Bar';
  const String? lastName = 'Baz';

  if (firstName != null) {
    print('first name is non-null value');
  } else if (middleName != null) {
    print('middle name is non-null value');
  } else if (lastName != null) {
    print('last name is non-null values');
  }

  final firstNonNullValue = firstName ?? middleName ?? lastName;
  print(firstNonNullValue);
}

void nullAwareAssginmentOperator(
    String? firstName, String? middleName, String? lastName) {
  String? name = firstName;
  name ??= middleName;
  name ??= lastName;
  print(name);
}

// Conditional invocation ========
void conditionalInvocation(List<String>? names) {
  // final numberOfNames = names.length;
  // Old Way
  if (names != null) {
    final numberOfNames = names.length;
  }

  // int length = 0;
  // if (names != null) {
  //   length = names.length;
  // }

  // Conditionally executes a method or a property inside an optional if that
  // optional value is present

  final length = names?.length ?? 0;

  names?.add('Baz');
}

// Enumerations =======
enum PersonProperties { firstName, lastName, age }


void enumerations() {
  print(PersonProperties.firstName);
  print(PersonProperties.firstName.name);
  PersonProperties.values.forEach( (p) => print(p));
}

// Switch Statement ======
enum AnimalType { cat, dog, bunny }

void swtichStatement(AnimalType animalType) {
  // if (animalType == AnimalType.cat) {
  //   print('Oh i love cats');
  // } else if (animalType == AnimalType.dog) {
  //   print('Dogs are so fluffy');
  // } else if (animalType == AnimalType.bunny) {
  //   print('I wish I had a bunny');
  // }

  switch (animalType) {
    case AnimalType.bunny:
      print("Bunny");
      // return;
      break;
    case AnimalType.cat:
      print("Cat");
      // return;
      break;
    case AnimalType.dog:
      print("Dog");
  }
  print("FUNCTION IS FINISHED");
}

// Class ====

class Person {
  final String name;

  // Constractor
  Person(this.name);

  void run() {
    print('Running');
  }

  void breahe() {
    print('Breathing');
  }

  void printName() {
    print('I will now print the name of this person');
    print(name);
  }
}

void testClass() {
  // Object
  final person = Person('Foo Bar');
  person.run();
  person.breahe();
  print(person.name);
  person.printName();
}

// Inheritance and Subclassing =======
class LivingThing {
  void breathe() {
    print('Living thing is breathing');
  }

  void move() {
    print('I am moving');
  }
}

class Cat extends LivingThing {}

void inherenAndSubclassing() {
  final fluffers = Cat();
  fluffers.move();
  fluffers.breathe();
}

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

// Factory Constructor ========
// can return instances that are not of the same class!
class Chicken {
  final String name;
  Chicken(this.name);

  // factory constructor
  factory Chicken.fluffBall() {
    return Chicken('Fluff Ball');
  }
}

void testFactoryConstructor() {
  final fluffBall = Chicken.fluffBall();
  print(fluffBall.name);
}

// Custom Operator =========

class Banana extends Object {
  final String name;
  Banana(this.name);

  @override
  bool operator ==(covariant Banana other) => other.name == name;

  @override
  int get hashCode => name.hashCode;

  // factory constructor
  factory Banana.fluffBall() {
    return Banana('Fluff Ball');
  }
}

void testCustomOperator() {
  final banana1 = Banana('Foo');
  final banana2 = Banana('Foo');
  if (banana1 == banana2) {
    print('They are equal');
  } else {
    print('They are not equal');
  }
}

// Extensions ==========

class Grape extends Object {
  final String name;
  Grape(this.name);
}

class NewPerson {
  final String firstName;
  final String lastName;
  NewPerson(this.firstName, this.lastName);
}

extension Run on Grape {
  void run() {
    print('Grape $name is running');
  }
}

extension FullName on NewPerson {
  String get fullName => '$firstName $lastName';
}

void testExtensions() {
  final meow = Grape('Fluffers');
  print(meow.name);

  final foo = NewPerson('Foo', 'Bar');
  print(foo.fullName);
}

// Fututre ============
// asyncronous programming == Task that whose results are not returned immediately

Future<int> heavyFutureThatMultipliesByTwo(int a) {
  return Future.delayed(const Duration(seconds: 3), () {
    return a * 2;
  });
}

// async / await ====
// Mechanism for controlling asynchronous flow of data
void testAsnycronous() async {
  final result = await heavyFutureThatMultipliesByTwo(10);
  print(result);
}

// Streams ===========
// An asynchronous "pipe" of data
// is like a future but it continuously or periodically can return values and
// then you can wait for those values using the await for

Stream<String> getName() {
  // return Stream.value('foo');
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'foo';
  });
}

void testStream() async {
  await for (final value in getName()) {
    print(value);
  }
}

// Generator =======
// return a list of things but it internally caculates that data in a
// very simple way. For generating "iterables" , marked with sync* and async*

Iterable<int> getOneTwoThree() sync* {
  yield 1;
  yield 2;
  yield 3;
}

Stream<Iterable<int>> getThreeTwoOne() async* {
  yield [3];
  yield [2];
  yield [1];
}

void testGenerator() {
  // print(getOneTwoThree());
  for (final value in getOneTwoThree()) {
    print(value);
  }
}


// Generic =============
// To avoid re-writing similar code

class PairOfStrings {
  final String value1;
  final String value2;
  PairOfStrings(this.value1, this.value2);
}

class PairOfInteger {
  final int value1;
  final int value2;
  PairOfInteger(this.value1, this.value2);
}

class Pair<A, B> {
  final A value1;
  final B value2;
  Pair(this.value1, this.value2);
}

void testGeneric() {
  final names = Pair('foo', 'bar');
}


void main() {
    //   print(getFullName('Foo', 'Bar'));
    // test();
    // testNumber();
    // testList();
    // testSet();
    // testMap();
    // testNullSafety();
    // nonNullValues(null, null, 'bar');
    // nullAwareAssginmentOperator(null, null, 'Baz');
    // conditionalInvocation();
    // enumerations();
    // swtichStatement(AnimalType.cat);
    // testClass();
    // inherenAndSubclassing();
    // testAbstractClass();
    // testFactoryConstructor();
    // testCustomOperator();
    // testExtensions();
    // testAsnycronous();
    testStream();
    // testGeneric();
}
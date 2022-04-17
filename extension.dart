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
  meow.run();

  final foo = NewPerson('Foo', 'Bar');
  print(foo.fullName);
}

// =====================================

String capitalizeFirst(String data) {
  return '${data[0].toUpperCase()}${data.substring(1)}';
}

extension CustomString on String {
  String capitalizeFirst() {
    return '${this[0].toUpperCase()}${this.substring(1)}';
  }
}

void main() {
  var personName = 'james';
  print(personName);
  print(capitalizeFirst(personName));
  print(personName.capitalizeFirst());
  print('');
  // ====================================
  testExtensions();
}

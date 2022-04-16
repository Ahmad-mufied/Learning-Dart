typedef ID = int;
typedef Person = Map<String, dynamic>;

void main() {
  // Using ID typedef
  const ID x1 = 10;
  const ID x2 = 20;

  print(x1);

  print(x2);

  // Using Person typedef
  final Person personOne = {"name": "The Invisible Man", "age": 100};

  final Person personTwo = {"name": "Spinning Man", "age": 50};

  print(personOne);

  print(personTwo);
}

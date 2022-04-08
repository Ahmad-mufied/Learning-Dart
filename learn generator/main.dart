class MyString extends Iterable<String> {
  MyString(this.strings);
  final List<String> strings;

  Iterator<String> get iterator => strings.iterator;
}

void main() {
  final myStrings = MyString([
    'One',
    'Two',
    'Three',
    'Four'
  ]);

  final lengths = myStrings.map((s) => s.length);

for (final length in lengths) {
  print(length);
}
}




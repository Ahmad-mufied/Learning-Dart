void main() {
  print(2 == 2 ? "a truth" : "a lie"); // <- a truth
  print(1 == 2 ? "a truth" : "a lie"); // <- a lie
  5 == 6 ? doThis() : doThat(); // <- done that
}

void doThis() {
  print('done this');
}

void doThat() {
  print('done that');
}

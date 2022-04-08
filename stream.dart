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

void main() {
  testStream();
}
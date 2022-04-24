enum Size { small, medium, large }

T stringToEnum<T>(String str, Iterable<T> values) {
  return values.firstWhere(
    (value) => value.toString().split('.')[1] == str,
    orElse: () => null as T,
  );
}

Size size = stringToEnum<Size>("medium", Size.values);

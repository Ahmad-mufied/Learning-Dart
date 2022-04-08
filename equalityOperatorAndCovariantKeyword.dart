class Point {
  final int x;
  final int y;
  Point(this.x, this.y);

  @override
  String toString() => 'Point($x, $y)';

  // @override
  // bool operator ==(Object other) {
  //   if (other is Point) {
  //     return x == other.x && y == other.y;
  //   }
  //   return false;
  // }

  @override
  bool operator ==(covariant Point other) {
      return x == other.x && y == other.y;
  }
}

void main() {
  print(1 == 1);
  print(Point(0, 0) == Point(0, 0));
  // print(Point(0, 0) == 'abc');
}
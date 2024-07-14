class PointA {
  double x = 1.0;
  double y = 2.0;

  // The implicit default constructor sets these variables to (1.0,2.0)
  // PointA();

  @override
  String toString() {
    return 'this is a PointA($x,$y)';
  }
  // @override
  // String toString() => 'this is a PointA($x,$y)';
}

void main() {
  var p = PointA();
  print(p);
}

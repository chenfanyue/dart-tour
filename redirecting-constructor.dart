class Point {
  final double x, y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  Point(this.x, this.y);

  // Redirecting constructor
  Point.alongXAxis(double x) : this(x, 0);
}

void main() {
  var p = Point.alongXAxis(9);
  print((p.x, p.y));
}

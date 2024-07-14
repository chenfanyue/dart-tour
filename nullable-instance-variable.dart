class PointD {
  double x; // null if not set in constructor
  double? y; // null if not set in constructor

  // Generative constructor with initializing formal parameters
  PointD(this.x, [this.y]);

  @override
  String toString() {
    return 'PointD($x,$y)';
  }
}

void main() {
  var p1 = PointD(1);
  print(p1); // PointD(1.0,null)
  var p2 = PointD(1, 3);
  print(p2); // PointD(1.0,3.0)
}

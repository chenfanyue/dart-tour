class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);
}

class Vector3d extends Vector2d {
  final double z;

  // Forward the x and y parameters to the default super constructor like:
  // Vector3d(final double x, final double y, this.z) : super(x, y);
  // Vector3d(super.x, super.y, this.z);
  Vector3d(double x, double y, this.z) : super(x, y) {
    print(this.x);
  }
}

void main() {
  var p = Vector3d(1, 2, 3);
  print((p.x, p.y, p.z));
}

class Vector2d {
  final double x;
  final double y;

  Vector2d({required this.x, required this.y});
}

class Vector3d extends Vector2d {
  final double z;

  // Forward the x and y parameters to the default super constructor like:
  // Vector3d(final double x, final double y, this.z) : super(x, y);
  // Vector3d(super.x, super.y, this.z);
  Vector3d(this.z, {required super.x}) : super(y: 2) {
    print(this.x);
  }
}

void main() {
  var p = Vector3d(3, x: 1);
  print((p.x, p.y, p.z));
}

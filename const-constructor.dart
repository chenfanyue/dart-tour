class ImmutablePoint {
  static const origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  print(ImmutablePoint.origin);
}

class PointD {
  double x; // null if not set in constructor
  double? y; // null if not set in constructor

  // Generative constructor with initializing formal parameters
  PointD(this.x, [this.y]);

  PointD.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y'] {
    print('pointD is ($x,$y)');
  }

  @override
  String toString() {
    return 'PointD($x,$y)';
  }
}

void main() {
  var json = <String, double>{
    'x': 1,
    'y': 99,
    'z': 1000,
  };
  final p = PointD.fromJson(json);
  print(p);
}

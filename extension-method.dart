extension NumberParsing on String {
  String get suffix => '00';
  int parseInt() => int.parse(this + suffix);
}

void main() {
  final x = '9'.parseInt();
  // final x = NumberParsing('123').parseInt();
  print(x);
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

void main() {
  var stream = asynchronousNaturalsTo(5);
  stream.forEach(print);
}

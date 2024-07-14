Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  // k++ -> k
  // ++k -> k+1
  while (k < n) yield k++;
}

void main() {
  var iterator = naturalsTo(5);
  print(iterator);
}

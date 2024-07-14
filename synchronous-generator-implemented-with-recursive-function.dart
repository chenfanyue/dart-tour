Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield 1000; // just to illustrate the usage of yield
    yield* naturalsDownFrom(n - 1);
  }
}

void main() {
  var iterator = naturalsDownFrom(5);
  iterator.forEach(print);
}

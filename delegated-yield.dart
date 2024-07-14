Iterable<int> generator1() sync* {
  yield 1;
  yield 2;
}

Iterable<int> generator2() sync* {
  yield 3;
  yield* [9, 11];
  yield 4;
}
/*
Iterable<int> generator2() sync* {
  yield 3;
  yield* generator1();
  yield 4;
}
*/

void main() {
  var iterator = generator2();
  iterator.forEach(print);
}

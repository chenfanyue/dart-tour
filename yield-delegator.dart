void main() {
  moreNumbers().forEach((i) {
    print('main i: $i');
  });
}

Iterable<int> numbers() sync* {
  print('into generator');
  for (var i = 1; i <= 3; ++i) {
    yield i;
    print('position after $i');
  }
}

Iterable<int> moreNumbers() sync* {
  print('before yield*');
  yield* numbers();
  print('after yield*');
  yield 4;
  yield 5;
}

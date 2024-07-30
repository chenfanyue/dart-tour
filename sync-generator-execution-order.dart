void main() {
  numbers().forEach((i) {
    print('main i: $i');
  });
}

Iterable<int> numbers() sync* {
  print('into generator');
  yield 1;
  print('position after 1');
  yield 2;
  print('position after 2');
  yield 3;
  print('position after 3');
}

// Iterable<int> numbers() sync* {
//   print('into generator');
//   for (var i = 0; i < 3;) {
//     yield ++i;
//     print('position after $i');
//   }
// }
// import 'dart:async';

void main() {
  final Stream<int> stream = Stream.periodic(
    const Duration(seconds: 1),
    (i) => i * i,
  ).take(5);
  stream.forEach(print);
}

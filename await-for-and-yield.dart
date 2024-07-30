Stream<int> sumStream(Stream<int> stream) async* {
  var sum = 0;
  await for (final value in stream) {
    yield sum += value;
  }
}

void main() {
  final Stream<int> stream = Stream<int>.periodic(
    const Duration(seconds: 1),
    (i) => i + 1,
  ).take(3);
  
  sumStream(stream).forEach(print);
}

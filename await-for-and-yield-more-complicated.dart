void main() async {
  final Stream<int> stream = Stream<int>.periodic(
    const Duration(seconds: 1),
    (i) => i + 1,
  ).take(3);
  final result = await sumStream(stream);
  print(result);
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    sum += value;
  }
  return sum;
}

void main() {
  Stream.fromFutures([
    Future.delayed(Duration(seconds: 1), () {
      return "hello 1";
    }),
    Future.delayed(Duration(seconds: 2), () {
      throw AssertionError("Error");
    }),
    Future.delayed(Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((data) {
    print(data);
  }, onError: (e) {
    print(e.message);
  }, onDone: () {
    print('well done.');
  });
}

void main() {
  Future.wait([
    Future.delayed(Duration(seconds: 1), () {
      print('a');
      return "hello";
    }),
    Future.delayed(Duration(seconds: 2), () {
      print('b');
      return " world";
    })
  ]).then((results) {
    print(results[0] + results[1]);
  });
}

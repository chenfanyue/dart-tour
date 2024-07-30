void main() {
  Future.delayed(const Duration(milliseconds: 100), () {
    throw 'error throwed';
  }).then((data) {
    print(data);
  }).catchError((err) {
    print(err);
  }).whenComplete(() {
    print('always be called');
  });
}

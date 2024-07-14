void performOperation(int a, int b, void Function(int) callback) {
  int result = a + b;
  callback(result);
}

void main() {
  performOperation(5, 6, (result) {
    print('The result is $result'); // 输出：The result is 11
  });
}
